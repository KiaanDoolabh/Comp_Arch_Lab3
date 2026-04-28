// riscvpipelined.sv
//
// Completed Lab 3 pipelined RISC-V processor
// Based on the provided starter, the textbook 5-stage pipeline,
// and extended using the working Lab 2 behavior as the priority reference
// when design choices mattered.
//
// Supports:
//   R-type:   add, sub, and, or, xor, slt, sltu, sll, srl, sra
//   I-type:   addi, andi, ori, xori, slti, sltiu, slli, srli, srai
//   Loads:    lb, lh, lw, lbu, lhu
//   Stores:   sb, sh, sw
//   Branches: beq, bne, blt, bge, bltu, bgeu
//   Jumps:    jal, jalr
//   U-type:   lui, auipc
//
// Exceptions / traps / interrupts not implemented
// little-endian memory

module testbench();

   logic        clk;
   logic        reset;

   logic [31:0] WriteData, DataAdr;
   logic        MemWrite;

   // instantiate device to be tested
   top dut(clk, reset, WriteData, DataAdr, MemWrite);

   initial
     begin
        string memfilename;
        memfilename = {"../riscvtest/riscvtest.memfile"};
        $readmemh(memfilename, dut.imem.RAM);
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

   // check results
   always @(negedge clk)
     begin
        if(MemWrite) begin
           if(DataAdr === 100 && WriteData === 25) begin
              $display("Simulation succeeded");
              $stop;
           end else if (DataAdr !== 96) begin
              $display("Simulation failed");
              $stop;
           end
        end
     end
endmodule

module top(input  logic        clk, reset,
           output logic [31:0] WriteDataM, DataAdrM,
           output logic        MemWriteM);

   logic [31:0] PCF, InstrF, ReadDataM;

   // instantiate processor and memories
   riscv rv32pipe(clk, reset, PCF, InstrF, MemWriteM, DataAdrM,
                  WriteDataM, ReadDataM);
   imem imem(PCF, InstrF);
   dmem dmem(clk, MemWriteM, DataAdrM, WriteDataM, ReadDataM);

endmodule

module riscv(input  logic        clk, reset,
             output logic [31:0] PCF,
             input  logic [31:0] InstrF,
             output logic        MemWriteM,
             output logic [31:0] ALUResultM, WriteDataM,
             input  logic [31:0] ReadDataM);

   // Decode stage signals
   logic [6:0]  opD;
   logic [2:0]  funct3D;

   // Execute-stage fields / flags
   logic [2:0]  funct3E;
   logic        funct7b5D;
   logic        ZeroE, NegativeE, CarryE, OverflowE;
   logic        PCSrcE;
   logic        ALUSrcE;
   logic [1:0]  ALUSrcAE;
   logic [2:0]  ImmSrcD;
   logic [3:0]  ALUControlE;
   logic        JalrE;
   logic        ResultSrcEb0;

   // Later-stage controls
   logic        RegWriteM;
   logic [1:0]  ResultSrcW;
   logic        RegWriteW;

   // Hazard signals
   logic [1:0]  ForwardAE, ForwardBE;
   logic        StallF, StallD, FlushD, FlushE;

   // Register numbers
   logic [4:0]  Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW;

   controller c(clk, reset,
                opD, funct3D, funct7b5D, ImmSrcD,
                FlushE,
                funct3E, ZeroE, NegativeE, CarryE, OverflowE,
                PCSrcE, ALUControlE, ALUSrcE, ALUSrcAE, JalrE, ResultSrcEb0,
                MemWriteM, RegWriteM,
                RegWriteW, ResultSrcW);

   datapath dp(clk, reset,
               // Fetch
               StallF, PCF, InstrF,
               // Decode
               opD, funct3D, funct7b5D, StallD, FlushD, ImmSrcD,
               // Execute
               FlushE, ForwardAE, ForwardBE, PCSrcE,
               ALUControlE, ALUSrcE, ALUSrcAE, JalrE,
               ZeroE, NegativeE, CarryE, OverflowE, funct3E,
               // Memory
               MemWriteM, WriteDataM, ALUResultM, ReadDataM,
               // Writeback
               RegWriteW, ResultSrcW,
               // Hazard
               Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW);

   hazard hu(Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
             PCSrcE, ResultSrcEb0, RegWriteM, RegWriteW,
             ForwardAE, ForwardBE, StallF, StallD, FlushD, FlushE);

endmodule

