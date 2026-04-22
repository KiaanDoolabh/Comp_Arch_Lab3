// riscvpipelined.sv

// RISC-V pipelined processor
// From Section 7.6 of Digital Design & Computer Architecture: RISC-V Edition
// 27 April 2020
// David_Harris@hmc.edu 
// Sarah.Harris@unlv.edu

// The testbench below loads one fixed program file into instruction/data
// memory. It does not self-check; inspect WriteData, DataAdr, and MemWrite
// in ModelSim to decide whether the selected program passed.

// Pipelined implementation of RISC-V (RV32I)
// User-level Instruction Set Architecture V2.2 (May 7, 2017)
// Implements a subset of the base integer instructions:
//    lw, sw
//    add, sub, and, or, slt, 
//    addi, andi, ori, slti
//    beq
//    jal
// Exceptions, traps, and interrupts not implemented
// little-endian memory

// 31 32-bit registers x1-x31, x0 hardwired to 0
// R-Type instructions
//   add, sub, and, or, slt
//   INSTR rd, rs1, rs2
//   Instr[31:25] = funct7 (funct7b5 & opb5 = 1 for sub, 0 for others)
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode
// I-Type Instructions
//   lw, I-type ALU (addi, andi, ori, slti)
//   lw:         INSTR rd, imm(rs1)
//   I-type ALU: INSTR rd, rs1, imm (12-bit signed)
//   Instr[31:20] = imm[11:0]
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode
// S-Type Instruction
//   sw rs2, imm(rs1) (store rs2 into address specified by rs1 + immm)
//   Instr[31:25] = imm[11:5] (offset[11:5])
//   Instr[24:20] = rs2 (src)
//   Instr[19:15] = rs1 (base)
//   Instr[14:12] = funct3
//   Instr[11:7]  = imm[4:0]  (offset[4:0])
//   Instr[6:0]   = opcode
// B-Type Instruction
//   beq rs1, rs2, imm (PCTarget = PC + (signed imm x 2))
//   Instr[31:25] = imm[12], imm[10:5]
//   Instr[24:20] = rs2
//   Instr[19:15] = rs1
//   Instr[14:12] = funct3
//   Instr[11:7]  = imm[4:1], imm[11]
//   Instr[6:0]   = opcode
// J-Type Instruction
//   jal rd, imm  (signed imm is multiplied by 2 and added to PC, rd = PC+4)
//   Instr[31:12] = imm[20], imm[10:1], imm[11], imm[19:12]
//   Instr[11:7]  = rd
//   Instr[6:0]   = opcode

//   Instruction  opcode    funct3    funct7
//   add          0110011   000       0000000
//   sub          0110011   000       0100000
//   and          0110011   111       0000000
//   or           0110011   110       0000000
//   slt          0110011   010       0000000
//   addi         0010011   000       immediate
//   andi         0010011   111       immediate
//   ori          0010011   110       immediate
//   slti         0010011   010       immediate
//   beq          1100011   000       immediate
//   lw	          0000011   010       immediate
//   sw           0100011   010       immediate
//   jal          1101111   immediate immediate

module testbench();

   logic        clk;
   logic        reset;

   logic [31:0] WriteData, DataAdr;
   logic        MemWrite;

   // instantiate device to be tested
   top dut(clk, reset, WriteData, DataAdr, MemWrite);

   // Fixed program file for simulation. Change this string manually when
   // you want to run a different .memfile.
   initial
     begin
	string memfilename;
        memfilename = {"../riscvtest/test_hw2.memfile"};
	$readmemh(memfilename, dut.imem.RAM);
	$readmemh(memfilename, dut.dmem.RAM);
     end
   
   // initialize test
   initial
     begin
	reset <= 1; # 22; reset <= 0;
     end

   // generate clock to sequence tests
   always
     begin
	clk <= 1; # 5; clk <= 0; # 5;
     end
endmodule

module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

   logic [31:0] 	       PCF, InstrF, ReadDataM;
   
   // Top-level system: the processor talks to separate instruction and data
   // memories, matching the simple Harvard-style model used in the lab.
   riscv rv32pipe (clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
		   WriteDataM, ReadDataM);
   imem imem (PCF, InstrF);
   dmem dmem (clk, MemWriteM, DataAdrM, WriteDataM, ReadDataM);