module controller(input  logic        clk, reset,
                  // Decode stage control inputs
                  input  logic [6:0]  opD,
                  input  logic [2:0]  funct3D,
                  input  logic        funct7b5D,
                  output logic [2:0]  ImmSrcD,
                  // Execute stage inputs / outputs
                  input  logic        FlushE,
                  input  logic [2:0]  funct3E,
                  input  logic        ZeroE,
                  input  logic        NegativeE,
                  input  logic        CarryE,
                  input  logic        OverflowE,
                  output logic        PCSrcE,
                  output logic [3:0]  ALUControlE,
                  output logic        ALUSrcE,
                  output logic [1:0]  ALUSrcAE,
                  output logic        JalrE,
                  output logic        ResultSrcEb0,
                  // Memory stage controls
                  output logic        MemWriteM,
                  output logic        RegWriteM,
                  // Writeback stage controls
                  output logic        RegWriteW,
                  output logic [1:0]  ResultSrcW);

   // Decode stage control signals
   logic        RegWriteD;
   logic [1:0]  ResultSrcD;
   logic        MemWriteD;
   logic        JumpD;
   logic        JalrD;
   logic        BranchD;
   logic [1:0]  ALUOpD;
   logic [3:0]  ALUControlD;
   logic        ALUSrcD;
   logic [1:0]  ALUSrcAD;

   // Execute stage control signals
   logic        RegWriteE;
   logic [1:0]  ResultSrcE;
   logic        MemWriteE;
   logic        JumpE;
   logic        BranchE;

   // Memory stage control signals
   logic [1:0]  ResultSrcM;

   logic        BControlE;

   // Decode stage logic
   maindec md(opD, ResultSrcD, MemWriteD, BranchD,
              ALUSrcD, RegWriteD, JumpD, JalrD,
              ImmSrcD, ALUOpD, ALUSrcAD);

   aludec ad(opD[5], funct3D, funct7b5D, ALUOpD, ALUControlD);

   // Branch decision logic in Execute stage (working-group style)
   always_comb begin
      case(funct3E)
        3'b000:  BControlE =  ZeroE;                     // beq
        3'b001:  BControlE = ~ZeroE;                     // bne
        3'b100:  BControlE = (NegativeE ^ OverflowE);    // blt
        3'b101:  BControlE = ~(NegativeE ^ OverflowE);   // bge
        3'b110:  BControlE =  CarryE;                    // bltu
        3'b111:  BControlE = ~CarryE;                    // bgeu
        default: BControlE = 1'b0;
      endcase
   end

   // Execute stage pipeline control register
   floprc #(14) controlregE(clk, reset, FlushE,
                            {RegWriteD, ResultSrcD, MemWriteD, JumpD, JalrD,
                             BranchD, ALUControlD, ALUSrcD, ALUSrcAD},
                            {RegWriteE, ResultSrcE, MemWriteE, JumpE, JalrE,
                             BranchE, ALUControlE, ALUSrcE, ALUSrcAE});

   assign PCSrcE       = JumpE | (BranchE & BControlE);
   assign ResultSrcEb0 = ResultSrcE[0];

   // Memory stage pipeline control register
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
               output logic       MemWrite,
               output logic       Branch, ALUSrc,
               output logic       RegWrite, Jump, Jalr,
               output logic [2:0] ImmSrc,
               output logic [1:0] ALUOp,
               output logic [1:0] ALUSrcA);

   // controls =
   // {RegWrite, ImmSrc[2:0], ALUSrc, MemWrite,
   //  ResultSrc[1:0], Branch, ALUOp[1:0], Jump, Jalr, ALUSrcA[1:0]}
   logic [15:0] controls;

   assign {RegWrite, ImmSrc, ALUSrc, MemWrite,
           ResultSrc, Branch, ALUOp, Jump, Jalr, ALUSrcA} = controls;

   always_comb begin
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
        7'b0000000: controls = 16'b0_000_0_0_00_0_00_0_0_00; // safe reset decode
        default:    controls = 16'b0_000_0_0_00_0_00_0_0_00; // safe default
      endcase
   end
endmodule

module aludec(input  logic       opb5,
              input  logic [2:0] funct3,
              input  logic       funct7b5,
              input  logic [1:0] ALUOp,
              output logic [3:0] ALUControl);

   logic RtypeSub;

   assign RtypeSub = funct7b5 & opb5;

   always_comb begin
      case(ALUOp)
        2'b00: ALUControl = 4'b0000; // add
        2'b01: ALUControl = 4'b0001; // subtract (branches)
        default:
          case(funct3)
            3'b000: if (RtypeSub)
                      ALUControl = 4'b0001; // sub
                    else
                      ALUControl = 4'b0000; // add, addi
            3'b001: ALUControl = 4'b0110;   // sll, slli
            3'b010: ALUControl = 4'b0101;   // slt, slti
            3'b011: ALUControl = 4'b1001;   // sltu, sltiu
            3'b100: ALUControl = 4'b0100;   // xor, xori
            3'b101: if (funct7b5)
                      ALUControl = 4'b1000; // sra, srai
                    else
                      ALUControl = 4'b0111; // srl, srli
            3'b110: ALUControl = 4'b0011;   // or, ori
            3'b111: ALUControl = 4'b0010;   // and, andi
            default: ALUControl = 4'b0000;
          endcase
      endcase
   end