endmodule

module riscv(input  logic        clk, reset,
             output logic [31:0] PCF,
             input logic [31:0]  InstrF,
             output logic 	 MemWriteM,
             output logic [31:0] ALUResultM, WriteDataM,
             input logic [31:0]  ReadDataM);

   // Decode-stage instruction fields and control signals. The controller
   // creates control in decode, then pipelines those controls with the data.
   logic [6:0] 			 opD;
   logic [2:0] 			 funct3D, funct3E;
   logic 			 funct7b5D;
   logic [2:0] 			 ImmSrcD;

   // Execute-stage ALU/branch status. Branches are resolved in EX so the
   // fetch/decode stages can be flushed when the next PC changes.
   logic 			 ZeroE;
   logic 			 NegativeE, CarryE, OverflowE;
   logic 			 PCSrcE;
   logic [3:0] 			 ALUControlE;
   logic 			 ALUSrcE;
   logic [1:0] 			 ALUSrcAE;
   logic 			 JalrE;
   logic 			 ResultSrcEb0;
   logic 			 RegWriteM;
   logic [1:0] 			 ResultSrcW;
   logic 			 RegWriteW;

   // Hazard unit outputs: forwarding selects plus pipeline stall/flush enables.
   logic [1:0] 			 ForwardAE, ForwardBE;
   logic 			 StallF, StallD, FlushD, FlushE;

   logic [4:0] 			 Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW;
   
   controller c(clk, reset,
		opD, funct3D, funct7b5D, ImmSrcD,
		FlushE, funct3E, ZeroE, NegativeE, CarryE, OverflowE,
                PCSrcE, ALUControlE, ALUSrcE, ALUSrcAE, JalrE, ResultSrcEb0,
		MemWriteM, RegWriteM, 
		RegWriteW, ResultSrcW);

   datapath dp(clk, reset,
               StallF, PCF, InstrF,
	       opD, funct3D, funct7b5D, StallD, FlushD, ImmSrcD,
	       FlushE, ForwardAE, ForwardBE, PCSrcE, ALUControlE,
               ALUSrcE, ALUSrcAE, JalrE, ZeroE, NegativeE, CarryE, OverflowE,
               funct3E,
               MemWriteM, WriteDataM, ALUResultM, ReadDataM,
               RegWriteW, ResultSrcW,
               Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW);

   hazard  hu(Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
              PCSrcE, ResultSrcEb0, RegWriteM, RegWriteW,
              ForwardAE, ForwardBE, StallF, StallD, FlushD, FlushE);			 
endmodule