endmodule

module datapath(input  logic        clk, reset,
                // Fetch stage
                input  logic        StallF,
                output logic [31:0] PCF,
                input  logic [31:0] InstrF,
                // Decode stage
                output logic [6:0]  opD,
                output logic [2:0]  funct3D,
                output logic        funct7b5D,
                input  logic        StallD, FlushD,
                input  logic [2:0]  ImmSrcD,
                // Execute stage
                input  logic        FlushE,
                input  logic [1:0]  ForwardAE, ForwardBE,
                input  logic        PCSrcE,
                input  logic [3:0]  ALUControlE,
                input  logic        ALUSrcE,
                input  logic [1:0]  ALUSrcAE,
                input  logic        JalrE,
                output logic        ZeroE,
                output logic        NegativeE,
                output logic        CarryE,
                output logic        OverflowE,
                output logic [2:0]  funct3E,
                // Memory stage
                input  logic        MemWriteM,
                output logic [31:0] WriteDataM, ALUResultM,
                input  logic [31:0] ReadDataM,
                // Writeback stage
                input  logic        RegWriteW,
                input  logic [1:0]  ResultSrcW,
                // Hazard signals
                output logic [4:0]  Rs1D, Rs2D, Rs1E, Rs2E,
                output logic [4:0]  RdE, RdM, RdW);

   // Fetch stage signals
   logic [31:0] PCNextF, PCPlus4F;

   // Decode stage signals
   logic [31:0] InstrD;
   logic [31:0] PCD, PCPlus4D;
   logic [31:0] RD1D, RD2D;
   logic [31:0] ImmExtD;
   logic [4:0]  RdD;

   // Execute stage signals
   logic [31:0] RD1E, RD2E;
   logic [31:0] PCE, ImmExtE;
   logic [31:0] SrcARegE;
   logic [31:0] SrcAE, SrcBE;
   logic [31:0] ALUResultE;
   logic [31:0] WriteDataE;
   logic [31:0] PCPlus4E;
   logic [31:0] PCTargetBaseE, PCTargetE;

   // Memory stage signals
   logic [31:0] WriteDataRawM;
   logic [31:0] PCPlus4M;
   logic [2:0]  funct3M;

   // Writeback stage signals
   logic [31:0] ALUResultW;
   logic [31:0] ReadDataW;
   logic [31:0] PCPlus4W;
   logic [31:0] LoadDataW;
   logic [31:0] ResultW;
   logic [2:0]  funct3W;

   //========================
   // Fetch stage
   //========================
   mux2    #(32) pcmux(PCPlus4F, PCTargetE, PCSrcE, PCNextF);
   flopenr #(32) pcreg(clk, reset, ~StallF, PCNextF, PCF);
   adder         pcadd(PCF, 32'h4, PCPlus4F);

   //========================
   // Decode stage
   //========================
   flopenrc #(96) regD(clk, reset, FlushD, ~StallD,
                       {InstrF, PCF, PCPlus4F},
                       {InstrD, PCD, PCPlus4D});

   assign opD       = InstrD[6:0];
   assign funct3D   = InstrD[14:12];
   assign funct7b5D = InstrD[30];
   assign Rs1D      = InstrD[19:15];
   assign Rs2D      = InstrD[24:20];
   assign RdD       = InstrD[11:7];

   regfile rf(clk, RegWriteW, Rs1D, Rs2D, RdW, ResultW, RD1D, RD2D);
   extend  ext(InstrD[31:7], ImmSrcD, ImmExtD);

   //========================
   // Execute stage
   //========================
   floprc #(178) regE(clk, reset, FlushE,
                      {RD1D, RD2D, PCD, Rs1D, Rs2D, RdD, ImmExtD, PCPlus4D, funct3D},
                      {RD1E, RD2E, PCE, Rs1E, Rs2E, RdE, ImmExtE, PCPlus4E, funct3E});

   mux3 #(32) faemux(RD1E, ResultW, ALUResultM, ForwardAE, SrcARegE);
   mux3 #(32) fbemux(RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);

   // ALU src A: 00 = forwarded reg, 01 = PC, 10 = zero
   mux3 #(32) srcamux(SrcARegE, PCE, 32'b0, ALUSrcAE, SrcAE);
   // ALU src B: 0 = forwarded reg2 / store data, 1 = immediate
   mux2 #(32) srcbmux(WriteDataE, ImmExtE, ALUSrcE, SrcBE);

   alu aluunit(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE, NegativeE, CarryE, OverflowE);

   adder branchadd(ImmExtE, PCE, PCTargetBaseE);
   assign PCTargetE = JalrE ? {ALUResultE[31:1], 1'b0} : PCTargetBaseE;

   //========================
   // Memory stage
   //========================
   flopr #(104) regM(clk, reset,
                     {ALUResultE, WriteDataE, RdE, PCPlus4E, funct3E},
                     {ALUResultM, WriteDataRawM, RdM, PCPlus4M, funct3M});

   // Merge sub-word store data using current memory word (working-group style)
   storemerge sm(ReadDataM, WriteDataRawM, funct3M, ALUResultM[1:0], WriteDataM);

   //========================
   // Writeback stage
   //========================
   flopr #(104) regW(clk, reset,
                     {ALUResultM, ReadDataM, RdM, PCPlus4M, funct3M},
                     {ALUResultW, ReadDataW, RdW, PCPlus4W, funct3W});

   loadext le(ReadDataW, funct3W, ALUResultW[1:0], LoadDataW);
   mux3 #(32) resultmux(ALUResultW, LoadDataW, PCPlus4W, ResultSrcW, ResultW);