module controller(input  logic		 clk, reset,
                  // Decode stage control signals
                  input logic [6:0]  opD,
                  input logic [2:0]  funct3D,
                  input logic 	     funct7b5D,
                  output logic [2:0] ImmSrcD,
                  // Execute stage control signals
                  input logic 	     FlushE, 
                  input logic [2:0]  funct3E,
                  input logic 	     ZeroE, 
                  input logic 	     NegativeE, CarryE, OverflowE,
                  output logic 	     PCSrcE, // for datapath and Hazard Unit
                  output logic [3:0] ALUControlE, 
                  output logic 	     ALUSrcE,
                  output logic [1:0] ALUSrcAE,
                  output logic 	     JalrE,
                  output logic 	     ResultSrcEb0, // for Hazard Unit
                  // Memory stage control signals
                  output logic 	     MemWriteM,
                  output logic 	     RegWriteM, // for Hazard Unit				  
                  // Writeback stage control signals
                  output logic 	     RegWriteW, // for datapath and Hazard Unit
                  output logic [1:0] ResultSrcW);

   // Control starts in decode, then moves through EX/MEM/WB pipeline
   // registers so each instruction keeps the controls it was decoded with.
   logic 			     RegWriteD, RegWriteE;
   logic [1:0] 			     ResultSrcD, ResultSrcE, ResultSrcM;
   logic 			     MemWriteD, MemWriteE;
   logic 			     JumpD, JumpE;
   logic 			     JalrD;
   logic 			     BranchD, BranchE;
   logic [1:0] 			     ALUOpD;
   logic [3:0] 			     ALUControlD;
   logic 			     ALUSrcD;
   logic [1:0] 			     ALUSrcAD;
   logic 			     BControlE;
   
   // Decode stage: main decoder handles opcode-level control, ALU decoder
   // refines the ALU operation using funct3/funct7.
   maindec md(opD, ResultSrcD, MemWriteD, BranchD,
              ALUSrcD, RegWriteD, JumpD, JalrD, ImmSrcD, ALUOpD, ALUSrcAD);
   aludec  ad(opD[5], funct3D, funct7b5D, ALUOpD, ALUControlD);

   // Branch comparison uses ALU flags from the execute stage. funct3 selects
   // which RISC-V branch condition is being evaluated.
   always_comb
     case(funct3E)
       3'b000:  BControlE = ZeroE;                  // beq
       3'b001:  BControlE = ~ZeroE;                 // bne
       3'b100:  BControlE = NegativeE ^ OverflowE;  // blt
       3'b101:  BControlE = ~(NegativeE ^ OverflowE); // bge
       3'b110:  BControlE = ~CarryE;                // bltu
       3'b111:  BControlE = CarryE;                 // bgeu
       default: BControlE = 1'b0;
     endcase
   
   // EX control register is clearable so a load-use stall or taken branch can
   // insert a bubble into the execute stage.
   floprc #(14) controlregE(clk, reset, FlushE,
                            {RegWriteD, ResultSrcD, MemWriteD, JumpD, JalrD,
                             BranchD, ALUControlD, ALUSrcD, ALUSrcAD},
                            {RegWriteE, ResultSrcE, MemWriteE, JumpE, JalrE,
                             BranchE, ALUControlE, ALUSrcE, ALUSrcAE});

   assign PCSrcE = (BranchE & BControlE) | JumpE;
   assign ResultSrcEb0 = ResultSrcE[0];
   
   // MEM/WB control registers do not need clears in this simple pipeline; they
   // just carry write enables and result-select bits forward.
   flopr #(4) controlregM(clk, reset,
                          {RegWriteE, ResultSrcE, MemWriteE},
                          {RegWriteM, ResultSrcM, MemWriteM});
   
   // Writeback stage pipeline control register
   flopr #(3) controlregW(clk, reset,
                          {RegWriteM, ResultSrcM},
                          {RegWriteW, ResultSrcW});     
endmodule

module maindec(input  logic [6:0] op,
               output logic [1:0] ResultSrc,
               output logic 	  MemWrite,
               output logic 	  Branch, ALUSrc,
               output logic 	  RegWrite, Jump, Jalr,
               output logic [2:0] ImmSrc,
               output logic [1:0] ALUOp,
               output logic [1:0] ALUSrcA);

   logic [15:0] 		  controls;

   // Packed control word keeps the opcode table compact. ALUSrcA selects
   // register/PC/zero for AUIPC and LUI; Jalr marks register-indirect jumps.
   assign {RegWrite, ImmSrc, ALUSrc, MemWrite,
           ResultSrc, Branch, ALUOp, Jump, Jalr, ALUSrcA} = controls;

   always_comb
     case(op)
       // RegWrite_ImmSrc_ALUSrc_MemWrite_ResultSrc_Branch_ALUOp_Jump_Jalr_ALUSrcA
       7'b0000011: controls = 16'b1_000_1_0_01_0_00_0_0_00; // loads
       7'b0100011: controls = 16'b0_001_1_1_00_0_00_0_0_00; // stores
       7'b0110011: controls = 16'b1_000_0_0_00_0_10_0_0_00; // R-type
       7'b1100011: controls = 16'b0_010_0_0_00_1_01_0_0_00; // branches
       7'b0010011: controls = 16'b1_000_1_0_00_0_10_0_0_00; // I-type ALU
       7'b1101111: controls = 16'b1_011_0_0_10_0_00_1_0_00; // jal
       7'b1100111: controls = 16'b1_000_1_0_10_0_00_1_1_00; // jalr
       7'b0110111: controls = 16'b1_100_1_0_00_0_00_0_0_10; // lui
       7'b0010111: controls = 16'b1_100_1_0_00_0_00_0_0_01; // auipc
       7'b0000000: controls = 16'b0_000_0_0_00_0_00_0_0_00; // need valid values at reset
       default:    controls = 16'bx_xxx_x_x_xx_x_xx_x_x_xx; // non-implemented instruction
     endcase
endmodule

module aludec(input  logic       opb5,
              input logic [2:0]  funct3,
              input logic 	 funct7b5, 
              input logic [1:0]  ALUOp,
              output logic [3:0] ALUControl);

   // Four ALU control bits are enough for the base operations needed here:
   // add/sub/logic, signed and unsigned set-less-than, and all shifts.
   logic 			 RtypeSub;
   assign RtypeSub = funct7b5 & opb5;  // TRUE for R-type subtract instruction

   always_comb
     case(ALUOp)
       2'b00:                ALUControl = 4'b0000; // addition
       2'b01:                ALUControl = 4'b0001; // subtraction
       default: case(funct3) // R-type or I-type ALU
                  3'b000:  if (RtypeSub) 
                    ALUControl = 4'b0001; // sub
                  else          
                    ALUControl = 4'b0000; // add, addi
                  3'b001:    ALUControl = 4'b0110; // sll, slli
                  3'b010:    ALUControl = 4'b0101; // slt, slti
                  3'b011:    ALUControl = 4'b1001; // sltu, sltiu
                  3'b100:    ALUControl = 4'b0100; // xor, xori
                  3'b101:    ALUControl = funct7b5 ? 4'b1000 : 4'b0111; // sra/srai, srl/srli
                  3'b110:    ALUControl = 4'b0011; // or, ori
                  3'b111:    ALUControl = 4'b0010; // and, andi
                  default:   ALUControl = 4'bxxxx; // ???
		endcase
     endcase
endmodule