endmodule

// Hazard Unit: forward, stall, and flush
module hazard(input  logic [4:0] Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
              input  logic       PCSrcE, ResultSrcEb0,
              input  logic       RegWriteM, RegWriteW,
              output logic [1:0] ForwardAE, ForwardBE,
              output logic       StallF, StallD, FlushD, FlushE);

   logic lwStallD;

   // forwarding logic
   always_comb begin
      ForwardAE = 2'b00;
      ForwardBE = 2'b00;

      if (Rs1E != 5'b0) begin
         if      ((Rs1E == RdM) && RegWriteM) ForwardAE = 2'b10;
         else if ((Rs1E == RdW) && RegWriteW) ForwardAE = 2'b01;
      end

      if (Rs2E != 5'b0) begin
         if      ((Rs2E == RdM) && RegWriteM) ForwardBE = 2'b10;
         else if ((Rs2E == RdW) && RegWriteW) ForwardBE = 2'b01;
      end
   end

   // load-use stall and flush logic
   assign lwStallD = ResultSrcEb0 && (RdE != 5'b0) && ((Rs1D == RdE) || (Rs2D == RdE));
   assign StallD   = lwStallD;
   assign StallF   = lwStallD;
   assign FlushD   = PCSrcE;
   assign FlushE   = lwStallD | PCSrcE;
endmodule

module regfile(input  logic        clk,
               input  logic        we3,
               input  logic [4:0]  a1, a2, a3,
               input  logic [31:0] wd3,
               output logic [31:0] rd1, rd2);

   logic [31:0] rf[31:0];

   // write in first half of cycle (falling edge) so decode can read in second half
   always_ff @(negedge clk)
     if (we3 && (a3 != 5'b0)) rf[a3] <= wd3;

   assign rd1 = (a1 != 5'b0) ? rf[a1] : 32'b0;
   assign rd2 = (a2 != 5'b0) ? rf[a2] : 32'b0;
endmodule

module adder(input  logic [31:0] a, b,
             output logic [31:0] y);
   assign y = a + b;
endmodule

module extend(input  logic [31:7] instr,
              input  logic [2:0]  immsrc,
              output logic [31:0] immext);

   always_comb begin
      case(immsrc)
        3'b000: immext = {{20{instr[31]}}, instr[31:20]};                          // I
        3'b001: immext = {{20{instr[31]}}, instr[31:25], instr[11:7]};            // S
        3'b010: immext = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0}; // B
        3'b011: immext = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0}; // J
        3'b100: immext = {instr[31:12], 12'b0};                                   // U
        default: immext = 32'b0;
      endcase
   end
endmodule

module loadext(input  logic [31:0] readdata,
               input  logic [2:0]  funct3,
               input  logic [1:0]  byteoff,
               output logic [31:0] result);

   logic [7:0]  selbyte;
   logic [15:0] selhalf;

   always_comb begin
      case(byteoff)
        2'b00: selbyte = readdata[7:0];
        2'b01: selbyte = readdata[15:8];
        2'b10: selbyte = readdata[23:16];
        default: selbyte = readdata[31:24];
      endcase

      case(byteoff[1])
        1'b0: selhalf = readdata[15:0];
        default: selhalf = readdata[31:16];
      endcase

      case(funct3)
        3'b000:  result = {{24{selbyte[7]}}, selbyte};   // lb
        3'b001:  result = {{16{selhalf[15]}}, selhalf};  // lh
        3'b010:  result = readdata;                      // lw
        3'b100:  result = {24'b0, selbyte};              // lbu
        3'b101:  result = {16'b0, selhalf};              // lhu
        default: result = readdata;
      endcase
   end
endmodule

module storemerge(input  logic [31:0] oldword,
                  input  logic [31:0] storedata,
                  input  logic [2:0]  funct3,
                  input  logic [1:0]  byteoff,
                  output logic [31:0] merged);

   always_comb begin
      case(funct3)
        3'b000: begin // sb
           case(byteoff)
             2'b00: merged = {oldword[31:8],  storedata[7:0]};
             2'b01: merged = {oldword[31:16], storedata[7:0], oldword[7:0]};
             2'b10: merged = {oldword[31:24], storedata[7:0], oldword[15:0]};
             default: merged = {storedata[7:0], oldword[23:0]};
           endcase
        end
        3'b001: begin // sh
           case(byteoff[1])
             1'b0: merged = {oldword[31:16], storedata[15:0]};
             default: merged = {storedata[15:0], oldword[15:0]};
           endcase
        end
        default: merged = storedata; // sw
      endcase
   end
endmodule

module flopr #(parameter WIDTH = 8)
   (input  logic             clk, reset,
    input  logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset) q <= '0;
     else       q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
   (input  logic             clk, reset, en,
    input  logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset)   q <= '0;
     else if (en) q <= d;
endmodule

module flopenrc #(parameter WIDTH = 8)
   (input  logic             clk, reset, clear, en,
    input  logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset)      q <= '0;
     else if (en)
       if (clear)    q <= '0;
       else          q <= d;
endmodule

module floprc #(parameter WIDTH = 8)
   (input  logic             clk,
    input  logic             reset,
    input  logic             clear,
    input  logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q);

   always_ff @(posedge clk, posedge reset)
     if (reset)    q <= '0;
     else if (clear) q <= '0;
     else          q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1,
    input  logic             s,
    output logic [WIDTH-1:0] y);

   assign y = s ? d1 : d0;
endmodule

module mux3 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, d2,
    input  logic [1:0]       s,
    output logic [WIDTH-1:0] y);

   assign y = s[1] ? d2 : (s[0] ? d1 : d0);
endmodule

module imem(input  logic [31:0] a,
            output logic [31:0] rd);

   // enlarged to hold larger test programs
   logic [31:0] RAM[8191:0];

   assign rd = RAM[a[31:2]];
endmodule

module dmem(input  logic        clk, we,
            input  logic [31:0] a, wd,
            output logic [31:0] rd);

   // larger data memory
   logic [31:0] RAM[262143:0];

   assign rd = RAM[a[31:2]];

   always_ff @(posedge clk)
     if (we) RAM[a[31:2]] <= wd;
endmodule

module alu(input  logic [31:0] a, b,
           input  logic [3:0]  alucontrol,
           output logic [31:0] result,
           output logic        zero,
           output logic        negative,
           output logic        carry,
           output logic        overflow);

   logic [31:0] condinvb, sum;
   logic [32:0] carried;
   logic        isAddSub;

   assign condinvb = alucontrol[0] ? ~b : b;
   assign sum      = a + condinvb + alucontrol[0];
   assign carried  = {1'b0, a} + {1'b0, condinvb} + alucontrol[0];

   assign isAddSub = ((alucontrol == 4'b0000) || (alucontrol == 4'b0001));

   always_comb begin
      case(alucontrol)
        4'b0000: result = sum;                            // add
        4'b0001: result = sum;                            // sub
        4'b0010: result = a & b;                          // and
        4'b0011: result = a | b;                          // or
        4'b0100: result = a ^ b;                          // xor
        4'b0101: result = {31'b0, (sum[31] ^ overflow)};  // slt
        4'b0110: result = a << b[4:0];                    // sll
        4'b0111: result = a >> b[4:0];                    // srl
        4'b1000: result = $signed(a) >>> b[4:0];          // sra
        4'b1001: result = {31'b0, (a < b)};               // sltu
        default: result = 32'b0;
      endcase
   end

   assign zero     = (sum == 32'b0);
   assign negative = sum[31];
   assign overflow = ~(alucontrol[0] ^ a[31] ^ b[31]) & (a[31] ^ sum[31]) & isAddSub;
   assign carry    = carried[32];
endmodule