module datapath(input logic clk, reset,
                // Fetch stage signals
                input logic 	    StallF,
                output logic [31:0] PCF,
                input logic [31:0]  InstrF,
                // Decode stage signals
                output logic [6:0]  opD,
                output logic [2:0]  funct3D, 
                output logic 	    funct7b5D,
                input logic 	    StallD, FlushD,
                input logic [2:0]   ImmSrcD,
                // Execute stage signals
                input logic 	    FlushE,
                input logic [1:0]   ForwardAE, ForwardBE,
                input logic 	    PCSrcE,
                input logic [3:0]   ALUControlE,
                input logic 	    ALUSrcE,
                input logic [1:0]   ALUSrcAE,
                input logic 	    JalrE,
                output logic 	    ZeroE,
                output logic 	    NegativeE, CarryE, OverflowE,
                output logic [2:0]  funct3E,
                // Memory stage signals
                input logic 	    MemWriteM, 
                output logic [31:0] WriteDataM, ALUResultM,
                input logic [31:0]  ReadDataM,
                // Writeback stage signals
                input logic 	    RegWriteW, 
                input logic [1:0]   ResultSrcW,
                // Hazard Unit signals 
                output logic [4:0]  Rs1D, Rs2D, Rs1E, Rs2E,
                output logic [4:0]  RdE, RdM, RdW);

   // Fetch stage signals
   logic [31:0] 		    PCNextF, PCPlus4F;
   // Decode stage signals
   logic [31:0] 		    InstrD;
   logic [31:0] 		    PCD, PCPlus4D;
   logic [31:0] 		    RD1D, RD2D;
   logic [31:0] 		    ImmExtD;
   logic [4:0] 			    RdD;
   // Execute stage signals
   logic [31:0] 		    RD1E, RD2E;
   logic [31:0] 		    PCE, ImmExtE;
   logic [31:0] 		    SrcARegE, SrcAE, SrcBE;
   logic [31:0] 		    ALUResultE;
   logic [31:0] 		    WriteDataE;
   logic [31:0] 		    PCPlus4E;
   logic [31:0] 		    PCTargetBaseE, PCTargetE;
   // Memory stage signals
   logic [31:0] 		    WriteDataRawM, PCPlus4M;
   logic [2:0] 		    funct3M;
   // Writeback stage signals
   logic [31:0] 		    ALUResultW;
   logic [31:0] 		    ReadDataW;
   logic [31:0] 		    PCPlus4W;
   logic [31:0] 		    LoadDataW;
   logic [31:0] 		    ResultW;
   logic [2:0] 		    funct3W;

   // Fetch stage: choose either PC+4 or the resolved branch/jump target.
   // StallF freezes the PC during a load-use stall.
   mux2    #(32) pcmux(PCPlus4F, PCTargetE, PCSrcE, PCNextF);
   flopenr #(32) pcreg(clk, reset, ~StallF, PCNextF, PCF);
   adder         pcadd(PCF, 32'h4, PCPlus4F);

   // Decode stage: latch fetched instruction and PC values, decode fields,
   // read the register file, and build the immediate.
   flopenrc #(96) regD(clk, reset, FlushD, ~StallD, 
                       {InstrF, PCF, PCPlus4F},
                       {InstrD, PCD, PCPlus4D});
   assign opD       = InstrD[6:0];
   assign funct3D   = InstrD[14:12];
   assign funct7b5D = InstrD[30];
   assign Rs1D      = InstrD[19:15];
   assign Rs2D      = InstrD[24:20];
   assign RdD       = InstrD[11:7];
   
   regfile        rf(clk, RegWriteW, Rs1D, Rs2D, RdW, ResultW, RD1D, RD2D);
   extend         ext(InstrD[31:7], ImmSrcD, ImmExtD);
   
   // Execute stage: carry operands/control fields forward, apply forwarding,
   // select ALU inputs, and resolve branch/jump targets.
   floprc #(178) regE(clk, reset, FlushE, 
                      {RD1D, RD2D, PCD, Rs1D, Rs2D, RdD, ImmExtD, PCPlus4D, funct3D}, 
                      {RD1E, RD2E, PCE, Rs1E, Rs2E, RdE, ImmExtE, PCPlus4E, funct3E});
   
   mux3   #(32)  faemux(RD1E, ResultW, ALUResultM, ForwardAE, SrcARegE);
   mux3   #(32)  fbemux(RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);
   mux3   #(32)  srcamux(SrcARegE, PCE, 32'b0, ALUSrcAE, SrcAE);
   mux2   #(32)  srcbmux(WriteDataE, ImmExtE, ALUSrcE, SrcBE);
   alu           alu(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE, NegativeE, CarryE, OverflowE);
   adder         branchadd(ImmExtE, PCE, PCTargetBaseE);
   assign PCTargetE = JalrE ? {ALUResultE[31:1], 1'b0} : PCTargetBaseE;

   // Memory stage: ALUResultM is the data address. Store data may need to be
   // merged with the old memory word for sb/sh because dmem writes whole words.
   flopr  #(104) regM(clk, reset, 
                      {ALUResultE, WriteDataE, RdE, PCPlus4E, funct3E},
                      {ALUResultM, WriteDataRawM, RdM, PCPlus4M, funct3M});
   storemerge    sm(ReadDataM, WriteDataRawM, funct3M, ALUResultM[1:0], WriteDataM);
   
   // Writeback stage: extend sub-word loads, then choose ALU/load/PC+4 as the
   // value written back to the register file.
   flopr  #(104) regW(clk, reset, 
                      {ALUResultM, ReadDataM, RdM, PCPlus4M, funct3M},
                      {ALUResultW, ReadDataW, RdW, PCPlus4W, funct3W});
   loadext       le(ReadDataW, funct3W, ALUResultW[1:0], LoadDataW);
   mux3   #(32)  resultmux(ALUResultW, LoadDataW, PCPlus4W, ResultSrcW, ResultW);	
endmodule

// Hazard Unit: resolves RAW data hazards with forwarding when possible, and
// stalls one cycle for load-use hazards where forwarding cannot provide data
// soon enough. Taken branches/jumps flush younger wrong-path instructions.
module hazard(input  logic [4:0] Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
              input logic 	 PCSrcE, ResultSrcEb0, 
              input logic 	 RegWriteM, RegWriteW,
              output logic [1:0] ForwardAE, ForwardBE,
              output logic 	 StallF, StallD, FlushD, FlushE);

   logic 			 lwStallD;
   
   // Forward from MEM first because it is newer than WB when both match.
   always_comb begin
      ForwardAE = 2'b00;
      ForwardBE = 2'b00;
      if (Rs1E != 5'b0)
	if      ((Rs1E == RdM) & RegWriteM) ForwardAE = 2'b10;
	else if ((Rs1E == RdW) & RegWriteW) ForwardAE = 2'b01;
      
      if (Rs2E != 5'b0)
	if      ((Rs2E == RdM) & RegWriteM) ForwardBE = 2'b10;
	else if ((Rs2E == RdW) & RegWriteW) ForwardBE = 2'b01;
   end
   
   // Only load results require a stall; ALU results can be forwarded.
   assign lwStallD = ResultSrcEb0 & (RdE != 5'b0) & ((Rs1D == RdE) | (Rs2D == RdE));  
   assign StallD = lwStallD;
   assign StallF = lwStallD;
   assign FlushD = PCSrcE;
   assign FlushE = lwStallD | PCSrcE;
endmodule

module regfile(input  logic        clk, 
               input logic 	   we3, 
               input logic [ 4:0]  a1, a2, a3, 
               input logic [31:0]  wd3, 
               output logic [31:0] rd1, rd2);

   logic [31:0] 		   rf[31:0];

   // Three-ported register file: two combinational read ports and one write
   // port. Writes occur on the falling edge so the decode stage can see new
   // WB data in the same cycle. x0 is protected from writes.

   always_ff @(negedge clk)
     if (we3 & (a3 != 5'b0)) rf[a3] <= wd3;	

   assign rd1 = (a1 != 0) ? rf[a1] : 0;
   assign rd2 = (a2 != 0) ? rf[a2] : 0;
endmodule

module adder(input  [31:0] a, b,
             output [31:0] y);

   assign y = a + b;
endmodule

module extend(input  logic [31:7] instr,
              input logic [2:0]   immsrc,
              output logic [31:0] immext);
   
   // Immediate generator for all formats used by RV32I integer instructions.
   always_comb
     case(immsrc) 
       // I-type 
       3'b000:  immext = {{20{instr[31]}}, instr[31:20]};  
       // S-type (stores)
       3'b001:  immext = {{20{instr[31]}}, instr[31:25], instr[11:7]}; 
       // B-type (branches)
       3'b010:  immext = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0}; 
       // J-type (jal)
       3'b011:  immext = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0}; 
       // U-type (lui/auipc)
       3'b100:  immext = {instr[31:12], 12'b0};
       default: immext = 32'bx; // undefined
     endcase             
endmodule

module loadext(input  logic [31:0] readdata,
               input  logic [2:0]  funct3,
               input  logic [1:0]  byteoff,
               output logic [31:0] result);

   // Select the addressed byte/halfword from a 32-bit memory word, then sign
   // or zero extend according to the load instruction's funct3.
   logic [7:0]  selbyte;
   logic [15:0] selhalf;

   always_comb begin
      case(byteoff)
        2'b00:   selbyte = readdata[7:0];
        2'b01:   selbyte = readdata[15:8];
        2'b10:   selbyte = readdata[23:16];
        default: selbyte = readdata[31:24];
      endcase

      selhalf = byteoff[1] ? readdata[31:16] : readdata[15:0];

      case(funct3)
        3'b000:  result = {{24{selbyte[7]}}, selbyte};  // lb
        3'b001:  result = {{16{selhalf[15]}}, selhalf}; // lh
        3'b010:  result = readdata;                     // lw
        3'b100:  result = {24'b0, selbyte};             // lbu
        3'b101:  result = {16'b0, selhalf};             // lhu
        default: result = readdata;
      endcase
   end
endmodule

module storemerge(input  logic [31:0] oldword,
                  input  logic [31:0] storedata,
                  input  logic [2:0]  funct3,
                  input  logic [1:0]  byteoff,
                  output logic [31:0] merged);

   // The RAM writes full words, so sb/sh first merge the new byte/halfword
   // into the old word. sw uses the store data unchanged.
   always_comb begin
      case(funct3)
        3'b000:
          case(byteoff)
            2'b00:   merged = {oldword[31:8], storedata[7:0]};
            2'b01:   merged = {oldword[31:16], storedata[7:0], oldword[7:0]};
            2'b10:   merged = {oldword[31:24], storedata[7:0], oldword[15:0]};
            default: merged = {storedata[7:0], oldword[23:0]};
          endcase
        3'b001:
          merged = byteoff[1] ? {storedata[15:0], oldword[15:0]} :
                                {oldword[31:16], storedata[15:0]};
        default:
          merged = storedata;
      endcase
   end
endmodule

module flopr #(parameter WIDTH = 8)
   (input  logic             clk, reset,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   // Plain pipeline register with asynchronous reset.
   always_ff @(posedge clk, posedge reset)
     if (reset) q <= 0;
     else       q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
   (input  logic             clk, reset, en,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   // Enabled pipeline register. Used to stall fetch by holding PC constant.
   always_ff @(posedge clk, posedge reset)
     if (reset)   q <= 0;
     else if (en) q <= d;
endmodule

module flopenrc #(parameter WIDTH = 8)
   (input  logic             clk, reset, clear, en,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   // Enabled and clearable register. Used for decode so stalls and flushes can
   // be controlled independently.
   always_ff @(posedge clk, posedge reset)
     if (reset)   q <= 0;
     else if (en) 
       if (clear) q <= 0;
       else       q <= d;
endmodule

module floprc #(parameter WIDTH = 8)
   (input  logic clk,
    input logic 	     reset,
    input logic 	     clear,
    input logic [WIDTH-1:0]  d, 
    output logic [WIDTH-1:0] q);

   // Clearable register used to inject bubbles into the execute stage.
   always_ff @(posedge clk, posedge reset)
     if (reset) q <= 0;
     else       
       if (clear) q <= 0;
       else       q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, 
    input logic 	     s, 
    output logic [WIDTH-1:0] y);

   assign y = s ? d1 : d0; 
endmodule

module mux3 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, d2,
    input logic [1:0] 	     s, 
    output logic [WIDTH-1:0] y);

   assign y = s[1] ? d2 : (s[0] ? d1 : d0); 
endmodule

module imem (input  logic [31:0] a,
	     output logic [31:0] rd);
   
   // Word-addressed instruction RAM. The array is larger than the original
   // skeleton so the provided assembly tests fit without changing this module.
   logic [31:0] 		 RAM[8191:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   
endmodule // imem

module dmem (input  logic        clk, we,
	     input  logic [31:0] a, wd,
	     output logic [31:0] rd);
   
   // Word-addressed data RAM. Byte and halfword behavior is handled by
   // loadext/storemerge around this simple whole-word memory.
   logic [31:0] 		 RAM[262143:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   always_ff @(posedge clk)
     if (we) RAM[a[31:2]] <= wd;
   
endmodule // dmem

module alu(input  logic [31:0] a, b,
           input logic [3:0]   alucontrol,
           output logic [31:0] result,
           output logic        zero,
           output logic        negative,
           output logic        carry,
           output logic        overflow);

   // ALU shared by arithmetic, address calculation, branches, and shifts.
   // Branch logic uses the subtraction flags produced here.
   logic [31:0] 	       condinvb, sum;
   logic [32:0] 	       carried;
   logic 		       isAddSub;       // true when is add or sub

   assign condinvb = alucontrol[0] ? ~b : b;
   assign sum = a + condinvb + alucontrol[0];
   assign carried = {1'b0, a} + {1'b0, condinvb} + alucontrol[0];
   assign isAddSub = (alucontrol == 4'b0000) | (alucontrol == 4'b0001);

   always_comb
     case (alucontrol)
       4'b0000: result = sum;                          // add
       4'b0001: result = sum;                          // subtract
       4'b0010: result = a & b;                        // and
       4'b0011: result = a | b;                        // or
       4'b0100: result = a ^ b;                        // xor
       4'b0101: result = {31'b0, ($signed(a) < $signed(b))}; // slt
       4'b0110: result = a << b[4:0];                  // sll
       4'b0111: result = a >> b[4:0];                  // srl
       4'b1000: result = $signed(a) >>> b[4:0];        // sra
       4'b1001: result = {31'b0, a < b};               // sltu
       default: result = 32'bx;
     endcase

   assign zero = (sum == 32'b0);
   assign negative = sum[31];
   assign carry = carried[32];
   assign overflow = ~(alucontrol[0] ^ a[31] ^ b[31]) & (a[31] ^ sum[31]) & isAddSub;
   
endmodule
