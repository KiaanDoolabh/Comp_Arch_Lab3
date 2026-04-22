// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr  1 18:06:22 2026
// Host        : CEAT-ENDV350-06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire Done;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
   (PCPlus4,
    wd3,
    Q,
    O,
    Instr,
    rf_reg_r1_0_31_0_5,
    rf_reg_r1_0_31_6_11,
    rf_reg_r1_0_31_0_5_0,
    rf_reg_r1_0_31_0_5_1,
    rf_reg_r1_0_31_6_11_0,
    rf_reg_r1_0_31_12_17,
    rf_reg_r1_0_31_6_11_1,
    ReadDataOut,
    ResultSrc,
    rf_reg_r1_0_31_12_17_0,
    rf_reg_r1_0_31_12_17_1,
    rf_reg_r1_0_31_18_23,
    rf_reg_r1_0_31_18_23_0,
    rf_reg_r1_0_31_18_23_1,
    rf_reg_r1_0_31_18_23_2,
    rf_reg_r1_0_31_18_23_3,
    rf_reg_r1_0_31_18_23_4,
    rf_reg_r1_0_31_18_23_5,
    rf_reg_r1_0_31_18_23_6,
    rf_reg_r1_0_31_24_29,
    rf_reg_r1_0_31_24_29_0,
    rf_reg_r1_0_31_24_29_1,
    rf_reg_r1_0_31_24_29_2,
    rf_reg_r1_0_31_24_29_3,
    rf_reg_r1_0_31_12_17_2,
    rf_reg_r1_0_31_12_17_3,
    rf_reg_r1_0_31_12_17_4,
    rf_reg_r1_0_31_12_17_5,
    rf_reg_r1_0_31_6_11_2,
    rf_reg_r1_0_31_6_11_3,
    rf_reg_r1_0_31_6_11_4,
    rf_reg_r1_0_31_6_11_5,
    rf_reg_r1_0_31_6_11_6,
    rf_reg_r1_0_31_6_11_7);
  output [28:0]PCPlus4;
  output [24:0]wd3;
  input [29:0]Q;
  input [0:0]O;
  input [2:0]Instr;
  input rf_reg_r1_0_31_0_5;
  input [3:0]rf_reg_r1_0_31_6_11;
  input rf_reg_r1_0_31_0_5_0;
  input rf_reg_r1_0_31_0_5_1;
  input rf_reg_r1_0_31_6_11_0;
  input [3:0]rf_reg_r1_0_31_12_17;
  input rf_reg_r1_0_31_6_11_1;
  input [7:0]ReadDataOut;
  input [0:0]ResultSrc;
  input rf_reg_r1_0_31_12_17_0;
  input rf_reg_r1_0_31_12_17_1;
  input [3:0]rf_reg_r1_0_31_18_23;
  input rf_reg_r1_0_31_18_23_0;
  input rf_reg_r1_0_31_18_23_1;
  input rf_reg_r1_0_31_18_23_2;
  input rf_reg_r1_0_31_18_23_3;
  input [3:0]rf_reg_r1_0_31_18_23_4;
  input rf_reg_r1_0_31_18_23_5;
  input rf_reg_r1_0_31_18_23_6;
  input [3:0]rf_reg_r1_0_31_24_29;
  input rf_reg_r1_0_31_24_29_0;
  input rf_reg_r1_0_31_24_29_1;
  input rf_reg_r1_0_31_24_29_2;
  input rf_reg_r1_0_31_24_29_3;
  input rf_reg_r1_0_31_12_17_2;
  input rf_reg_r1_0_31_12_17_3;
  input rf_reg_r1_0_31_12_17_4;
  input rf_reg_r1_0_31_12_17_5;
  input rf_reg_r1_0_31_6_11_2;
  input [3:0]rf_reg_r1_0_31_6_11_3;
  input rf_reg_r1_0_31_6_11_4;
  input rf_reg_r1_0_31_6_11_5;
  input rf_reg_r1_0_31_6_11_6;
  input rf_reg_r1_0_31_6_11_7;

  wire [2:0]Instr;
  wire [0:0]O;
  wire [28:0]PCPlus4;
  wire [29:0]Q;
  wire [7:0]ReadDataOut;
  wire [0:0]ResultSrc;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_0_5_0;
  wire rf_reg_r1_0_31_0_5_1;
  wire [3:0]rf_reg_r1_0_31_12_17;
  wire rf_reg_r1_0_31_12_17_0;
  wire rf_reg_r1_0_31_12_17_1;
  wire rf_reg_r1_0_31_12_17_2;
  wire rf_reg_r1_0_31_12_17_3;
  wire rf_reg_r1_0_31_12_17_4;
  wire rf_reg_r1_0_31_12_17_5;
  wire [3:0]rf_reg_r1_0_31_18_23;
  wire rf_reg_r1_0_31_18_23_0;
  wire rf_reg_r1_0_31_18_23_1;
  wire rf_reg_r1_0_31_18_23_2;
  wire rf_reg_r1_0_31_18_23_3;
  wire [3:0]rf_reg_r1_0_31_18_23_4;
  wire rf_reg_r1_0_31_18_23_5;
  wire rf_reg_r1_0_31_18_23_6;
  wire [3:0]rf_reg_r1_0_31_24_29;
  wire rf_reg_r1_0_31_24_29_0;
  wire rf_reg_r1_0_31_24_29_1;
  wire rf_reg_r1_0_31_24_29_2;
  wire rf_reg_r1_0_31_24_29_3;
  wire [3:0]rf_reg_r1_0_31_6_11;
  wire rf_reg_r1_0_31_6_11_0;
  wire rf_reg_r1_0_31_6_11_1;
  wire rf_reg_r1_0_31_6_11_2;
  wire [3:0]rf_reg_r1_0_31_6_11_3;
  wire rf_reg_r1_0_31_6_11_4;
  wire rf_reg_r1_0_31_6_11_5;
  wire rf_reg_r1_0_31_6_11_6;
  wire rf_reg_r1_0_31_6_11_7;
  wire [24:0]wd3;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_y_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(O),
        .I1(PCPlus4[0]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_0_5),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(rf_reg_r1_0_31_6_11[1]),
        .I1(PCPlus4[2]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_0_5_1),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(rf_reg_r1_0_31_6_11[0]),
        .I1(PCPlus4[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_0_5_0),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(rf_reg_r1_0_31_12_17[1]),
        .I1(PCPlus4[10]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[5]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_0),
        .O(wd3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(rf_reg_r1_0_31_12_17[0]),
        .I1(PCPlus4[9]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[4]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_1),
        .O(wd3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(rf_reg_r1_0_31_12_17[3]),
        .I1(PCPlus4[12]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[7]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_4),
        .O(wd3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(rf_reg_r1_0_31_12_17[2]),
        .I1(PCPlus4[11]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_5),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(rf_reg_r1_0_31_18_23_4[1]),
        .I1(PCPlus4[14]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_12_17_3),
        .O(wd3[14]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(rf_reg_r1_0_31_18_23_4[0]),
        .I1(PCPlus4[13]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_12_17_2),
        .O(wd3[13]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(rf_reg_r1_0_31_18_23_4[3]),
        .I1(PCPlus4[16]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_6),
        .O(wd3[16]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(rf_reg_r1_0_31_18_23_4[2]),
        .I1(PCPlus4[15]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_5),
        .O(wd3[15]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(rf_reg_r1_0_31_18_23[1]),
        .I1(PCPlus4[18]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_3),
        .O(wd3[18]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(rf_reg_r1_0_31_18_23[0]),
        .I1(PCPlus4[17]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_2),
        .O(wd3[17]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(rf_reg_r1_0_31_18_23[3]),
        .I1(PCPlus4[20]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_1),
        .O(wd3[20]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(rf_reg_r1_0_31_18_23[2]),
        .I1(PCPlus4[19]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_18_23_0),
        .O(wd3[19]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(rf_reg_r1_0_31_24_29[1]),
        .I1(PCPlus4[22]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_24_29_3),
        .O(wd3[22]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(rf_reg_r1_0_31_24_29[0]),
        .I1(PCPlus4[21]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_24_29_2),
        .O(wd3[21]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(rf_reg_r1_0_31_24_29[3]),
        .I1(PCPlus4[24]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_24_29_1),
        .O(wd3[24]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(rf_reg_r1_0_31_24_29[2]),
        .I1(PCPlus4[23]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_24_29_0),
        .O(wd3[23]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(rf_reg_r1_0_31_6_11[3]),
        .I1(PCPlus4[4]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_6_11_2),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(rf_reg_r1_0_31_6_11[2]),
        .I1(PCPlus4[3]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .I5(rf_reg_r1_0_31_6_11_0),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(rf_reg_r1_0_31_6_11_3[1]),
        .I1(PCPlus4[6]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[1]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_4),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(rf_reg_r1_0_31_6_11_3[0]),
        .I1(PCPlus4[5]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[0]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_5),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(rf_reg_r1_0_31_6_11_3[3]),
        .I1(PCPlus4[8]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[3]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_6),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(rf_reg_r1_0_31_6_11_3[2]),
        .I1(PCPlus4[7]),
        .I2(rf_reg_r1_0_31_6_11_1),
        .I3(ReadDataOut[2]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_7),
        .O(wd3[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(PCPlus4[3:0]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(PCPlus4[7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(PCPlus4[11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(PCPlus4[15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(PCPlus4[19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(PCPlus4[23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(PCPlus4[27:24]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3:1],PCPlus4[28]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
   (PCTargetI,
    ImmSrc,
    Q,
    S,
    \q[4]_i_2 ,
    \q[8]_i_2 ,
    \q[12]_i_2 ,
    \q[16]_i_2 ,
    \q[20]_i_2 ,
    \q[24]_i_2 ,
    \q[28]_i_2 ,
    Instr);
  output [31:0]PCTargetI;
  output [1:0]ImmSrc;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q[4]_i_2 ;
  input [3:0]\q[8]_i_2 ;
  input [3:0]\q[12]_i_2 ;
  input [3:0]\q[16]_i_2 ;
  input [3:0]\q[20]_i_2 ;
  input [3:0]\q[24]_i_2 ;
  input [3:0]\q[28]_i_2 ;
  input [4:0]Instr;

  wire [1:0]ImmSrc;
  wire [4:0]Instr;
  wire [31:0]PCTargetI;
  wire [30:0]Q;
  wire [3:0]S;
  wire [3:0]\q[12]_i_2 ;
  wire [3:0]\q[16]_i_2 ;
  wire [3:0]\q[20]_i_2 ;
  wire [3:0]\q[24]_i_2 ;
  wire [3:0]\q[28]_i_2 ;
  wire [3:0]\q[4]_i_2 ;
  wire [3:0]\q[8]_i_2 ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(PCTargetI[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(PCTargetI[7:4]),
        .S(\q[4]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(PCTargetI[11:8]),
        .S(\q[8]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(PCTargetI[15:12]),
        .S(\q[12]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(PCTargetI[19:16]),
        .S(\q[16]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(PCTargetI[23:20]),
        .S(\q[20]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(PCTargetI[27:24]),
        .S(\q[24]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(PCTargetI[31:28]),
        .S(\q[28]_i_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    y_carry_i_6
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(ImmSrc[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    y_carry_i_7
       (.I0(Instr[1]),
        .I1(Instr[2]),
        .I2(Instr[4]),
        .I3(Instr[3]),
        .O(ImmSrc[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (sum,
    O,
    CO,
    \readDataM[0] ,
    \ALUResult[0]_INST_0_i_5 ,
    \ALUResult[1]_INST_0_i_2_0 ,
    \readDataM[1] ,
    \readDataM[2] ,
    \readDataM[3] ,
    \readDataM[4] ,
    \readDataM[5] ,
    \readDataM[6] ,
    ReadDataOut,
    \readDataM[30] ,
    \readDataM[31] ,
    \readDataM[22] ,
    \readDataM[23] ,
    \readDataM[20] ,
    \readDataM[21] ,
    \readDataM[18] ,
    \readDataM[19] ,
    \ALUResult[19]_INST_0_i_2_0 ,
    \readDataM[28] ,
    \readDataM[29] ,
    \readDataM[26] ,
    \readDataM[27] ,
    \readDataM[24] ,
    \readDataM[25] ,
    \readDataM[16] ,
    \readDataM[17] ,
    \readDataM[7] ,
    WriteData,
    \readDataM[16]_0 ,
    rd21__3,
    \readDataM[17]_0 ,
    \readDataM[18]_0 ,
    \readDataM[19]_0 ,
    \readDataM[20]_0 ,
    \readDataM[21]_0 ,
    \readDataM[22]_0 ,
    \readDataM[23]_0 ,
    D,
    \ALUResult[2]_INST_0 ,
    rd11__3,
    ImmExt,
    y_carry_i_5_0,
    y_carry_i_5_1,
    \ALUResult[0]_INST_0_i_11 ,
    \ALUResult[0]_INST_0_i_11_0 ,
    \ALUResult[0]_INST_0_i_11_1 ,
    \addressM[1] ,
    \ALUResult[0]_INST_0_i_11_2 ,
    S,
    \ALUResult[4]_INST_0_i_6 ,
    \ALUResult[4]_INST_0_i_6_0 ,
    \ALUResult[4]_INST_0_i_6_1 ,
    \ALUResult[4]_INST_0_i_6_2 ,
    \ALUResult[4]_INST_0_i_6_3 ,
    \ALUResult[8]_INST_0_i_6 ,
    \ALUResult[8]_INST_0_i_6_0 ,
    \ALUResult[8]_INST_0_i_6_1 ,
    \ALUResult[8]_INST_0_i_6_2 ,
    \ALUResult[8]_INST_0_i_6_3 ,
    \ALUResult[12]_INST_0_i_6 ,
    \ALUResult[12]_INST_0_i_6_0 ,
    \ALUResult[12]_INST_0_i_6_1 ,
    \ALUResult[12]_INST_0_i_6_2 ,
    \ALUResult[12]_INST_0_i_6_3 ,
    \addressM[19] ,
    \ALUResult[16]_INST_0_i_6 ,
    \ALUResult[16]_INST_0_i_6_0 ,
    \ALUResult[16]_INST_0_i_6_1 ,
    \ALUResult[16]_INST_0_i_6_2 ,
    \ALUResult[20]_INST_0_i_6 ,
    \ALUResult[20]_INST_0_i_6_0 ,
    \ALUResult[20]_INST_0_i_6_1 ,
    \ALUResult[20]_INST_0_i_6_2 ,
    \ALUResult[20]_INST_0_i_6_3 ,
    \ALUResult[24]_INST_0_i_6 ,
    \ALUResult[24]_INST_0_i_6_0 ,
    \ALUResult[24]_INST_0_i_6_1 ,
    \ALUResult[24]_INST_0_i_6_2 ,
    \ALUResult[24]_INST_0_i_6_3 ,
    \ALUResult[28]_INST_0_i_6 ,
    \ALUResult[28]_INST_0_i_6_0 ,
    \ALUResult[28]_INST_0_i_6_1 ,
    \ALUResult[28]_INST_0_i_6_2 ,
    DI,
    \result0_inferred__6/i__carry__0_0 ,
    \result0_inferred__6/i__carry__1_0 ,
    \result0_inferred__6/i__carry__1_1 ,
    \result0_inferred__6/i__carry__2_0 ,
    \result0_inferred__6/i__carry__2_1 ,
    \ALUResult[0]_INST_0_i_1_0 ,
    \ALUResult[0]_INST_0_i_1_1 ,
    carried_carry__0_0,
    carried_carry__1_0,
    carried_carry__2_0,
    carried_carry__3_0,
    carried_carry__4_0,
    carried_carry__5_0,
    carried_carry__6_0,
    \q[31]_i_4 ,
    \q[31]_i_4_0 ,
    Instr,
    ReadData,
    ResultSrc,
    rf_reg_r1_0_31_0_5_i_5,
    rf_reg_r1_0_31_0_5_i_4,
    rf_reg_r1_0_31_0_5_i_7,
    rf_reg_r1_0_31_0_5_i_6,
    rf_reg_r1_0_31_6_11_i_2,
    rf_reg_r1_0_31_30_31_i_1,
    rf_reg_r1_0_31_30_31_i_1__0,
    rf_reg_r1_0_31_18_23_i_6,
    rf_reg_r1_0_31_18_23_i_5,
    rf_reg_r1_0_31_18_23_i_4,
    rf_reg_r1_0_31_18_23_i_3,
    rf_reg_r1_0_31_18_23_i_2,
    rf_reg_r1_0_31_24_29_i_6,
    rf_reg_r1_0_31_24_29_i_5,
    rf_reg_r1_0_31_24_29_i_4,
    rf_reg_r1_0_31_24_29_i_3,
    rf_reg_r1_0_31_24_29_i_2,
    rf_reg_r1_0_31_24_29_i_1,
    rf_reg_r1_0_31_12_17_i_6,
    rf_reg_r1_0_31_12_17_i_5,
    rf_reg_r1_0_31_6_11_i_1,
    \writeDataM[0] ,
    \writeDataM[1] ,
    \writeDataM[2] ,
    \writeDataM[3] ,
    \writeDataM[4] ,
    \writeDataM[5] ,
    \writeDataM[6] ,
    \writeDataM[7] ,
    rd20,
    Q,
    BControl__8,
    \q_reg[19] ,
    PCTargetI,
    ALUSrc,
    ALUControl__0,
    \addressM[1]_0 ,
    \addressM[0] ,
    \addressM[0]_0 ,
    ALUControl,
    \addressM[0]_1 ,
    \addressM[19]_0 ,
    SrcB,
    ImmSrc);
  output [30:0]sum;
  output [0:0]O;
  output [0:0]CO;
  output \readDataM[0] ;
  output \ALUResult[0]_INST_0_i_5 ;
  output \ALUResult[1]_INST_0_i_2_0 ;
  output \readDataM[1] ;
  output \readDataM[2] ;
  output \readDataM[3] ;
  output \readDataM[4] ;
  output \readDataM[5] ;
  output \readDataM[6] ;
  output [7:0]ReadDataOut;
  output \readDataM[30] ;
  output \readDataM[31] ;
  output \readDataM[22] ;
  output \readDataM[23] ;
  output \readDataM[20] ;
  output \readDataM[21] ;
  output \readDataM[18] ;
  output \readDataM[19] ;
  output \ALUResult[19]_INST_0_i_2_0 ;
  output \readDataM[28] ;
  output \readDataM[29] ;
  output \readDataM[26] ;
  output \readDataM[27] ;
  output \readDataM[24] ;
  output \readDataM[25] ;
  output \readDataM[16] ;
  output \readDataM[17] ;
  output \readDataM[7] ;
  output [7:0]WriteData;
  output \readDataM[16]_0 ;
  output rd21__3;
  output \readDataM[17]_0 ;
  output \readDataM[18]_0 ;
  output \readDataM[19]_0 ;
  output \readDataM[20]_0 ;
  output \readDataM[21]_0 ;
  output \readDataM[22]_0 ;
  output \readDataM[23]_0 ;
  output [2:0]D;
  output \ALUResult[2]_INST_0 ;
  output rd11__3;
  output [7:0]ImmExt;
  output y_carry_i_5_0;
  output y_carry_i_5_1;
  input \ALUResult[0]_INST_0_i_11 ;
  input \ALUResult[0]_INST_0_i_11_0 ;
  input \ALUResult[0]_INST_0_i_11_1 ;
  input \addressM[1] ;
  input \ALUResult[0]_INST_0_i_11_2 ;
  input [3:0]S;
  input \ALUResult[4]_INST_0_i_6 ;
  input \ALUResult[4]_INST_0_i_6_0 ;
  input \ALUResult[4]_INST_0_i_6_1 ;
  input \ALUResult[4]_INST_0_i_6_2 ;
  input [3:0]\ALUResult[4]_INST_0_i_6_3 ;
  input \ALUResult[8]_INST_0_i_6 ;
  input \ALUResult[8]_INST_0_i_6_0 ;
  input \ALUResult[8]_INST_0_i_6_1 ;
  input \ALUResult[8]_INST_0_i_6_2 ;
  input [3:0]\ALUResult[8]_INST_0_i_6_3 ;
  input \ALUResult[12]_INST_0_i_6 ;
  input \ALUResult[12]_INST_0_i_6_0 ;
  input \ALUResult[12]_INST_0_i_6_1 ;
  input \ALUResult[12]_INST_0_i_6_2 ;
  input [3:0]\ALUResult[12]_INST_0_i_6_3 ;
  input \addressM[19] ;
  input \ALUResult[16]_INST_0_i_6 ;
  input \ALUResult[16]_INST_0_i_6_0 ;
  input \ALUResult[16]_INST_0_i_6_1 ;
  input [3:0]\ALUResult[16]_INST_0_i_6_2 ;
  input \ALUResult[20]_INST_0_i_6 ;
  input \ALUResult[20]_INST_0_i_6_0 ;
  input \ALUResult[20]_INST_0_i_6_1 ;
  input \ALUResult[20]_INST_0_i_6_2 ;
  input [3:0]\ALUResult[20]_INST_0_i_6_3 ;
  input \ALUResult[24]_INST_0_i_6 ;
  input \ALUResult[24]_INST_0_i_6_0 ;
  input \ALUResult[24]_INST_0_i_6_1 ;
  input \ALUResult[24]_INST_0_i_6_2 ;
  input [3:0]\ALUResult[24]_INST_0_i_6_3 ;
  input \ALUResult[28]_INST_0_i_6 ;
  input \ALUResult[28]_INST_0_i_6_0 ;
  input \ALUResult[28]_INST_0_i_6_1 ;
  input [3:0]\ALUResult[28]_INST_0_i_6_2 ;
  input [3:0]DI;
  input [3:0]\result0_inferred__6/i__carry__0_0 ;
  input [3:0]\result0_inferred__6/i__carry__1_0 ;
  input [3:0]\result0_inferred__6/i__carry__1_1 ;
  input [3:0]\result0_inferred__6/i__carry__2_0 ;
  input [3:0]\result0_inferred__6/i__carry__2_1 ;
  input [3:0]\ALUResult[0]_INST_0_i_1_0 ;
  input [3:0]\ALUResult[0]_INST_0_i_1_1 ;
  input [3:0]carried_carry__0_0;
  input [3:0]carried_carry__1_0;
  input [3:0]carried_carry__2_0;
  input [3:0]carried_carry__3_0;
  input [3:0]carried_carry__4_0;
  input [3:0]carried_carry__5_0;
  input [3:0]carried_carry__6_0;
  input \q[31]_i_4 ;
  input [3:0]\q[31]_i_4_0 ;
  input [17:0]Instr;
  input [31:0]ReadData;
  input [0:0]ResultSrc;
  input rf_reg_r1_0_31_0_5_i_5;
  input rf_reg_r1_0_31_0_5_i_4;
  input rf_reg_r1_0_31_0_5_i_7;
  input rf_reg_r1_0_31_0_5_i_6;
  input rf_reg_r1_0_31_6_11_i_2;
  input rf_reg_r1_0_31_30_31_i_1;
  input rf_reg_r1_0_31_30_31_i_1__0;
  input rf_reg_r1_0_31_18_23_i_6;
  input rf_reg_r1_0_31_18_23_i_5;
  input rf_reg_r1_0_31_18_23_i_4;
  input rf_reg_r1_0_31_18_23_i_3;
  input rf_reg_r1_0_31_18_23_i_2;
  input rf_reg_r1_0_31_24_29_i_6;
  input rf_reg_r1_0_31_24_29_i_5;
  input rf_reg_r1_0_31_24_29_i_4;
  input rf_reg_r1_0_31_24_29_i_3;
  input rf_reg_r1_0_31_24_29_i_2;
  input rf_reg_r1_0_31_24_29_i_1;
  input rf_reg_r1_0_31_12_17_i_6;
  input rf_reg_r1_0_31_12_17_i_5;
  input rf_reg_r1_0_31_6_11_i_1;
  input \writeDataM[0] ;
  input \writeDataM[1] ;
  input \writeDataM[2] ;
  input \writeDataM[3] ;
  input \writeDataM[4] ;
  input \writeDataM[5] ;
  input \writeDataM[6] ;
  input \writeDataM[7] ;
  input [7:0]rd20;
  input [1:0]Q;
  input BControl__8;
  input [0:0]\q_reg[19] ;
  input [2:0]PCTargetI;
  input ALUSrc;
  input [2:0]ALUControl__0;
  input \addressM[1]_0 ;
  input \addressM[0] ;
  input \addressM[0]_0 ;
  input [0:0]ALUControl;
  input \addressM[0]_1 ;
  input \addressM[19]_0 ;
  input [1:0]SrcB;
  input [1:0]ImmSrc;

  wire [0:0]ALUControl;
  wire [2:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_11 ;
  wire \ALUResult[0]_INST_0_i_11_0 ;
  wire \ALUResult[0]_INST_0_i_11_1 ;
  wire \ALUResult[0]_INST_0_i_11_2 ;
  wire [3:0]\ALUResult[0]_INST_0_i_1_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_1_1 ;
  wire \ALUResult[0]_INST_0_i_1_n_0 ;
  wire \ALUResult[0]_INST_0_i_5 ;
  wire \ALUResult[12]_INST_0_i_6 ;
  wire \ALUResult[12]_INST_0_i_6_0 ;
  wire \ALUResult[12]_INST_0_i_6_1 ;
  wire \ALUResult[12]_INST_0_i_6_2 ;
  wire [3:0]\ALUResult[12]_INST_0_i_6_3 ;
  wire \ALUResult[16]_INST_0_i_6 ;
  wire \ALUResult[16]_INST_0_i_6_0 ;
  wire \ALUResult[16]_INST_0_i_6_1 ;
  wire [3:0]\ALUResult[16]_INST_0_i_6_2 ;
  wire \ALUResult[19]_INST_0_i_2_0 ;
  wire \ALUResult[19]_INST_0_i_2_n_0 ;
  wire \ALUResult[1]_INST_0_i_2_0 ;
  wire \ALUResult[1]_INST_0_i_2_n_0 ;
  wire \ALUResult[20]_INST_0_i_6 ;
  wire \ALUResult[20]_INST_0_i_6_0 ;
  wire \ALUResult[20]_INST_0_i_6_1 ;
  wire \ALUResult[20]_INST_0_i_6_2 ;
  wire [3:0]\ALUResult[20]_INST_0_i_6_3 ;
  wire \ALUResult[24]_INST_0_i_6 ;
  wire \ALUResult[24]_INST_0_i_6_0 ;
  wire \ALUResult[24]_INST_0_i_6_1 ;
  wire \ALUResult[24]_INST_0_i_6_2 ;
  wire [3:0]\ALUResult[24]_INST_0_i_6_3 ;
  wire \ALUResult[28]_INST_0_i_6 ;
  wire \ALUResult[28]_INST_0_i_6_0 ;
  wire \ALUResult[28]_INST_0_i_6_1 ;
  wire [3:0]\ALUResult[28]_INST_0_i_6_2 ;
  wire \ALUResult[2]_INST_0 ;
  wire \ALUResult[4]_INST_0_i_6 ;
  wire \ALUResult[4]_INST_0_i_6_0 ;
  wire \ALUResult[4]_INST_0_i_6_1 ;
  wire \ALUResult[4]_INST_0_i_6_2 ;
  wire [3:0]\ALUResult[4]_INST_0_i_6_3 ;
  wire \ALUResult[8]_INST_0_i_6 ;
  wire \ALUResult[8]_INST_0_i_6_0 ;
  wire \ALUResult[8]_INST_0_i_6_1 ;
  wire \ALUResult[8]_INST_0_i_6_2 ;
  wire [3:0]\ALUResult[8]_INST_0_i_6_3 ;
  wire ALUSrc;
  wire BControl__8;
  wire [0:0]CO;
  wire [2:0]D;
  wire [3:0]DI;
  wire [7:0]ImmExt;
  wire [1:0]ImmSrc;
  wire [17:0]Instr;
  wire [0:0]O;
  wire [19:0]PCTarget;
  wire [2:0]PCTargetI;
  wire [1:0]Q;
  wire [7:0]RDByte;
  wire [15:8]RDHalf;
  wire [31:0]ReadData;
  wire [7:0]ReadDataOut;
  wire [0:0]ResultSrc;
  wire [3:0]S;
  wire [1:0]SrcB;
  wire [7:0]WriteData;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[0]_1 ;
  wire \addressM[19] ;
  wire \addressM[19]_0 ;
  wire \addressM[1] ;
  wire \addressM[1]_0 ;
  wire [3:0]carried_carry__0_0;
  wire carried_carry__0_n_0;
  wire carried_carry__0_n_1;
  wire carried_carry__0_n_2;
  wire carried_carry__0_n_3;
  wire [3:0]carried_carry__1_0;
  wire carried_carry__1_n_0;
  wire carried_carry__1_n_1;
  wire carried_carry__1_n_2;
  wire carried_carry__1_n_3;
  wire [3:0]carried_carry__2_0;
  wire carried_carry__2_n_0;
  wire carried_carry__2_n_1;
  wire carried_carry__2_n_2;
  wire carried_carry__2_n_3;
  wire [3:0]carried_carry__3_0;
  wire carried_carry__3_n_0;
  wire carried_carry__3_n_1;
  wire carried_carry__3_n_2;
  wire carried_carry__3_n_3;
  wire [3:0]carried_carry__4_0;
  wire carried_carry__4_n_0;
  wire carried_carry__4_n_1;
  wire carried_carry__4_n_2;
  wire carried_carry__4_n_3;
  wire [3:0]carried_carry__5_0;
  wire carried_carry__5_n_0;
  wire carried_carry__5_n_1;
  wire carried_carry__5_n_2;
  wire carried_carry__5_n_3;
  wire [3:0]carried_carry__6_0;
  wire carried_carry__6_n_1;
  wire carried_carry__6_n_2;
  wire carried_carry__6_n_3;
  wire carried_carry_n_0;
  wire carried_carry_n_1;
  wire carried_carry_n_2;
  wire carried_carry_n_3;
  wire data8;
  wire \q[31]_i_4 ;
  wire [3:0]\q[31]_i_4_0 ;
  wire [0:0]\q_reg[19] ;
  wire rd11__3;
  wire [7:0]rd20;
  wire rd21__3;
  wire \readDataM[0] ;
  wire \readDataM[16] ;
  wire \readDataM[16]_0 ;
  wire \readDataM[17] ;
  wire \readDataM[17]_0 ;
  wire \readDataM[18] ;
  wire \readDataM[18]_0 ;
  wire \readDataM[19] ;
  wire \readDataM[19]_0 ;
  wire \readDataM[1] ;
  wire \readDataM[20] ;
  wire \readDataM[20]_0 ;
  wire \readDataM[21] ;
  wire \readDataM[21]_0 ;
  wire \readDataM[22] ;
  wire \readDataM[22]_0 ;
  wire \readDataM[23] ;
  wire \readDataM[23]_0 ;
  wire \readDataM[24] ;
  wire \readDataM[25] ;
  wire \readDataM[26] ;
  wire \readDataM[27] ;
  wire \readDataM[28] ;
  wire \readDataM[29] ;
  wire \readDataM[2] ;
  wire \readDataM[30] ;
  wire \readDataM[31] ;
  wire \readDataM[3] ;
  wire \readDataM[4] ;
  wire \readDataM[5] ;
  wire \readDataM[6] ;
  wire \readDataM[7] ;
  wire [3:0]\result0_inferred__6/i__carry__0_0 ;
  wire \result0_inferred__6/i__carry__0_n_0 ;
  wire \result0_inferred__6/i__carry__0_n_1 ;
  wire \result0_inferred__6/i__carry__0_n_2 ;
  wire \result0_inferred__6/i__carry__0_n_3 ;
  wire [3:0]\result0_inferred__6/i__carry__1_0 ;
  wire [3:0]\result0_inferred__6/i__carry__1_1 ;
  wire \result0_inferred__6/i__carry__1_n_0 ;
  wire \result0_inferred__6/i__carry__1_n_1 ;
  wire \result0_inferred__6/i__carry__1_n_2 ;
  wire \result0_inferred__6/i__carry__1_n_3 ;
  wire [3:0]\result0_inferred__6/i__carry__2_0 ;
  wire [3:0]\result0_inferred__6/i__carry__2_1 ;
  wire \result0_inferred__6/i__carry__2_n_1 ;
  wire \result0_inferred__6/i__carry__2_n_2 ;
  wire \result0_inferred__6/i__carry__2_n_3 ;
  wire \result0_inferred__6/i__carry_n_0 ;
  wire \result0_inferred__6/i__carry_n_1 ;
  wire \result0_inferred__6/i__carry_n_2 ;
  wire \result0_inferred__6/i__carry_n_3 ;
  wire rf_reg_r1_0_31_0_5_i_14_n_0;
  wire rf_reg_r1_0_31_0_5_i_15_n_0;
  wire rf_reg_r1_0_31_0_5_i_16_n_0;
  wire rf_reg_r1_0_31_0_5_i_17_n_0;
  wire rf_reg_r1_0_31_0_5_i_18_n_0;
  wire rf_reg_r1_0_31_0_5_i_19_n_0;
  wire rf_reg_r1_0_31_0_5_i_4;
  wire rf_reg_r1_0_31_0_5_i_5;
  wire rf_reg_r1_0_31_0_5_i_6;
  wire rf_reg_r1_0_31_0_5_i_7;
  wire rf_reg_r1_0_31_12_17_i_16_n_0;
  wire rf_reg_r1_0_31_12_17_i_5;
  wire rf_reg_r1_0_31_12_17_i_6;
  wire rf_reg_r1_0_31_18_23_i_2;
  wire rf_reg_r1_0_31_18_23_i_3;
  wire rf_reg_r1_0_31_18_23_i_4;
  wire rf_reg_r1_0_31_18_23_i_5;
  wire rf_reg_r1_0_31_18_23_i_6;
  wire rf_reg_r1_0_31_24_29_i_1;
  wire rf_reg_r1_0_31_24_29_i_2;
  wire rf_reg_r1_0_31_24_29_i_3;
  wire rf_reg_r1_0_31_24_29_i_4;
  wire rf_reg_r1_0_31_24_29_i_5;
  wire rf_reg_r1_0_31_24_29_i_6;
  wire rf_reg_r1_0_31_30_31_i_1;
  wire rf_reg_r1_0_31_30_31_i_1__0;
  wire rf_reg_r1_0_31_6_11_i_1;
  wire rf_reg_r1_0_31_6_11_i_15_n_0;
  wire rf_reg_r1_0_31_6_11_i_16_n_0;
  wire rf_reg_r1_0_31_6_11_i_2;
  wire [30:0]sum;
  wire sum__0_carry__0_n_0;
  wire sum__0_carry__0_n_1;
  wire sum__0_carry__0_n_2;
  wire sum__0_carry__0_n_3;
  wire sum__0_carry__1_n_0;
  wire sum__0_carry__1_n_1;
  wire sum__0_carry__1_n_2;
  wire sum__0_carry__1_n_3;
  wire sum__0_carry__2_n_0;
  wire sum__0_carry__2_n_1;
  wire sum__0_carry__2_n_2;
  wire sum__0_carry__2_n_3;
  wire sum__0_carry__3_n_0;
  wire sum__0_carry__3_n_1;
  wire sum__0_carry__3_n_2;
  wire sum__0_carry__3_n_3;
  wire sum__0_carry__4_n_0;
  wire sum__0_carry__4_n_1;
  wire sum__0_carry__4_n_2;
  wire sum__0_carry__4_n_3;
  wire sum__0_carry__5_n_0;
  wire sum__0_carry__5_n_1;
  wire sum__0_carry__5_n_2;
  wire sum__0_carry__5_n_3;
  wire sum__0_carry__6_n_1;
  wire sum__0_carry__6_n_2;
  wire sum__0_carry__6_n_3;
  wire sum__0_carry_n_0;
  wire sum__0_carry_n_1;
  wire sum__0_carry_n_2;
  wire sum__0_carry_n_3;
  wire \writeDataM[0] ;
  wire \writeDataM[1] ;
  wire \writeDataM[2] ;
  wire \writeDataM[3] ;
  wire \writeDataM[4] ;
  wire \writeDataM[5] ;
  wire \writeDataM[6] ;
  wire \writeDataM[7] ;
  wire y_carry_i_5_0;
  wire y_carry_i_5_1;
  wire [3:0]NLW_carried_carry_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_carried_carry__6_O_UNCONNECTED;
  wire [3:0]\NLW_result0_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED ;
  wire [3:3]NLW_sum__0_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[0]_INST_0 
       (.I0(\ALUResult[0]_INST_0_i_1_n_0 ),
        .I1(\addressM[0] ),
        .I2(ALUControl__0[2]),
        .I3(\addressM[0]_0 ),
        .I4(ALUControl),
        .I5(\addressM[0]_1 ),
        .O(\ALUResult[0]_INST_0_i_5 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(ALUControl__0[1]),
        .I1(sum[0]),
        .I2(ALUControl__0[0]),
        .I3(data8),
        .O(\ALUResult[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[12]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[4]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[0]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[13]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[5]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[1]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[14]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[6]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[2]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[15]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[7]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[3]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[16]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[8]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[4]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[17]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[9]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[5]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[18]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[10]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[6]));
  MUXF7 \ALUResult[19]_INST_0 
       (.I0(\addressM[19]_0 ),
        .I1(\ALUResult[19]_INST_0_i_2_n_0 ),
        .O(\ALUResult[19]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hF1FDF9FDE0206020)) 
    \ALUResult[19]_INST_0_i_11 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[11]),
        .I3(ImmSrc[0]),
        .I4(Instr[1]),
        .I5(Instr[17]),
        .O(ImmExt[7]));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[19]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[19]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[1]),
        .I5(\addressM[19] ),
        .O(\ALUResult[19]_INST_0_i_2_n_0 ));
  MUXF7 \ALUResult[1]_INST_0 
       (.I0(\addressM[1]_0 ),
        .I1(\ALUResult[1]_INST_0_i_2_n_0 ),
        .O(\ALUResult[1]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[1]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[0]),
        .I5(\addressM[1] ),
        .O(\ALUResult[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[0]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[0]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[0] ),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[16]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[0]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[16]),
        .O(\readDataM[16]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[17]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[1]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[17]),
        .O(\readDataM[17]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[18]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[2]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[18]),
        .O(\readDataM[18]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[19]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[3]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[19]),
        .O(\readDataM[19]_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[1]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[1]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[1] ),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[20]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[4]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[20]),
        .O(\readDataM[20]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[21]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[5]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[21]),
        .O(\readDataM[21]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[22]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[6]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[22]),
        .O(\readDataM[22]_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFB0000000)) 
    \WriteData[23]_INST_0_i_1 
       (.I0(Instr[4]),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rd21__3),
        .I3(rd20[7]),
        .I4(\ALUResult[1]_INST_0_i_2_0 ),
        .I5(ReadData[23]),
        .O(\readDataM[23]_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[2]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[2]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[2] ),
        .O(WriteData[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \WriteData[31]_INST_0_i_1 
       (.I0(Instr[14]),
        .I1(Instr[12]),
        .I2(Instr[13]),
        .I3(Instr[15]),
        .I4(Instr[16]),
        .O(rd21__3));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[3]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[3]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[3] ),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[4]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[4]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[4] ),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[5]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[5]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[5] ),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[6]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[6]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[6] ),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFAEFFAF51005000)) 
    \WriteData[7]_INST_0 
       (.I0(Instr[5]),
        .I1(Instr[4]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[7]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(\writeDataM[7] ),
        .O(WriteData[7]));
  CARRY4 carried_carry
       (.CI(1'b0),
        .CO({carried_carry_n_0,carried_carry_n_1,carried_carry_n_2,carried_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\ALUResult[0]_INST_0_i_11_0 ,\ALUResult[0]_INST_0_i_11_1 ,\addressM[1] ,\ALUResult[0]_INST_0_i_11_2 }),
        .O(NLW_carried_carry_O_UNCONNECTED[3:0]),
        .S(carried_carry__0_0));
  CARRY4 carried_carry__0
       (.CI(carried_carry_n_0),
        .CO({carried_carry__0_n_0,carried_carry__0_n_1,carried_carry__0_n_2,carried_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[4]_INST_0_i_6 ,\ALUResult[4]_INST_0_i_6_0 ,\ALUResult[4]_INST_0_i_6_1 ,\ALUResult[4]_INST_0_i_6_2 }),
        .O(NLW_carried_carry__0_O_UNCONNECTED[3:0]),
        .S(carried_carry__1_0));
  CARRY4 carried_carry__1
       (.CI(carried_carry__0_n_0),
        .CO({carried_carry__1_n_0,carried_carry__1_n_1,carried_carry__1_n_2,carried_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[8]_INST_0_i_6 ,\ALUResult[8]_INST_0_i_6_0 ,\ALUResult[8]_INST_0_i_6_1 ,\ALUResult[8]_INST_0_i_6_2 }),
        .O(NLW_carried_carry__1_O_UNCONNECTED[3:0]),
        .S(carried_carry__2_0));
  CARRY4 carried_carry__2
       (.CI(carried_carry__1_n_0),
        .CO({carried_carry__2_n_0,carried_carry__2_n_1,carried_carry__2_n_2,carried_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[12]_INST_0_i_6 ,\ALUResult[12]_INST_0_i_6_0 ,\ALUResult[12]_INST_0_i_6_1 ,\ALUResult[12]_INST_0_i_6_2 }),
        .O(NLW_carried_carry__2_O_UNCONNECTED[3:0]),
        .S(carried_carry__3_0));
  CARRY4 carried_carry__3
       (.CI(carried_carry__2_n_0),
        .CO({carried_carry__3_n_0,carried_carry__3_n_1,carried_carry__3_n_2,carried_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\addressM[19] ,\ALUResult[16]_INST_0_i_6 ,\ALUResult[16]_INST_0_i_6_0 ,\ALUResult[16]_INST_0_i_6_1 }),
        .O(NLW_carried_carry__3_O_UNCONNECTED[3:0]),
        .S(carried_carry__4_0));
  CARRY4 carried_carry__4
       (.CI(carried_carry__3_n_0),
        .CO({carried_carry__4_n_0,carried_carry__4_n_1,carried_carry__4_n_2,carried_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[20]_INST_0_i_6 ,\ALUResult[20]_INST_0_i_6_0 ,\ALUResult[20]_INST_0_i_6_1 ,\ALUResult[20]_INST_0_i_6_2 }),
        .O(NLW_carried_carry__4_O_UNCONNECTED[3:0]),
        .S(carried_carry__5_0));
  CARRY4 carried_carry__5
       (.CI(carried_carry__4_n_0),
        .CO({carried_carry__5_n_0,carried_carry__5_n_1,carried_carry__5_n_2,carried_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[24]_INST_0_i_6 ,\ALUResult[24]_INST_0_i_6_0 ,\ALUResult[24]_INST_0_i_6_1 ,\ALUResult[24]_INST_0_i_6_2 }),
        .O(NLW_carried_carry__5_O_UNCONNECTED[3:0]),
        .S(carried_carry__6_0));
  CARRY4 carried_carry__6
       (.CI(carried_carry__5_n_0),
        .CO({CO,carried_carry__6_n_1,carried_carry__6_n_2,carried_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({\q[31]_i_4 ,\ALUResult[28]_INST_0_i_6 ,\ALUResult[28]_INST_0_i_6_0 ,\ALUResult[28]_INST_0_i_6_1 }),
        .O(NLW_carried_carry__6_O_UNCONNECTED[3:0]),
        .S(\q[31]_i_4_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    carried_carry_i_5
       (.I0(Instr[9]),
        .I1(Instr[7]),
        .I2(Instr[8]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .O(rd11__3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[0]_i_1 
       (.I0(PCTarget[0]),
        .I1(Q[0]),
        .I2(BControl__8),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[0]_i_2 
       (.I0(\ALUResult[0]_INST_0_i_5 ),
        .I1(PCTargetI[0]),
        .I2(ALUSrc),
        .O(PCTarget[0]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[19]_i_1 
       (.I0(PCTarget[19]),
        .I1(\q_reg[19] ),
        .I2(BControl__8),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[19]_i_2 
       (.I0(\ALUResult[19]_INST_0_i_2_0 ),
        .I1(PCTargetI[2]),
        .I2(ALUSrc),
        .O(PCTarget[19]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[1]_i_1 
       (.I0(PCTarget[1]),
        .I1(Q[1]),
        .I2(BControl__8),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[1]_i_2 
       (.I0(\ALUResult[1]_INST_0_i_2_0 ),
        .I1(PCTargetI[1]),
        .I2(ALUSrc),
        .O(PCTarget[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_7 
       (.I0(\ALUResult[1]_INST_0_i_2_0 ),
        .I1(\ALUResult[0]_INST_0_i_5 ),
        .I2(rf_reg_r1_0_31_0_5_i_4),
        .I3(rf_reg_r1_0_31_0_5_i_5),
        .O(\ALUResult[2]_INST_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\result0_inferred__6/i__carry_n_0 ,\result0_inferred__6/i__carry_n_1 ,\result0_inferred__6/i__carry_n_2 ,\result0_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\NLW_result0_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S(\result0_inferred__6/i__carry__0_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__0 
       (.CI(\result0_inferred__6/i__carry_n_0 ),
        .CO({\result0_inferred__6/i__carry__0_n_0 ,\result0_inferred__6/i__carry__0_n_1 ,\result0_inferred__6/i__carry__0_n_2 ,\result0_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\result0_inferred__6/i__carry__1_0 ),
        .O(\NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\result0_inferred__6/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__1 
       (.CI(\result0_inferred__6/i__carry__0_n_0 ),
        .CO({\result0_inferred__6/i__carry__1_n_0 ,\result0_inferred__6/i__carry__1_n_1 ,\result0_inferred__6/i__carry__1_n_2 ,\result0_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\result0_inferred__6/i__carry__2_0 ),
        .O(\NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\result0_inferred__6/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__2 
       (.CI(\result0_inferred__6/i__carry__1_n_0 ),
        .CO({data8,\result0_inferred__6/i__carry__2_n_1 ,\result0_inferred__6/i__carry__2_n_2 ,\result0_inferred__6/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\ALUResult[0]_INST_0_i_1_0 ),
        .O(\NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\ALUResult[0]_INST_0_i_1_1 ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(Instr[6]),
        .I1(ReadData[3]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_16_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_0_5_i_4),
        .O(\readDataM[3] ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(Instr[6]),
        .I1(ReadData[2]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_0_5_i_5),
        .O(\readDataM[2] ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(Instr[6]),
        .I1(ReadData[5]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_18_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_0_5_i_6),
        .O(\readDataM[5] ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(Instr[6]),
        .I1(ReadData[4]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_19_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_0_5_i_7),
        .O(\readDataM[4] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(ReadData[17]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[1]),
        .I3(Instr[4]),
        .I4(RDByte[1]),
        .O(rf_reg_r1_0_31_0_5_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_15
       (.I0(ReadData[16]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[0]),
        .I3(Instr[4]),
        .I4(RDByte[0]),
        .O(rf_reg_r1_0_31_0_5_i_15_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_16
       (.I0(ReadData[19]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[3]),
        .I3(Instr[4]),
        .I4(RDByte[3]),
        .O(rf_reg_r1_0_31_0_5_i_16_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_17
       (.I0(ReadData[18]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[2]),
        .I3(Instr[4]),
        .I4(RDByte[2]),
        .O(rf_reg_r1_0_31_0_5_i_17_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_18
       (.I0(ReadData[21]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[5]),
        .I3(Instr[4]),
        .I4(RDByte[5]),
        .O(rf_reg_r1_0_31_0_5_i_18_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_0_5_i_19
       (.I0(ReadData[20]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[4]),
        .I3(Instr[4]),
        .I4(RDByte[4]),
        .O(rf_reg_r1_0_31_0_5_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_20
       (.I0(ReadData[25]),
        .I1(ReadData[17]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[9]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[1]),
        .O(RDByte[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_21
       (.I0(ReadData[24]),
        .I1(ReadData[16]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[8]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[0]),
        .O(RDByte[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_22
       (.I0(ReadData[27]),
        .I1(ReadData[19]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[11]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[3]),
        .O(RDByte[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_23
       (.I0(ReadData[26]),
        .I1(ReadData[18]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[10]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[2]),
        .O(RDByte[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_24
       (.I0(ReadData[29]),
        .I1(ReadData[21]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[13]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[5]),
        .O(RDByte[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_25
       (.I0(ReadData[28]),
        .I1(ReadData[20]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[12]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[4]),
        .O(RDByte[4]));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[6]),
        .I1(ReadData[1]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I4(ResultSrc),
        .I5(\ALUResult[1]_INST_0_i_2_0 ),
        .O(\readDataM[1] ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(Instr[6]),
        .I1(ReadData[0]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_0_5_i_15_n_0),
        .I4(ResultSrc),
        .I5(\ALUResult[0]_INST_0_i_5 ),
        .O(\readDataM[0] ));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(Instr[6]),
        .I1(ReadData[14]),
        .I2(Instr[5]),
        .I3(RDHalf[14]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[6]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[17]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_i_5),
        .O(\readDataM[17] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[16]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_12_17_i_6),
        .O(\readDataM[16] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_13
       (.I0(ReadData[29]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[13]),
        .O(RDHalf[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_14
       (.I0(ReadData[28]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[12]),
        .O(RDHalf[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_15
       (.I0(ReadData[31]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[15]),
        .O(RDHalf[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_12_17_i_16
       (.I0(ReadData[31]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[15]),
        .I3(Instr[4]),
        .I4(RDByte[7]),
        .O(rf_reg_r1_0_31_12_17_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_17
       (.I0(ReadData[30]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[14]),
        .O(RDHalf[14]));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(Instr[6]),
        .I1(ReadData[13]),
        .I2(Instr[5]),
        .I3(RDHalf[13]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[5]));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(Instr[6]),
        .I1(ReadData[12]),
        .I2(Instr[5]),
        .I3(RDHalf[12]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[4]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(Instr[4]),
        .I1(RDHalf[15]),
        .I2(Instr[6]),
        .I3(ReadData[15]),
        .I4(Instr[5]),
        .I5(rf_reg_r1_0_31_12_17_i_16_n_0),
        .O(ReadDataOut[7]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[20]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_18_23_i_4),
        .O(\readDataM[20] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[23]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_18_23_i_5),
        .O(\readDataM[23] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[22]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_18_23_i_6),
        .O(\readDataM[22] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[19]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(\ALUResult[19]_INST_0_i_2_0 ),
        .O(\readDataM[19] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[18]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_18_23_i_2),
        .O(\readDataM[18] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[21]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_18_23_i_3),
        .O(\readDataM[21] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[26]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_4),
        .O(\readDataM[26] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[29]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_5),
        .O(\readDataM[29] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[28]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_6),
        .O(\readDataM[28] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[25]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_1),
        .O(\readDataM[25] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[24]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_2),
        .O(\readDataM[24] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[27]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_24_29_i_3),
        .O(\readDataM[27] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[30]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_30_31_i_1),
        .O(\readDataM[30] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    rf_reg_r1_0_31_30_31_i_2__0
       (.I0(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I1(Instr[5]),
        .I2(ReadData[31]),
        .I3(Instr[6]),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_30_31_i_1__0),
        .O(\readDataM[31] ));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(Instr[6]),
        .I1(ReadData[9]),
        .I2(Instr[5]),
        .I3(RDHalf[9]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[1]));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(Instr[6]),
        .I1(ReadData[8]),
        .I2(Instr[5]),
        .I3(RDHalf[8]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[0]));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_6_11_i_13
       (.I0(Instr[6]),
        .I1(ReadData[11]),
        .I2(Instr[5]),
        .I3(RDHalf[11]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[3]));
  LUT6 #(
    .INIT(64'hEF404545EF404040)) 
    rf_reg_r1_0_31_6_11_i_14
       (.I0(Instr[6]),
        .I1(ReadData[10]),
        .I2(Instr[5]),
        .I3(RDHalf[10]),
        .I4(Instr[4]),
        .I5(RDByte[7]),
        .O(ReadDataOut[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_6_11_i_15
       (.I0(ReadData[23]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[7]),
        .I3(Instr[4]),
        .I4(RDByte[7]),
        .O(rf_reg_r1_0_31_6_11_i_15_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_6_11_i_16
       (.I0(ReadData[22]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[6]),
        .I3(Instr[4]),
        .I4(RDByte[6]),
        .O(rf_reg_r1_0_31_6_11_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_17
       (.I0(ReadData[25]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[9]),
        .O(RDHalf[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_18
       (.I0(ReadData[31]),
        .I1(ReadData[23]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[15]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[7]),
        .O(RDByte[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_19
       (.I0(ReadData[24]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[8]),
        .O(RDHalf[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_20
       (.I0(ReadData[27]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[11]),
        .O(RDHalf[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_21
       (.I0(ReadData[26]),
        .I1(\ALUResult[1]_INST_0_i_2_0 ),
        .I2(ReadData[10]),
        .O(RDHalf[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_22
       (.I0(ReadData[30]),
        .I1(ReadData[22]),
        .I2(\ALUResult[1]_INST_0_i_2_0 ),
        .I3(ReadData[14]),
        .I4(\ALUResult[0]_INST_0_i_5 ),
        .I5(ReadData[6]),
        .O(RDByte[6]));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(Instr[6]),
        .I1(ReadData[7]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_6_11_i_15_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_i_1),
        .O(\readDataM[7] ));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(Instr[6]),
        .I1(ReadData[6]),
        .I2(Instr[5]),
        .I3(rf_reg_r1_0_31_6_11_i_16_n_0),
        .I4(ResultSrc),
        .I5(rf_reg_r1_0_31_6_11_i_2),
        .O(\readDataM[6] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry
       (.CI(1'b0),
        .CO({sum__0_carry_n_0,sum__0_carry_n_1,sum__0_carry_n_2,sum__0_carry_n_3}),
        .CYINIT(\ALUResult[0]_INST_0_i_11 ),
        .DI({\ALUResult[0]_INST_0_i_11_0 ,\ALUResult[0]_INST_0_i_11_1 ,\addressM[1] ,\ALUResult[0]_INST_0_i_11_2 }),
        .O(sum[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__0
       (.CI(sum__0_carry_n_0),
        .CO({sum__0_carry__0_n_0,sum__0_carry__0_n_1,sum__0_carry__0_n_2,sum__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[4]_INST_0_i_6 ,\ALUResult[4]_INST_0_i_6_0 ,\ALUResult[4]_INST_0_i_6_1 ,\ALUResult[4]_INST_0_i_6_2 }),
        .O(sum[7:4]),
        .S(\ALUResult[4]_INST_0_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__1
       (.CI(sum__0_carry__0_n_0),
        .CO({sum__0_carry__1_n_0,sum__0_carry__1_n_1,sum__0_carry__1_n_2,sum__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[8]_INST_0_i_6 ,\ALUResult[8]_INST_0_i_6_0 ,\ALUResult[8]_INST_0_i_6_1 ,\ALUResult[8]_INST_0_i_6_2 }),
        .O(sum[11:8]),
        .S(\ALUResult[8]_INST_0_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__2
       (.CI(sum__0_carry__1_n_0),
        .CO({sum__0_carry__2_n_0,sum__0_carry__2_n_1,sum__0_carry__2_n_2,sum__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[12]_INST_0_i_6 ,\ALUResult[12]_INST_0_i_6_0 ,\ALUResult[12]_INST_0_i_6_1 ,\ALUResult[12]_INST_0_i_6_2 }),
        .O(sum[15:12]),
        .S(\ALUResult[12]_INST_0_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__3
       (.CI(sum__0_carry__2_n_0),
        .CO({sum__0_carry__3_n_0,sum__0_carry__3_n_1,sum__0_carry__3_n_2,sum__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\addressM[19] ,\ALUResult[16]_INST_0_i_6 ,\ALUResult[16]_INST_0_i_6_0 ,\ALUResult[16]_INST_0_i_6_1 }),
        .O(sum[19:16]),
        .S(\ALUResult[16]_INST_0_i_6_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__4
       (.CI(sum__0_carry__3_n_0),
        .CO({sum__0_carry__4_n_0,sum__0_carry__4_n_1,sum__0_carry__4_n_2,sum__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[20]_INST_0_i_6 ,\ALUResult[20]_INST_0_i_6_0 ,\ALUResult[20]_INST_0_i_6_1 ,\ALUResult[20]_INST_0_i_6_2 }),
        .O(sum[23:20]),
        .S(\ALUResult[20]_INST_0_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__5
       (.CI(sum__0_carry__4_n_0),
        .CO({sum__0_carry__5_n_0,sum__0_carry__5_n_1,sum__0_carry__5_n_2,sum__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\ALUResult[24]_INST_0_i_6 ,\ALUResult[24]_INST_0_i_6_0 ,\ALUResult[24]_INST_0_i_6_1 ,\ALUResult[24]_INST_0_i_6_2 }),
        .O(sum[27:24]),
        .S(\ALUResult[24]_INST_0_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__6
       (.CI(sum__0_carry__5_n_0),
        .CO({NLW_sum__0_carry__6_CO_UNCONNECTED[3],sum__0_carry__6_n_1,sum__0_carry__6_n_2,sum__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\ALUResult[28]_INST_0_i_6 ,\ALUResult[28]_INST_0_i_6_0 ,\ALUResult[28]_INST_0_i_6_1 }),
        .O({O,sum[30:28]}),
        .S(\ALUResult[28]_INST_0_i_6_2 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    y_carry__1_i_5
       (.I0(Instr[17]),
        .I1(ImmSrc[1]),
        .I2(Instr[3]),
        .I3(ImmSrc[0]),
        .I4(Instr[12]),
        .I5(y_carry_i_5_1),
        .O(y_carry_i_5_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    y_carry_i_5
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .O(y_carry_i_5_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (Q,
    \ALUResult[0]_INST_0_i_5 ,
    \ALUResult[1]_INST_0_i_2 ,
    \ALUResult[2]_INST_0_i_2 ,
    \ALUResult[3]_INST_0_i_2 ,
    \ALUResult[4]_INST_0_i_2 ,
    \ALUResult[5]_INST_0_i_2 ,
    \ALUResult[6]_INST_0_i_2 ,
    \ALUResult[13]_INST_0_i_2 ,
    \ALUResult[12]_INST_0_i_2 ,
    \ALUResult[30]_INST_0_i_2 ,
    \ALUResult[31]_INST_0_i_3 ,
    \ALUResult[22]_INST_0_i_2 ,
    \ALUResult[23]_INST_0_i_2 ,
    \ALUResult[20]_INST_0_i_2 ,
    \ALUResult[21]_INST_0_i_2 ,
    \ALUResult[18]_INST_0_i_2 ,
    \ALUResult[19]_INST_0_i_2 ,
    \ALUResult[28]_INST_0_i_2 ,
    \ALUResult[29]_INST_0_i_2 ,
    \ALUResult[26]_INST_0_i_2 ,
    \ALUResult[27]_INST_0_i_2 ,
    \ALUResult[24]_INST_0_i_2 ,
    \ALUResult[25]_INST_0_i_2 ,
    \ALUResult[16]_INST_0_i_2 ,
    \ALUResult[17]_INST_0_i_2 ,
    \ALUResult[15]_INST_0_i_2 ,
    \ALUResult[14]_INST_0_i_2 ,
    \ALUResult[7]_INST_0_i_2 ,
    \ALUResult[9]_INST_0_i_2 ,
    \ALUResult[8]_INST_0_i_2 ,
    \ALUResult[11]_INST_0_i_2 ,
    \ALUResult[10]_INST_0_i_2 ,
    WriteData,
    clk,
    Instr,
    ReadData,
    PCReady,
    reset);
  output [31:0]Q;
  output \ALUResult[0]_INST_0_i_5 ;
  output \ALUResult[1]_INST_0_i_2 ;
  output \ALUResult[2]_INST_0_i_2 ;
  output \ALUResult[3]_INST_0_i_2 ;
  output \ALUResult[4]_INST_0_i_2 ;
  output \ALUResult[5]_INST_0_i_2 ;
  output \ALUResult[6]_INST_0_i_2 ;
  output \ALUResult[13]_INST_0_i_2 ;
  output \ALUResult[12]_INST_0_i_2 ;
  output \ALUResult[30]_INST_0_i_2 ;
  output \ALUResult[31]_INST_0_i_3 ;
  output \ALUResult[22]_INST_0_i_2 ;
  output \ALUResult[23]_INST_0_i_2 ;
  output \ALUResult[20]_INST_0_i_2 ;
  output \ALUResult[21]_INST_0_i_2 ;
  output \ALUResult[18]_INST_0_i_2 ;
  output \ALUResult[19]_INST_0_i_2 ;
  output \ALUResult[28]_INST_0_i_2 ;
  output \ALUResult[29]_INST_0_i_2 ;
  output \ALUResult[26]_INST_0_i_2 ;
  output \ALUResult[27]_INST_0_i_2 ;
  output \ALUResult[24]_INST_0_i_2 ;
  output \ALUResult[25]_INST_0_i_2 ;
  output \ALUResult[16]_INST_0_i_2 ;
  output \ALUResult[17]_INST_0_i_2 ;
  output \ALUResult[15]_INST_0_i_2 ;
  output \ALUResult[14]_INST_0_i_2 ;
  output \ALUResult[7]_INST_0_i_2 ;
  output \ALUResult[9]_INST_0_i_2 ;
  output \ALUResult[8]_INST_0_i_2 ;
  output \ALUResult[11]_INST_0_i_2 ;
  output \ALUResult[10]_INST_0_i_2 ;
  output [31:0]WriteData;
  input clk;
  input [29:0]Instr;
  input [31:0]ReadData;
  input PCReady;
  input reset;

  wire [0:0]ALUControl;
  wire [3:1]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_5 ;
  wire \ALUResult[10]_INST_0_i_2 ;
  wire \ALUResult[11]_INST_0_i_2 ;
  wire \ALUResult[12]_INST_0_i_2 ;
  wire \ALUResult[13]_INST_0_i_2 ;
  wire \ALUResult[14]_INST_0_i_2 ;
  wire \ALUResult[15]_INST_0_i_2 ;
  wire \ALUResult[16]_INST_0_i_2 ;
  wire \ALUResult[17]_INST_0_i_2 ;
  wire \ALUResult[18]_INST_0_i_2 ;
  wire \ALUResult[19]_INST_0_i_2 ;
  wire \ALUResult[1]_INST_0_i_2 ;
  wire \ALUResult[20]_INST_0_i_2 ;
  wire \ALUResult[21]_INST_0_i_2 ;
  wire \ALUResult[22]_INST_0_i_2 ;
  wire \ALUResult[23]_INST_0_i_2 ;
  wire \ALUResult[24]_INST_0_i_2 ;
  wire \ALUResult[25]_INST_0_i_2 ;
  wire \ALUResult[26]_INST_0_i_2 ;
  wire \ALUResult[27]_INST_0_i_2 ;
  wire \ALUResult[28]_INST_0_i_2 ;
  wire \ALUResult[29]_INST_0_i_2 ;
  wire \ALUResult[2]_INST_0_i_2 ;
  wire \ALUResult[30]_INST_0_i_2 ;
  wire \ALUResult[31]_INST_0_i_3 ;
  wire \ALUResult[3]_INST_0_i_2 ;
  wire \ALUResult[4]_INST_0_i_2 ;
  wire \ALUResult[5]_INST_0_i_2 ;
  wire \ALUResult[6]_INST_0_i_2 ;
  wire \ALUResult[7]_INST_0_i_2 ;
  wire \ALUResult[8]_INST_0_i_2 ;
  wire \ALUResult[9]_INST_0_i_2 ;
  wire ALUSrc;
  wire [19:12]ImmExt;
  wire [1:0]ImmSrc;
  wire [29:0]Instr;
  wire Negative;
  wire [31:0]PCNext;
  wire [31:3]PCPlus4;
  wire PCReady;
  wire [31:0]PCTargetI;
  wire [31:0]Q;
  wire [31:0]ReadData;
  wire [15:8]ReadDataOut;
  wire [31:0]Result;
  wire [0:0]ResultSrc;
  wire [19:1]SrcB;
  wire [31:0]WriteData;
  wire alu_n_32;
  wire alu_n_33;
  wire alu_n_36;
  wire alu_n_37;
  wire alu_n_38;
  wire alu_n_39;
  wire alu_n_40;
  wire alu_n_41;
  wire alu_n_50;
  wire alu_n_51;
  wire alu_n_52;
  wire alu_n_53;
  wire alu_n_54;
  wire alu_n_55;
  wire alu_n_56;
  wire alu_n_57;
  wire alu_n_59;
  wire alu_n_60;
  wire alu_n_61;
  wire alu_n_62;
  wire alu_n_63;
  wire alu_n_64;
  wire alu_n_65;
  wire alu_n_66;
  wire alu_n_67;
  wire alu_n_76;
  wire alu_n_78;
  wire alu_n_79;
  wire alu_n_80;
  wire alu_n_81;
  wire alu_n_82;
  wire alu_n_83;
  wire alu_n_84;
  wire alu_n_88;
  wire alu_n_98;
  wire alu_n_99;
  wire \c/BControl__8 ;
  wire clk;
  wire d30_carry__0_n_0;
  wire d30_carry__0_n_1;
  wire d30_carry__0_n_2;
  wire d30_carry__0_n_3;
  wire d30_carry__0_n_4;
  wire d30_carry__0_n_5;
  wire d30_carry__0_n_6;
  wire d30_carry__0_n_7;
  wire d30_carry__1_n_0;
  wire d30_carry__1_n_1;
  wire d30_carry__1_n_2;
  wire d30_carry__1_n_3;
  wire d30_carry__1_n_4;
  wire d30_carry__1_n_5;
  wire d30_carry__1_n_6;
  wire d30_carry__1_n_7;
  wire d30_carry__2_n_0;
  wire d30_carry__2_n_1;
  wire d30_carry__2_n_2;
  wire d30_carry__2_n_3;
  wire d30_carry__2_n_4;
  wire d30_carry__2_n_5;
  wire d30_carry__2_n_6;
  wire d30_carry__2_n_7;
  wire d30_carry__3_n_0;
  wire d30_carry__3_n_1;
  wire d30_carry__3_n_2;
  wire d30_carry__3_n_3;
  wire d30_carry__3_n_4;
  wire d30_carry__3_n_5;
  wire d30_carry__3_n_6;
  wire d30_carry__3_n_7;
  wire d30_carry__4_n_0;
  wire d30_carry__4_n_1;
  wire d30_carry__4_n_2;
  wire d30_carry__4_n_3;
  wire d30_carry__4_n_4;
  wire d30_carry__4_n_5;
  wire d30_carry__4_n_6;
  wire d30_carry__4_n_7;
  wire d30_carry__5_n_0;
  wire d30_carry__5_n_1;
  wire d30_carry__5_n_2;
  wire d30_carry__5_n_3;
  wire d30_carry__5_n_4;
  wire d30_carry__5_n_5;
  wire d30_carry__5_n_6;
  wire d30_carry__5_n_7;
  wire d30_carry__6_n_1;
  wire d30_carry__6_n_2;
  wire d30_carry__6_n_3;
  wire d30_carry__6_n_4;
  wire d30_carry__6_n_5;
  wire d30_carry__6_n_6;
  wire d30_carry__6_n_7;
  wire d30_carry_n_0;
  wire d30_carry_n_1;
  wire d30_carry_n_2;
  wire d30_carry_n_3;
  wire d30_carry_n_4;
  wire d30_carry_n_5;
  wire d30_carry_n_6;
  wire d30_carry_n_7;
  wire pcreg_n_100;
  wire pcreg_n_101;
  wire pcreg_n_102;
  wire pcreg_n_103;
  wire pcreg_n_104;
  wire pcreg_n_105;
  wire pcreg_n_106;
  wire pcreg_n_107;
  wire pcreg_n_108;
  wire pcreg_n_109;
  wire pcreg_n_110;
  wire pcreg_n_111;
  wire pcreg_n_112;
  wire pcreg_n_113;
  wire pcreg_n_114;
  wire pcreg_n_115;
  wire pcreg_n_116;
  wire pcreg_n_39;
  wire pcreg_n_40;
  wire pcreg_n_41;
  wire pcreg_n_42;
  wire pcreg_n_43;
  wire pcreg_n_44;
  wire pcreg_n_45;
  wire pcreg_n_46;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_50;
  wire pcreg_n_51;
  wire pcreg_n_52;
  wire pcreg_n_58;
  wire pcreg_n_59;
  wire pcreg_n_60;
  wire pcreg_n_61;
  wire pcreg_n_62;
  wire pcreg_n_63;
  wire pcreg_n_64;
  wire pcreg_n_65;
  wire pcreg_n_66;
  wire pcreg_n_67;
  wire pcreg_n_68;
  wire pcreg_n_69;
  wire pcreg_n_70;
  wire pcreg_n_71;
  wire pcreg_n_72;
  wire pcreg_n_73;
  wire pcreg_n_74;
  wire pcreg_n_75;
  wire pcreg_n_76;
  wire pcreg_n_77;
  wire pcreg_n_78;
  wire pcreg_n_79;
  wire pcreg_n_80;
  wire pcreg_n_81;
  wire pcreg_n_82;
  wire pcreg_n_83;
  wire pcreg_n_84;
  wire pcreg_n_85;
  wire pcreg_n_86;
  wire pcreg_n_87;
  wire pcreg_n_88;
  wire pcreg_n_89;
  wire pcreg_n_90;
  wire pcreg_n_91;
  wire pcreg_n_92;
  wire pcreg_n_93;
  wire pcreg_n_94;
  wire pcreg_n_95;
  wire pcreg_n_96;
  wire pcreg_n_97;
  wire pcreg_n_98;
  wire pcreg_n_99;
  wire rd11__3;
  wire [7:0]rd20;
  wire rd21__3;
  wire reset;
  wire rf_n_10;
  wire rf_n_109;
  wire rf_n_11;
  wire rf_n_110;
  wire rf_n_111;
  wire rf_n_112;
  wire rf_n_113;
  wire rf_n_114;
  wire rf_n_115;
  wire rf_n_12;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_13;
  wire rf_n_134;
  wire rf_n_135;
  wire rf_n_136;
  wire rf_n_137;
  wire rf_n_138;
  wire rf_n_139;
  wire rf_n_14;
  wire rf_n_140;
  wire rf_n_141;
  wire rf_n_142;
  wire rf_n_143;
  wire rf_n_144;
  wire rf_n_145;
  wire rf_n_146;
  wire rf_n_147;
  wire rf_n_148;
  wire rf_n_149;
  wire rf_n_15;
  wire rf_n_150;
  wire rf_n_151;
  wire rf_n_152;
  wire rf_n_153;
  wire rf_n_154;
  wire rf_n_155;
  wire rf_n_156;
  wire rf_n_16;
  wire rf_n_172;
  wire rf_n_173;
  wire rf_n_175;
  wire rf_n_176;
  wire rf_n_177;
  wire rf_n_178;
  wire rf_n_179;
  wire rf_n_180;
  wire rf_n_181;
  wire rf_n_182;
  wire rf_n_183;
  wire rf_n_184;
  wire rf_n_185;
  wire rf_n_186;
  wire rf_n_187;
  wire rf_n_188;
  wire rf_n_189;
  wire rf_n_19;
  wire rf_n_190;
  wire rf_n_191;
  wire rf_n_192;
  wire rf_n_193;
  wire rf_n_194;
  wire rf_n_195;
  wire rf_n_196;
  wire rf_n_197;
  wire rf_n_198;
  wire rf_n_199;
  wire rf_n_20;
  wire rf_n_200;
  wire rf_n_201;
  wire rf_n_202;
  wire rf_n_203;
  wire rf_n_204;
  wire rf_n_205;
  wire rf_n_206;
  wire rf_n_207;
  wire rf_n_208;
  wire rf_n_209;
  wire rf_n_21;
  wire rf_n_210;
  wire rf_n_211;
  wire rf_n_212;
  wire rf_n_213;
  wire rf_n_214;
  wire rf_n_215;
  wire rf_n_216;
  wire rf_n_217;
  wire rf_n_218;
  wire rf_n_219;
  wire rf_n_22;
  wire rf_n_220;
  wire rf_n_221;
  wire rf_n_222;
  wire rf_n_223;
  wire rf_n_224;
  wire rf_n_225;
  wire rf_n_226;
  wire rf_n_227;
  wire rf_n_228;
  wire rf_n_229;
  wire rf_n_23;
  wire rf_n_230;
  wire rf_n_231;
  wire rf_n_232;
  wire rf_n_233;
  wire rf_n_234;
  wire rf_n_235;
  wire rf_n_236;
  wire rf_n_24;
  wire rf_n_25;
  wire rf_n_26;
  wire rf_n_27;
  wire rf_n_28;
  wire rf_n_29;
  wire rf_n_30;
  wire rf_n_31;
  wire rf_n_32;
  wire rf_n_33;
  wire rf_n_34;
  wire rf_n_35;
  wire rf_n_36;
  wire rf_n_37;
  wire rf_n_38;
  wire rf_n_39;
  wire rf_n_40;
  wire rf_n_41;
  wire rf_n_42;
  wire rf_n_43;
  wire rf_n_44;
  wire rf_n_45;
  wire rf_n_46;
  wire rf_n_71;
  wire rf_n_72;
  wire rf_n_73;
  wire rf_n_74;
  wire rf_n_75;
  wire rf_n_76;
  wire rf_n_77;
  wire rf_n_78;
  wire rf_n_8;
  wire rf_n_9;
  wire [30:0]sum;
  wire [3:3]NLW_d30_carry__6_CO_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu alu
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .\ALUResult[0]_INST_0_i_11 (rf_n_235),
        .\ALUResult[0]_INST_0_i_11_0 (rf_n_137),
        .\ALUResult[0]_INST_0_i_11_1 (rf_n_144),
        .\ALUResult[0]_INST_0_i_11_2 (rf_n_156),
        .\ALUResult[0]_INST_0_i_1_0 ({rf_n_39,rf_n_40,rf_n_41,rf_n_42}),
        .\ALUResult[0]_INST_0_i_1_1 ({rf_n_43,rf_n_44,rf_n_45,rf_n_46}),
        .\ALUResult[0]_INST_0_i_5 (\ALUResult[0]_INST_0_i_5 ),
        .\ALUResult[12]_INST_0_i_6 (rf_n_138),
        .\ALUResult[12]_INST_0_i_6_0 (rf_n_146),
        .\ALUResult[12]_INST_0_i_6_1 (rf_n_127),
        .\ALUResult[12]_INST_0_i_6_2 (rf_n_150),
        .\ALUResult[12]_INST_0_i_6_3 ({rf_n_187,rf_n_188,rf_n_189,rf_n_190}),
        .\ALUResult[16]_INST_0_i_6 (rf_n_143),
        .\ALUResult[16]_INST_0_i_6_0 (rf_n_114),
        .\ALUResult[16]_INST_0_i_6_1 (rf_n_153),
        .\ALUResult[16]_INST_0_i_6_2 ({rf_n_191,rf_n_192,rf_n_193,rf_n_194}),
        .\ALUResult[19]_INST_0_i_2_0 (\ALUResult[19]_INST_0_i_2 ),
        .\ALUResult[1]_INST_0_i_2_0 (\ALUResult[1]_INST_0_i_2 ),
        .\ALUResult[20]_INST_0_i_6 (rf_n_139),
        .\ALUResult[20]_INST_0_i_6_0 (rf_n_147),
        .\ALUResult[20]_INST_0_i_6_1 (rf_n_128),
        .\ALUResult[20]_INST_0_i_6_2 (rf_n_151),
        .\ALUResult[20]_INST_0_i_6_3 ({rf_n_195,rf_n_196,rf_n_197,rf_n_198}),
        .\ALUResult[24]_INST_0_i_6 (rf_n_134),
        .\ALUResult[24]_INST_0_i_6_0 (rf_n_141),
        .\ALUResult[24]_INST_0_i_6_1 (rf_n_112),
        .\ALUResult[24]_INST_0_i_6_2 (rf_n_154),
        .\ALUResult[24]_INST_0_i_6_3 ({rf_n_199,rf_n_200,rf_n_201,rf_n_202}),
        .\ALUResult[28]_INST_0_i_6 (rf_n_145),
        .\ALUResult[28]_INST_0_i_6_0 (rf_n_126),
        .\ALUResult[28]_INST_0_i_6_1 (rf_n_149),
        .\ALUResult[28]_INST_0_i_6_2 ({rf_n_8,rf_n_9,rf_n_10,rf_n_11}),
        .\ALUResult[2]_INST_0 (alu_n_88),
        .\ALUResult[4]_INST_0_i_6 (rf_n_140),
        .\ALUResult[4]_INST_0_i_6_0 (rf_n_148),
        .\ALUResult[4]_INST_0_i_6_1 (rf_n_129),
        .\ALUResult[4]_INST_0_i_6_2 (rf_n_152),
        .\ALUResult[4]_INST_0_i_6_3 ({rf_n_179,rf_n_180,rf_n_181,rf_n_182}),
        .\ALUResult[8]_INST_0_i_6 (rf_n_135),
        .\ALUResult[8]_INST_0_i_6_0 (rf_n_142),
        .\ALUResult[8]_INST_0_i_6_1 (rf_n_113),
        .\ALUResult[8]_INST_0_i_6_2 (rf_n_155),
        .\ALUResult[8]_INST_0_i_6_3 ({rf_n_183,rf_n_184,rf_n_185,rf_n_186}),
        .ALUSrc(ALUSrc),
        .BControl__8(\c/BControl__8 ),
        .CO(alu_n_32),
        .D({PCNext[19],PCNext[1:0]}),
        .DI({rf_n_13,rf_n_14,rf_n_15,rf_n_16}),
        .ImmExt(ImmExt),
        .ImmSrc(ImmSrc),
        .Instr({Instr[29],Instr[22:10],Instr[5:4],Instr[1:0]}),
        .O(Negative),
        .PCTargetI({PCTargetI[19],PCTargetI[1:0]}),
        .Q(Q[1:0]),
        .ReadData(ReadData),
        .ReadDataOut(ReadDataOut),
        .ResultSrc(ResultSrc),
        .S({rf_n_175,rf_n_176,rf_n_177,rf_n_178}),
        .SrcB({SrcB[19],SrcB[1]}),
        .WriteData(WriteData[7:0]),
        .\addressM[0] (rf_n_173),
        .\addressM[0]_0 (rf_n_110),
        .\addressM[0]_1 (rf_n_111),
        .\addressM[19] (rf_n_136),
        .\addressM[19]_0 (rf_n_172),
        .\addressM[1] (rf_n_115),
        .\addressM[1]_0 (rf_n_109),
        .carried_carry__0_0({rf_n_231,rf_n_232,rf_n_233,rf_n_234}),
        .carried_carry__1_0({rf_n_227,rf_n_228,rf_n_229,rf_n_230}),
        .carried_carry__2_0({rf_n_223,rf_n_224,rf_n_225,rf_n_226}),
        .carried_carry__3_0({rf_n_219,rf_n_220,rf_n_221,rf_n_222}),
        .carried_carry__4_0({rf_n_215,rf_n_216,rf_n_217,rf_n_218}),
        .carried_carry__5_0({rf_n_211,rf_n_212,rf_n_213,rf_n_214}),
        .carried_carry__6_0({rf_n_207,rf_n_208,rf_n_209,rf_n_210}),
        .\q[31]_i_4 (rf_n_12),
        .\q[31]_i_4_0 ({rf_n_203,rf_n_204,rf_n_205,rf_n_206}),
        .\q_reg[19] (PCPlus4[19]),
        .rd11__3(rd11__3),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .\readDataM[0] (alu_n_33),
        .\readDataM[16] (alu_n_65),
        .\readDataM[16]_0 (alu_n_76),
        .\readDataM[17] (alu_n_66),
        .\readDataM[17]_0 (alu_n_78),
        .\readDataM[18] (alu_n_56),
        .\readDataM[18]_0 (alu_n_79),
        .\readDataM[19] (alu_n_57),
        .\readDataM[19]_0 (alu_n_80),
        .\readDataM[1] (alu_n_36),
        .\readDataM[20] (alu_n_54),
        .\readDataM[20]_0 (alu_n_81),
        .\readDataM[21] (alu_n_55),
        .\readDataM[21]_0 (alu_n_82),
        .\readDataM[22] (alu_n_52),
        .\readDataM[22]_0 (alu_n_83),
        .\readDataM[23] (alu_n_53),
        .\readDataM[23]_0 (alu_n_84),
        .\readDataM[24] (alu_n_63),
        .\readDataM[25] (alu_n_64),
        .\readDataM[26] (alu_n_61),
        .\readDataM[27] (alu_n_62),
        .\readDataM[28] (alu_n_59),
        .\readDataM[29] (alu_n_60),
        .\readDataM[2] (alu_n_37),
        .\readDataM[30] (alu_n_50),
        .\readDataM[31] (alu_n_51),
        .\readDataM[3] (alu_n_38),
        .\readDataM[4] (alu_n_39),
        .\readDataM[5] (alu_n_40),
        .\readDataM[6] (alu_n_41),
        .\readDataM[7] (alu_n_67),
        .\result0_inferred__6/i__carry__0_0 ({rf_n_19,rf_n_20,rf_n_21,rf_n_22}),
        .\result0_inferred__6/i__carry__1_0 ({rf_n_23,rf_n_24,rf_n_25,rf_n_26}),
        .\result0_inferred__6/i__carry__1_1 ({rf_n_27,rf_n_28,rf_n_29,rf_n_30}),
        .\result0_inferred__6/i__carry__2_0 ({rf_n_31,rf_n_32,rf_n_33,rf_n_34}),
        .\result0_inferred__6/i__carry__2_1 ({rf_n_35,rf_n_36,rf_n_37,rf_n_38}),
        .rf_reg_r1_0_31_0_5_i_4(\ALUResult[3]_INST_0_i_2 ),
        .rf_reg_r1_0_31_0_5_i_5(\ALUResult[2]_INST_0_i_2 ),
        .rf_reg_r1_0_31_0_5_i_6(\ALUResult[5]_INST_0_i_2 ),
        .rf_reg_r1_0_31_0_5_i_7(\ALUResult[4]_INST_0_i_2 ),
        .rf_reg_r1_0_31_12_17_i_5(\ALUResult[17]_INST_0_i_2 ),
        .rf_reg_r1_0_31_12_17_i_6(\ALUResult[16]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23_i_2(\ALUResult[18]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23_i_3(\ALUResult[21]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23_i_4(\ALUResult[20]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23_i_5(\ALUResult[23]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23_i_6(\ALUResult[22]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_1(\ALUResult[25]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_2(\ALUResult[24]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_3(\ALUResult[27]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_4(\ALUResult[26]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_5(\ALUResult[29]_INST_0_i_2 ),
        .rf_reg_r1_0_31_24_29_i_6(\ALUResult[28]_INST_0_i_2 ),
        .rf_reg_r1_0_31_30_31_i_1(\ALUResult[30]_INST_0_i_2 ),
        .rf_reg_r1_0_31_30_31_i_1__0(\ALUResult[31]_INST_0_i_3 ),
        .rf_reg_r1_0_31_6_11_i_1(\ALUResult[7]_INST_0_i_2 ),
        .rf_reg_r1_0_31_6_11_i_2(\ALUResult[6]_INST_0_i_2 ),
        .sum(sum),
        .\writeDataM[0] (rf_n_71),
        .\writeDataM[1] (rf_n_72),
        .\writeDataM[2] (rf_n_73),
        .\writeDataM[3] (rf_n_74),
        .\writeDataM[4] (rf_n_75),
        .\writeDataM[5] (rf_n_76),
        .\writeDataM[6] (rf_n_77),
        .\writeDataM[7] (rf_n_78),
        .y_carry_i_5_0(alu_n_98),
        .y_carry_i_5_1(alu_n_99));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry
       (.CI(1'b0),
        .CO({d30_carry_n_0,d30_carry_n_1,d30_carry_n_2,d30_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({d30_carry_n_4,d30_carry_n_5,d30_carry_n_6,d30_carry_n_7}),
        .S({pcreg_n_87,pcreg_n_88,pcreg_n_89,pcreg_n_90}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__0
       (.CI(d30_carry_n_0),
        .CO({d30_carry__0_n_0,d30_carry__0_n_1,d30_carry__0_n_2,d30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({d30_carry__0_n_4,d30_carry__0_n_5,d30_carry__0_n_6,d30_carry__0_n_7}),
        .S({pcreg_n_91,pcreg_n_92,pcreg_n_93,pcreg_n_94}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__1
       (.CI(d30_carry__0_n_0),
        .CO({d30_carry__1_n_0,d30_carry__1_n_1,d30_carry__1_n_2,d30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({d30_carry__1_n_4,d30_carry__1_n_5,d30_carry__1_n_6,d30_carry__1_n_7}),
        .S({pcreg_n_95,pcreg_n_96,pcreg_n_97,pcreg_n_98}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__2
       (.CI(d30_carry__1_n_0),
        .CO({d30_carry__2_n_0,d30_carry__2_n_1,d30_carry__2_n_2,d30_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O({d30_carry__2_n_4,d30_carry__2_n_5,d30_carry__2_n_6,d30_carry__2_n_7}),
        .S({pcreg_n_99,pcreg_n_100,pcreg_n_101,pcreg_n_102}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__3
       (.CI(d30_carry__2_n_0),
        .CO({d30_carry__3_n_0,d30_carry__3_n_1,d30_carry__3_n_2,d30_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O({d30_carry__3_n_4,d30_carry__3_n_5,d30_carry__3_n_6,d30_carry__3_n_7}),
        .S({pcreg_n_103,pcreg_n_104,pcreg_n_105,pcreg_n_106}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__4
       (.CI(d30_carry__3_n_0),
        .CO({d30_carry__4_n_0,d30_carry__4_n_1,d30_carry__4_n_2,d30_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O({d30_carry__4_n_4,d30_carry__4_n_5,d30_carry__4_n_6,d30_carry__4_n_7}),
        .S({pcreg_n_107,pcreg_n_108,pcreg_n_109,pcreg_n_110}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__5
       (.CI(d30_carry__4_n_0),
        .CO({d30_carry__5_n_0,d30_carry__5_n_1,d30_carry__5_n_2,d30_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O({d30_carry__5_n_4,d30_carry__5_n_5,d30_carry__5_n_6,d30_carry__5_n_7}),
        .S({pcreg_n_111,pcreg_n_112,pcreg_n_113,pcreg_n_114}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d30_carry__6
       (.CI(d30_carry__5_n_0),
        .CO({NLW_d30_carry__6_CO_UNCONNECTED[3],d30_carry__6_n_1,d30_carry__6_n_2,d30_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O({d30_carry__6_n_4,d30_carry__6_n_5,d30_carry__6_n_6,d30_carry__6_n_7}),
        .S({pcreg_n_43,pcreg_n_44,pcreg_n_45,pcreg_n_46}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder pcadd4
       (.Instr({Instr[3:2],Instr[0]}),
        .O(d30_carry_n_4),
        .PCPlus4(PCPlus4),
        .Q(Q[31:2]),
        .ReadDataOut(ReadDataOut),
        .ResultSrc(ResultSrc),
        .rf_reg_r1_0_31_0_5(alu_n_38),
        .rf_reg_r1_0_31_0_5_0(alu_n_39),
        .rf_reg_r1_0_31_0_5_1(alu_n_40),
        .rf_reg_r1_0_31_12_17({d30_carry__2_n_4,d30_carry__2_n_5,d30_carry__2_n_6,d30_carry__2_n_7}),
        .rf_reg_r1_0_31_12_17_0(\ALUResult[13]_INST_0_i_2 ),
        .rf_reg_r1_0_31_12_17_1(\ALUResult[12]_INST_0_i_2 ),
        .rf_reg_r1_0_31_12_17_2(alu_n_65),
        .rf_reg_r1_0_31_12_17_3(alu_n_66),
        .rf_reg_r1_0_31_12_17_4(\ALUResult[15]_INST_0_i_2 ),
        .rf_reg_r1_0_31_12_17_5(\ALUResult[14]_INST_0_i_2 ),
        .rf_reg_r1_0_31_18_23({d30_carry__4_n_4,d30_carry__4_n_5,d30_carry__4_n_6,d30_carry__4_n_7}),
        .rf_reg_r1_0_31_18_23_0(alu_n_52),
        .rf_reg_r1_0_31_18_23_1(alu_n_53),
        .rf_reg_r1_0_31_18_23_2(alu_n_54),
        .rf_reg_r1_0_31_18_23_3(alu_n_55),
        .rf_reg_r1_0_31_18_23_4({d30_carry__3_n_4,d30_carry__3_n_5,d30_carry__3_n_6,d30_carry__3_n_7}),
        .rf_reg_r1_0_31_18_23_5(alu_n_56),
        .rf_reg_r1_0_31_18_23_6(alu_n_57),
        .rf_reg_r1_0_31_24_29({d30_carry__5_n_4,d30_carry__5_n_5,d30_carry__5_n_6,d30_carry__5_n_7}),
        .rf_reg_r1_0_31_24_29_0(alu_n_61),
        .rf_reg_r1_0_31_24_29_1(alu_n_62),
        .rf_reg_r1_0_31_24_29_2(alu_n_63),
        .rf_reg_r1_0_31_24_29_3(alu_n_64),
        .rf_reg_r1_0_31_6_11({d30_carry__0_n_4,d30_carry__0_n_5,d30_carry__0_n_6,d30_carry__0_n_7}),
        .rf_reg_r1_0_31_6_11_0(alu_n_41),
        .rf_reg_r1_0_31_6_11_1(rf_n_236),
        .rf_reg_r1_0_31_6_11_2(alu_n_67),
        .rf_reg_r1_0_31_6_11_3({d30_carry__1_n_4,d30_carry__1_n_5,d30_carry__1_n_6,d30_carry__1_n_7}),
        .rf_reg_r1_0_31_6_11_4(\ALUResult[9]_INST_0_i_2 ),
        .rf_reg_r1_0_31_6_11_5(\ALUResult[8]_INST_0_i_2 ),
        .rf_reg_r1_0_31_6_11_6(\ALUResult[11]_INST_0_i_2 ),
        .rf_reg_r1_0_31_6_11_7(\ALUResult[10]_INST_0_i_2 ),
        .wd3(Result[27:3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 pcaddbranch
       (.ImmSrc(ImmSrc),
        .Instr(Instr[4:0]),
        .PCTargetI(PCTargetI),
        .Q(Q[30:0]),
        .S({pcreg_n_59,pcreg_n_60,pcreg_n_61,pcreg_n_62}),
        .\q[12]_i_2 ({pcreg_n_71,pcreg_n_72,pcreg_n_73,pcreg_n_74}),
        .\q[16]_i_2 ({pcreg_n_75,pcreg_n_76,pcreg_n_77,pcreg_n_78}),
        .\q[20]_i_2 ({pcreg_n_79,pcreg_n_80,pcreg_n_81,pcreg_n_82}),
        .\q[24]_i_2 ({pcreg_n_83,pcreg_n_84,pcreg_n_85,pcreg_n_86}),
        .\q[28]_i_2 ({pcreg_n_39,pcreg_n_40,pcreg_n_41,pcreg_n_42}),
        .\q[4]_i_2 ({pcreg_n_63,pcreg_n_64,pcreg_n_65,pcreg_n_66}),
        .\q[8]_i_2 ({pcreg_n_67,pcreg_n_68,pcreg_n_69,pcreg_n_70}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr pcreg
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .\ALUResult[0]_INST_0_i_7_0 (pcreg_n_58),
        .\ALUResult[2]_INST_0_i_11_0 (pcreg_n_47),
        .\ALUResult[2]_INST_0_i_12_0 (pcreg_n_48),
        .\ALUResult[3]_INST_0_i_11_0 (pcreg_n_49),
        .\ALUResult[3]_INST_0_i_12_0 (pcreg_n_50),
        .\ALUResult[4]_INST_0_i_11_0 (pcreg_n_51),
        .\ALUResult[4]_INST_0_i_12_0 (pcreg_n_52),
        .ALUSrc(ALUSrc),
        .D(PCNext),
        .ImmSrc(ImmSrc),
        .Instr(Instr),
        .O({d30_carry_n_5,d30_carry_n_6,d30_carry_n_7}),
        .PCPlus4(PCPlus4[31:28]),
        .PCReady(PCReady),
        .Q(Q),
        .Result({Result[31:28],Result[2:0]}),
        .S({pcreg_n_43,pcreg_n_44,pcreg_n_45,pcreg_n_46}),
        .clk(clk),
        .d30_carry__1(alu_n_98),
        .d30_carry__3(alu_n_99),
        .\q_reg[11]_0 ({pcreg_n_67,pcreg_n_68,pcreg_n_69,pcreg_n_70}),
        .\q_reg[11]_1 ({pcreg_n_95,pcreg_n_96,pcreg_n_97,pcreg_n_98}),
        .\q_reg[15]_0 ({pcreg_n_71,pcreg_n_72,pcreg_n_73,pcreg_n_74}),
        .\q_reg[15]_1 ({pcreg_n_99,pcreg_n_100,pcreg_n_101,pcreg_n_102}),
        .\q_reg[19]_0 ({pcreg_n_75,pcreg_n_76,pcreg_n_77,pcreg_n_78}),
        .\q_reg[19]_1 ({pcreg_n_103,pcreg_n_104,pcreg_n_105,pcreg_n_106}),
        .\q_reg[23]_0 ({pcreg_n_79,pcreg_n_80,pcreg_n_81,pcreg_n_82}),
        .\q_reg[23]_1 ({pcreg_n_107,pcreg_n_108,pcreg_n_109,pcreg_n_110}),
        .\q_reg[27]_0 ({pcreg_n_83,pcreg_n_84,pcreg_n_85,pcreg_n_86}),
        .\q_reg[27]_1 ({pcreg_n_111,pcreg_n_112,pcreg_n_113,pcreg_n_114}),
        .\q_reg[31]_0 ({pcreg_n_39,pcreg_n_40,pcreg_n_41,pcreg_n_42}),
        .\q_reg[3]_0 ({pcreg_n_59,pcreg_n_60,pcreg_n_61,pcreg_n_62}),
        .\q_reg[3]_1 ({pcreg_n_87,pcreg_n_88,pcreg_n_89,pcreg_n_90}),
        .\q_reg[7]_0 ({pcreg_n_63,pcreg_n_64,pcreg_n_65,pcreg_n_66}),
        .\q_reg[7]_1 ({pcreg_n_91,pcreg_n_92,pcreg_n_93,pcreg_n_94}),
        .reset(reset),
        .rf_reg_r1_0_31_0_5(alu_n_37),
        .rf_reg_r1_0_31_0_5_0(alu_n_33),
        .rf_reg_r1_0_31_0_5_1(alu_n_36),
        .rf_reg_r1_0_31_24_29(alu_n_59),
        .rf_reg_r1_0_31_24_29_0(alu_n_60),
        .rf_reg_r2_0_31_30_31(alu_n_50),
        .rf_reg_r2_0_31_30_31__0({d30_carry__6_n_4,d30_carry__6_n_5,d30_carry__6_n_6,d30_carry__6_n_7}),
        .rf_reg_r2_0_31_30_31__0_0(alu_n_51),
        .y_carry_i_7(pcreg_n_115),
        .y_carry_i_7_0(pcreg_n_116));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile rf
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .\ALUResult[0]_INST_0_i_12_0 (rf_n_111),
        .\ALUResult[0]_INST_0_i_6_0 (rf_n_235),
        .\ALUResult[0]_INST_0_i_9_0 (rf_n_110),
        .\ALUResult[10]_INST_0_i_2_0 (\ALUResult[10]_INST_0_i_2 ),
        .\ALUResult[11]_INST_0_i_2_0 (\ALUResult[11]_INST_0_i_2 ),
        .\ALUResult[12]_INST_0_i_2_0 (\ALUResult[12]_INST_0_i_2 ),
        .\ALUResult[13]_INST_0_i_2_0 (\ALUResult[13]_INST_0_i_2 ),
        .\ALUResult[14]_INST_0_i_2_0 (\ALUResult[14]_INST_0_i_2 ),
        .\ALUResult[15]_INST_0_i_2_0 (\ALUResult[15]_INST_0_i_2 ),
        .\ALUResult[16]_INST_0_i_2_0 (\ALUResult[16]_INST_0_i_2 ),
        .\ALUResult[17]_INST_0_i_2_0 (\ALUResult[17]_INST_0_i_2 ),
        .\ALUResult[18]_INST_0_i_2_0 (\ALUResult[18]_INST_0_i_2 ),
        .\ALUResult[19]_INST_0_i_6_0 (rf_n_172),
        .\ALUResult[1]_INST_0_i_2 (pcreg_n_116),
        .\ALUResult[1]_INST_0_i_6_0 (rf_n_109),
        .\ALUResult[20]_INST_0_i_2_0 (\ALUResult[20]_INST_0_i_2 ),
        .\ALUResult[21]_INST_0_i_2_0 (\ALUResult[21]_INST_0_i_2 ),
        .\ALUResult[22]_INST_0_i_2_0 (\ALUResult[22]_INST_0_i_2 ),
        .\ALUResult[23]_INST_0_i_2_0 (\ALUResult[23]_INST_0_i_2 ),
        .\ALUResult[24]_INST_0_i_2_0 (\ALUResult[24]_INST_0_i_2 ),
        .\ALUResult[25]_INST_0_i_2_0 (\ALUResult[25]_INST_0_i_2 ),
        .\ALUResult[26]_INST_0_i_2_0 (\ALUResult[26]_INST_0_i_2 ),
        .\ALUResult[27]_INST_0_i_2_0 (\ALUResult[27]_INST_0_i_2 ),
        .\ALUResult[28]_INST_0_i_2_0 (\ALUResult[28]_INST_0_i_2 ),
        .\ALUResult[29]_INST_0_i_2_0 (\ALUResult[29]_INST_0_i_2 ),
        .\ALUResult[2]_INST_0_i_2_0 (\ALUResult[2]_INST_0_i_2 ),
        .\ALUResult[30]_INST_0_i_2_0 (\ALUResult[30]_INST_0_i_2 ),
        .\ALUResult[31]_INST_0_i_3_0 (\ALUResult[31]_INST_0_i_3 ),
        .\ALUResult[3]_INST_0_i_2_0 (\ALUResult[3]_INST_0_i_2 ),
        .\ALUResult[4]_INST_0_i_2_0 (\ALUResult[4]_INST_0_i_2 ),
        .\ALUResult[5]_INST_0_i_2_0 (\ALUResult[5]_INST_0_i_2 ),
        .\ALUResult[6]_INST_0_i_2_0 (\ALUResult[6]_INST_0_i_2 ),
        .\ALUResult[7]_INST_0_i_2_0 (\ALUResult[7]_INST_0_i_2 ),
        .\ALUResult[8]_INST_0_i_2_0 (\ALUResult[8]_INST_0_i_2 ),
        .\ALUResult[9]_INST_0_i_2_0 (\ALUResult[9]_INST_0_i_2 ),
        .ALUSrc(ALUSrc),
        .BControl__8(\c/BControl__8 ),
        .CO(alu_n_32),
        .D({PCNext[31:20],PCNext[18:2]}),
        .DI({rf_n_13,rf_n_14,rf_n_15,rf_n_16}),
        .ImmExt(ImmExt),
        .ImmSrc(ImmSrc[1]),
        .Instr({Instr[29:2],Instr[0]}),
        .O(Negative),
        .PCPlus4({PCPlus4[31:20],PCPlus4[18:3]}),
        .PCTargetI({PCTargetI[31:20],PCTargetI[18:2]}),
        .Q(Q[2]),
        .ReadData({ReadData[31:24],ReadData[15:8]}),
        .Result(Result),
        .ResultSrc(ResultSrc),
        .S({rf_n_175,rf_n_176,rf_n_177,rf_n_178}),
        .WriteData(WriteData[31:8]),
        .\addressM[0] (pcreg_n_58),
        .clk(clk),
        .clk_0({rf_n_8,rf_n_9,rf_n_10,rf_n_11}),
        .clk_1(rf_n_12),
        .clk_10(rf_n_71),
        .clk_11(rf_n_72),
        .clk_12(rf_n_73),
        .clk_13(rf_n_74),
        .clk_14(rf_n_75),
        .clk_15(rf_n_76),
        .clk_16(rf_n_77),
        .clk_17(rf_n_78),
        .clk_18(rf_n_112),
        .clk_19(rf_n_113),
        .clk_2({SrcB[19],SrcB[1]}),
        .clk_20(rf_n_114),
        .clk_21(rf_n_115),
        .clk_22(rf_n_126),
        .clk_23(rf_n_127),
        .clk_24(rf_n_128),
        .clk_25(rf_n_129),
        .clk_26(rf_n_134),
        .clk_27(rf_n_135),
        .clk_28(rf_n_136),
        .clk_29(rf_n_137),
        .clk_3({rf_n_19,rf_n_20,rf_n_21,rf_n_22}),
        .clk_30(rf_n_138),
        .clk_31(rf_n_139),
        .clk_32(rf_n_140),
        .clk_33(rf_n_141),
        .clk_34(rf_n_142),
        .clk_35(rf_n_143),
        .clk_36(rf_n_144),
        .clk_37(rf_n_145),
        .clk_38(rf_n_146),
        .clk_39(rf_n_147),
        .clk_4({rf_n_23,rf_n_24,rf_n_25,rf_n_26}),
        .clk_40(rf_n_148),
        .clk_41(rf_n_149),
        .clk_42(rf_n_150),
        .clk_43(rf_n_151),
        .clk_44(rf_n_152),
        .clk_45(rf_n_153),
        .clk_46(rf_n_154),
        .clk_47(rf_n_155),
        .clk_48(rf_n_156),
        .clk_49(rf_n_173),
        .clk_5({rf_n_27,rf_n_28,rf_n_29,rf_n_30}),
        .clk_50({rf_n_179,rf_n_180,rf_n_181,rf_n_182}),
        .clk_51({rf_n_183,rf_n_184,rf_n_185,rf_n_186}),
        .clk_52({rf_n_187,rf_n_188,rf_n_189,rf_n_190}),
        .clk_53({rf_n_191,rf_n_192,rf_n_193,rf_n_194}),
        .clk_54({rf_n_195,rf_n_196,rf_n_197,rf_n_198}),
        .clk_55({rf_n_199,rf_n_200,rf_n_201,rf_n_202}),
        .clk_56({rf_n_203,rf_n_204,rf_n_205,rf_n_206}),
        .clk_57({rf_n_207,rf_n_208,rf_n_209,rf_n_210}),
        .clk_58({rf_n_211,rf_n_212,rf_n_213,rf_n_214}),
        .clk_59({rf_n_215,rf_n_216,rf_n_217,rf_n_218}),
        .clk_6({rf_n_31,rf_n_32,rf_n_33,rf_n_34}),
        .clk_60({rf_n_219,rf_n_220,rf_n_221,rf_n_222}),
        .clk_61({rf_n_223,rf_n_224,rf_n_225,rf_n_226}),
        .clk_62({rf_n_227,rf_n_228,rf_n_229,rf_n_230}),
        .clk_63({rf_n_231,rf_n_232,rf_n_233,rf_n_234}),
        .clk_7({rf_n_35,rf_n_36,rf_n_37,rf_n_38}),
        .clk_8({rf_n_39,rf_n_40,rf_n_41,rf_n_42}),
        .clk_9({rf_n_43,rf_n_44,rf_n_45,rf_n_46}),
        .i__carry_i_4_0(pcreg_n_115),
        .\q[31]_i_3_0 (alu_n_88),
        .\q[31]_i_6_0 (\ALUResult[19]_INST_0_i_2 ),
        .rd11__3(rd11__3),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .rf_reg_r1_0_31_6_11_i_9_0(rf_n_236),
        .sum(sum),
        .sum__0_carry__0_i_8_0(pcreg_n_51),
        .sum__0_carry__0_i_8_1(pcreg_n_52),
        .sum__0_carry__1_i_5_0(alu_n_98),
        .sum__0_carry_i_6_0(pcreg_n_49),
        .sum__0_carry_i_6_1(pcreg_n_50),
        .sum__0_carry_i_7_0(alu_n_99),
        .sum__0_carry_i_7_1(pcreg_n_47),
        .sum__0_carry_i_7_2(pcreg_n_48),
        .\writeDataM[15] (\ALUResult[1]_INST_0_i_2 ),
        .\writeDataM[16] (alu_n_76),
        .\writeDataM[17] (alu_n_78),
        .\writeDataM[18] (alu_n_79),
        .\writeDataM[19] (alu_n_80),
        .\writeDataM[20] (alu_n_81),
        .\writeDataM[21] (alu_n_82),
        .\writeDataM[22] (alu_n_83),
        .\writeDataM[23] (alu_n_84),
        .\writeDataM[8] (\ALUResult[0]_INST_0_i_5 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
   (Result,
    Q,
    \q_reg[31]_0 ,
    S,
    \ALUResult[2]_INST_0_i_11_0 ,
    \ALUResult[2]_INST_0_i_12_0 ,
    \ALUResult[3]_INST_0_i_11_0 ,
    \ALUResult[3]_INST_0_i_12_0 ,
    \ALUResult[4]_INST_0_i_11_0 ,
    \ALUResult[4]_INST_0_i_12_0 ,
    ALUControl,
    ALUControl__0,
    ALUSrc,
    \ALUResult[0]_INST_0_i_7_0 ,
    \q_reg[3]_0 ,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27]_0 ,
    \q_reg[3]_1 ,
    \q_reg[7]_1 ,
    \q_reg[11]_1 ,
    \q_reg[15]_1 ,
    \q_reg[19]_1 ,
    \q_reg[23]_1 ,
    \q_reg[27]_1 ,
    y_carry_i_7,
    y_carry_i_7_0,
    O,
    Instr,
    rf_reg_r1_0_31_0_5,
    rf_reg_r1_0_31_0_5_0,
    rf_reg_r1_0_31_0_5_1,
    rf_reg_r2_0_31_30_31__0,
    PCPlus4,
    rf_reg_r2_0_31_30_31,
    rf_reg_r2_0_31_30_31__0_0,
    rf_reg_r1_0_31_24_29,
    rf_reg_r1_0_31_24_29_0,
    d30_carry__3,
    ImmSrc,
    d30_carry__1,
    PCReady,
    D,
    clk,
    reset);
  output [6:0]Result;
  output [31:0]Q;
  output [3:0]\q_reg[31]_0 ;
  output [3:0]S;
  output \ALUResult[2]_INST_0_i_11_0 ;
  output \ALUResult[2]_INST_0_i_12_0 ;
  output \ALUResult[3]_INST_0_i_11_0 ;
  output \ALUResult[3]_INST_0_i_12_0 ;
  output \ALUResult[4]_INST_0_i_11_0 ;
  output \ALUResult[4]_INST_0_i_12_0 ;
  output [0:0]ALUControl;
  output [2:0]ALUControl__0;
  output ALUSrc;
  output \ALUResult[0]_INST_0_i_7_0 ;
  output [3:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27]_0 ;
  output [3:0]\q_reg[3]_1 ;
  output [3:0]\q_reg[7]_1 ;
  output [3:0]\q_reg[11]_1 ;
  output [3:0]\q_reg[15]_1 ;
  output [3:0]\q_reg[19]_1 ;
  output [3:0]\q_reg[23]_1 ;
  output [3:0]\q_reg[27]_1 ;
  output y_carry_i_7;
  output y_carry_i_7_0;
  input [2:0]O;
  input [29:0]Instr;
  input rf_reg_r1_0_31_0_5;
  input rf_reg_r1_0_31_0_5_0;
  input rf_reg_r1_0_31_0_5_1;
  input [3:0]rf_reg_r2_0_31_30_31__0;
  input [3:0]PCPlus4;
  input rf_reg_r2_0_31_30_31;
  input rf_reg_r2_0_31_30_31__0_0;
  input rf_reg_r1_0_31_24_29;
  input rf_reg_r1_0_31_24_29_0;
  input d30_carry__3;
  input [1:0]ImmSrc;
  input d30_carry__1;
  input PCReady;
  input [31:0]D;
  input clk;
  input reset;

  wire [0:0]ALUControl;
  wire [2:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_10_n_0 ;
  wire \ALUResult[0]_INST_0_i_7_0 ;
  wire \ALUResult[2]_INST_0_i_11_0 ;
  wire \ALUResult[2]_INST_0_i_12_0 ;
  wire \ALUResult[3]_INST_0_i_11_0 ;
  wire \ALUResult[3]_INST_0_i_12_0 ;
  wire \ALUResult[4]_INST_0_i_11_0 ;
  wire \ALUResult[4]_INST_0_i_12_0 ;
  wire ALUSrc;
  wire [31:0]D;
  wire [1:0]ImmSrc;
  wire [29:0]Instr;
  wire [2:0]O;
  wire [3:0]PCPlus4;
  wire PCReady;
  wire [31:0]Q;
  wire [6:0]Result;
  wire [3:0]S;
  wire [1:0]\c/ALUOp ;
  wire clk;
  wire d30_carry__1;
  wire d30_carry__3;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[11]_1 ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[15]_1 ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[19]_1 ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire [3:0]\q_reg[27]_0 ;
  wire [3:0]\q_reg[27]_1 ;
  wire [3:0]\q_reg[31]_0 ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire reset;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_0_5_0;
  wire rf_reg_r1_0_31_0_5_1;
  wire rf_reg_r1_0_31_24_29;
  wire rf_reg_r1_0_31_24_29_0;
  wire rf_reg_r2_0_31_30_31;
  wire [3:0]rf_reg_r2_0_31_30_31__0;
  wire rf_reg_r2_0_31_30_31__0_0;
  wire y_carry_i_7;
  wire y_carry_i_7_0;

  LUT5 #(
    .INIT(32'h0FC0FF08)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(Instr[3]),
        .I1(Instr[28]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[10]),
        .O(\ALUResult[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h454000000000CFC0)) 
    \ALUResult[0]_INST_0_i_13 
       (.I0(Instr[1]),
        .I1(Instr[5]),
        .I2(ImmSrc[0]),
        .I3(Instr[18]),
        .I4(Instr[4]),
        .I5(Instr[0]),
        .O(y_carry_i_7));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h83380038)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[2]),
        .I4(\ALUResult[0]_INST_0_i_10_n_0 ),
        .O(ALUControl));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(Instr[15]),
        .I1(Instr[13]),
        .I2(Instr[14]),
        .I3(Instr[16]),
        .I4(Instr[17]),
        .O(\ALUResult[0]_INST_0_i_7_0 ));
  LUT6 #(
    .INIT(64'hB8E20000B8B8E2E2)) 
    \ALUResult[1]_INST_0_i_10 
       (.I0(Instr[19]),
        .I1(ImmSrc[0]),
        .I2(Instr[6]),
        .I3(Instr[1]),
        .I4(Instr[4]),
        .I5(Instr[0]),
        .O(y_carry_i_7_0));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_11 
       (.I0(Instr[7]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[20]),
        .O(\ALUResult[2]_INST_0_i_11_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[2]_INST_0_i_12 
       (.I0(Instr[20]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[7]),
        .O(\ALUResult[2]_INST_0_i_12_0 ));
  LUT5 #(
    .INIT(32'hAAAA0820)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[10]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(\c/ALUOp [0]),
        .O(ALUControl__0[2]));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[12]),
        .I2(Instr[11]),
        .I3(Instr[10]),
        .I4(\c/ALUOp [0]),
        .O(ALUControl__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .O(\c/ALUOp [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(Instr[3]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(\c/ALUOp [0]));
  LUT5 #(
    .INIT(32'hAAAA0828)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(\c/ALUOp [1]),
        .I1(Instr[10]),
        .I2(Instr[11]),
        .I3(Instr[12]),
        .I4(\c/ALUOp [0]),
        .O(ALUControl__0[1]));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_11 
       (.I0(Instr[8]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[21]),
        .O(\ALUResult[3]_INST_0_i_11_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[3]_INST_0_i_12 
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[8]),
        .O(\ALUResult[3]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_11 
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[22]),
        .O(\ALUResult[4]_INST_0_i_11_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \ALUResult[4]_INST_0_i_12 
       (.I0(Instr[22]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[4]),
        .I4(Instr[3]),
        .I5(Instr[9]),
        .O(\ALUResult[4]_INST_0_i_12_0 ));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__0_i_1
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[25]),
        .I3(Q[7]),
        .O(\q_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__0_i_2
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[24]),
        .I3(Q[6]),
        .O(\q_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__0_i_3
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[23]),
        .I3(Q[5]),
        .O(\q_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hABAEEFBF54511040)) 
    d30_carry__0_i_4
       (.I0(d30_carry__3),
        .I1(ImmSrc[1]),
        .I2(Instr[9]),
        .I3(ImmSrc[0]),
        .I4(Instr[22]),
        .I5(Q[4]),
        .O(\q_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    d30_carry__1_i_1
       (.I0(d30_carry__1),
        .I1(Q[11]),
        .O(\q_reg[11]_1 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__1_i_2
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[28]),
        .I3(Q[10]),
        .O(\q_reg[11]_1 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__1_i_3
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[27]),
        .I3(Q[9]),
        .O(\q_reg[11]_1 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    d30_carry__1_i_4
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .I2(Instr[26]),
        .I3(Q[8]),
        .O(\q_reg[11]_1 [0]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__2_i_1
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[13]),
        .I4(d30_carry__3),
        .I5(Q[15]),
        .O(\q_reg[15]_1 [3]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__2_i_2
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[12]),
        .I4(d30_carry__3),
        .I5(Q[14]),
        .O(\q_reg[15]_1 [2]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__2_i_3
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[11]),
        .I4(d30_carry__3),
        .I5(Q[13]),
        .O(\q_reg[15]_1 [1]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__2_i_4
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[10]),
        .I4(d30_carry__3),
        .I5(Q[12]),
        .O(\q_reg[15]_1 [0]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__3_i_1
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[17]),
        .I4(d30_carry__3),
        .I5(Q[19]),
        .O(\q_reg[19]_1 [3]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__3_i_2
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[16]),
        .I4(d30_carry__3),
        .I5(Q[18]),
        .O(\q_reg[19]_1 [2]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__3_i_3
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[15]),
        .I4(d30_carry__3),
        .I5(Q[17]),
        .O(\q_reg[19]_1 [1]));
  LUT6 #(
    .INIT(64'h00FF15D5FF00EA2A)) 
    d30_carry__3_i_4
       (.I0(Instr[29]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[0]),
        .I3(Instr[14]),
        .I4(d30_carry__3),
        .I5(Q[16]),
        .O(\q_reg[19]_1 [0]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__4_i_1
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[21]),
        .I4(Q[23]),
        .O(\q_reg[23]_1 [3]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__4_i_2
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[20]),
        .I4(Q[22]),
        .O(\q_reg[23]_1 [2]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__4_i_3
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[19]),
        .I4(Q[21]),
        .O(\q_reg[23]_1 [1]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__4_i_4
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[18]),
        .I4(Q[20]),
        .O(\q_reg[23]_1 [0]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__5_i_1
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[25]),
        .I4(Q[27]),
        .O(\q_reg[27]_1 [3]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__5_i_2
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[24]),
        .I4(Q[26]),
        .O(\q_reg[27]_1 [2]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__5_i_3
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[23]),
        .I4(Q[25]),
        .O(\q_reg[27]_1 [1]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__5_i_4
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[22]),
        .I4(Q[24]),
        .O(\q_reg[27]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    d30_carry__6_i_1
       (.I0(Instr[29]),
        .I1(Q[31]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__6_i_2
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[28]),
        .I4(Q[30]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__6_i_3
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[27]),
        .I4(Q[29]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    d30_carry__6_i_4
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[26]),
        .I4(Q[28]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hABAEEFBF54511040)) 
    d30_carry_i_1
       (.I0(d30_carry__3),
        .I1(ImmSrc[1]),
        .I2(Instr[8]),
        .I3(ImmSrc[0]),
        .I4(Instr[21]),
        .I5(Q[3]),
        .O(\q_reg[3]_1 [3]));
  LUT6 #(
    .INIT(64'hABAEEFBF54511040)) 
    d30_carry_i_2
       (.I0(d30_carry__3),
        .I1(ImmSrc[1]),
        .I2(Instr[7]),
        .I3(ImmSrc[0]),
        .I4(Instr[20]),
        .I5(Q[2]),
        .O(\q_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'hABAEEFBF54511040)) 
    d30_carry_i_3
       (.I0(d30_carry__3),
        .I1(ImmSrc[1]),
        .I2(Instr[6]),
        .I3(ImmSrc[0]),
        .I4(Instr[19]),
        .I5(Q[1]),
        .O(\q_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFABFB00005404)) 
    d30_carry_i_4
       (.I0(d30_carry__3),
        .I1(Instr[18]),
        .I2(ImmSrc[0]),
        .I3(Instr[5]),
        .I4(ImmSrc[1]),
        .I5(Q[0]),
        .O(\q_reg[3]_1 [0]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(O[1]),
        .I1(Q[1]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_1),
        .O(Result[1]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(O[0]),
        .I1(Q[0]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_0),
        .O(Result[0]));
  LUT6 #(
    .INIT(64'hFFAF3FAF00A030A0)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(O[2]),
        .I1(Q[2]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5),
        .O(Result[2]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(rf_reg_r2_0_31_30_31__0[1]),
        .I1(PCPlus4[1]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_24_29_0),
        .O(Result[4]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(rf_reg_r2_0_31_30_31__0[0]),
        .I1(PCPlus4[0]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_24_29),
        .O(Result[3]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(rf_reg_r2_0_31_30_31__0[2]),
        .I1(PCPlus4[2]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r2_0_31_30_31),
        .O(Result[5]));
  LUT6 #(
    .INIT(64'hFFAFCFAF00A0C0A0)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(rf_reg_r2_0_31_30_31__0[3]),
        .I1(PCPlus4[3]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Instr[2]),
        .I5(rf_reg_r2_0_31_30_31__0_0),
        .O(Result[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h55550111)) 
    sum__0_carry__6_i_8
       (.I0(Instr[1]),
        .I1(Instr[4]),
        .I2(Instr[3]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(ALUSrc));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_1
       (.I0(Q[7]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[25]),
        .O(\q_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_2
       (.I0(Q[6]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[24]),
        .O(\q_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_3
       (.I0(Q[5]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[23]),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry__0_i_4
       (.I0(Q[4]),
        .I1(d30_carry__3),
        .I2(ImmSrc[1]),
        .I3(Instr[9]),
        .I4(ImmSrc[0]),
        .I5(Instr[22]),
        .O(\q_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(Q[11]),
        .I1(d30_carry__1),
        .O(\q_reg[11]_0 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_2
       (.I0(Q[10]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[28]),
        .O(\q_reg[11]_0 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_3
       (.I0(Q[9]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[27]),
        .O(\q_reg[11]_0 [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_4
       (.I0(Q[8]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[26]),
        .O(\q_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_1
       (.I0(Q[15]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[13]),
        .I5(d30_carry__3),
        .O(\q_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_2
       (.I0(Q[14]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[12]),
        .I5(d30_carry__3),
        .O(\q_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_3
       (.I0(Q[13]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[11]),
        .I5(d30_carry__3),
        .O(\q_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__2_i_4
       (.I0(Q[12]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[10]),
        .I5(d30_carry__3),
        .O(\q_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_1
       (.I0(Q[19]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[17]),
        .I5(d30_carry__3),
        .O(\q_reg[19]_0 [3]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_2
       (.I0(Q[18]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[16]),
        .I5(d30_carry__3),
        .O(\q_reg[19]_0 [2]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_3
       (.I0(Q[17]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[15]),
        .I5(d30_carry__3),
        .O(\q_reg[19]_0 [1]));
  LUT6 #(
    .INIT(64'h5555AAAA5666A666)) 
    y_carry__3_i_4
       (.I0(Q[16]),
        .I1(Instr[29]),
        .I2(ImmSrc[1]),
        .I3(ImmSrc[0]),
        .I4(Instr[14]),
        .I5(d30_carry__3),
        .O(\q_reg[19]_0 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_1
       (.I0(Q[23]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[21]),
        .O(\q_reg[23]_0 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_2
       (.I0(Q[22]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[20]),
        .O(\q_reg[23]_0 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_3
       (.I0(Q[21]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[19]),
        .O(\q_reg[23]_0 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_4
       (.I0(Q[20]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[18]),
        .O(\q_reg[23]_0 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_1
       (.I0(Q[27]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[25]),
        .O(\q_reg[27]_0 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_2
       (.I0(Q[26]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[24]),
        .O(\q_reg[27]_0 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_3
       (.I0(Q[25]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[23]),
        .O(\q_reg[27]_0 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_4
       (.I0(Q[24]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[22]),
        .O(\q_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(Q[31]),
        .I1(Instr[29]),
        .O(\q_reg[31]_0 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_2
       (.I0(Q[30]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[28]),
        .O(\q_reg[31]_0 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_3
       (.I0(Q[29]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[27]),
        .O(\q_reg[31]_0 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_4
       (.I0(Q[28]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[26]),
        .O(\q_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_1
       (.I0(Q[3]),
        .I1(d30_carry__3),
        .I2(ImmSrc[1]),
        .I3(Instr[8]),
        .I4(ImmSrc[0]),
        .I5(Instr[21]),
        .O(\q_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(d30_carry__3),
        .I2(ImmSrc[1]),
        .I3(Instr[7]),
        .I4(ImmSrc[0]),
        .I5(Instr[20]),
        .O(\q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h999A99A9A9AA9AAA)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(d30_carry__3),
        .I2(ImmSrc[1]),
        .I3(Instr[6]),
        .I4(ImmSrc[0]),
        .I5(Instr[19]),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA999AAA9A)) 
    y_carry_i_4
       (.I0(Q[0]),
        .I1(d30_carry__3),
        .I2(Instr[18]),
        .I3(ImmSrc[0]),
        .I4(Instr[5]),
        .I5(ImmSrc[1]),
        .O(\q_reg[3]_0 [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
   (rd20,
    clk_0,
    clk_1,
    DI,
    clk_2,
    clk_3,
    clk_4,
    clk_5,
    clk_6,
    clk_7,
    clk_8,
    clk_9,
    WriteData,
    clk_10,
    clk_11,
    clk_12,
    clk_13,
    clk_14,
    clk_15,
    clk_16,
    clk_17,
    D,
    BControl__8,
    \ALUResult[1]_INST_0_i_6_0 ,
    \ALUResult[0]_INST_0_i_9_0 ,
    \ALUResult[0]_INST_0_i_12_0 ,
    clk_18,
    clk_19,
    clk_20,
    clk_21,
    \ALUResult[9]_INST_0_i_2_0 ,
    \ALUResult[8]_INST_0_i_2_0 ,
    \ALUResult[11]_INST_0_i_2_0 ,
    \ALUResult[10]_INST_0_i_2_0 ,
    \ALUResult[7]_INST_0_i_2_0 ,
    \ALUResult[6]_INST_0_i_2_0 ,
    \ALUResult[5]_INST_0_i_2_0 ,
    \ALUResult[4]_INST_0_i_2_0 ,
    \ALUResult[3]_INST_0_i_2_0 ,
    \ALUResult[2]_INST_0_i_2_0 ,
    clk_22,
    clk_23,
    clk_24,
    clk_25,
    \ALUResult[15]_INST_0_i_2_0 ,
    \ALUResult[14]_INST_0_i_2_0 ,
    \ALUResult[13]_INST_0_i_2_0 ,
    \ALUResult[12]_INST_0_i_2_0 ,
    clk_26,
    clk_27,
    clk_28,
    clk_29,
    clk_30,
    clk_31,
    clk_32,
    clk_33,
    clk_34,
    clk_35,
    clk_36,
    clk_37,
    clk_38,
    clk_39,
    clk_40,
    clk_41,
    clk_42,
    clk_43,
    clk_44,
    clk_45,
    clk_46,
    clk_47,
    clk_48,
    \ALUResult[30]_INST_0_i_2_0 ,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[29]_INST_0_i_2_0 ,
    \ALUResult[28]_INST_0_i_2_0 ,
    \ALUResult[25]_INST_0_i_2_0 ,
    \ALUResult[24]_INST_0_i_2_0 ,
    \ALUResult[27]_INST_0_i_2_0 ,
    \ALUResult[26]_INST_0_i_2_0 ,
    \ALUResult[23]_INST_0_i_2_0 ,
    \ALUResult[22]_INST_0_i_2_0 ,
    \ALUResult[21]_INST_0_i_2_0 ,
    \ALUResult[20]_INST_0_i_2_0 ,
    \ALUResult[18]_INST_0_i_2_0 ,
    \ALUResult[17]_INST_0_i_2_0 ,
    \ALUResult[16]_INST_0_i_2_0 ,
    \ALUResult[19]_INST_0_i_6_0 ,
    clk_49,
    ResultSrc,
    S,
    clk_50,
    clk_51,
    clk_52,
    clk_53,
    clk_54,
    clk_55,
    clk_56,
    clk_57,
    clk_58,
    clk_59,
    clk_60,
    clk_61,
    clk_62,
    clk_63,
    \ALUResult[0]_INST_0_i_6_0 ,
    rf_reg_r1_0_31_6_11_i_9_0,
    clk,
    Result,
    Instr,
    rd21__3,
    ALUSrc,
    ALUControl,
    \addressM[0] ,
    ReadData,
    \writeDataM[15] ,
    \writeDataM[16] ,
    \writeDataM[17] ,
    \writeDataM[18] ,
    \writeDataM[19] ,
    \writeDataM[20] ,
    \writeDataM[21] ,
    \writeDataM[22] ,
    \writeDataM[23] ,
    \writeDataM[8] ,
    Q,
    PCPlus4,
    \q[31]_i_3_0 ,
    ALUControl__0,
    PCTargetI,
    O,
    sum,
    \q[31]_i_6_0 ,
    CO,
    sum__0_carry_i_7_0,
    ImmExt,
    sum__0_carry__1_i_5_0,
    sum__0_carry__0_i_8_0,
    ImmSrc,
    sum__0_carry__0_i_8_1,
    sum__0_carry_i_6_0,
    sum__0_carry_i_6_1,
    sum__0_carry_i_7_1,
    sum__0_carry_i_7_2,
    \ALUResult[1]_INST_0_i_2 ,
    i__carry_i_4_0,
    rd11__3);
  output [7:0]rd20;
  output [3:0]clk_0;
  output clk_1;
  output [3:0]DI;
  output [1:0]clk_2;
  output [3:0]clk_3;
  output [3:0]clk_4;
  output [3:0]clk_5;
  output [3:0]clk_6;
  output [3:0]clk_7;
  output [3:0]clk_8;
  output [3:0]clk_9;
  output [23:0]WriteData;
  output clk_10;
  output clk_11;
  output clk_12;
  output clk_13;
  output clk_14;
  output clk_15;
  output clk_16;
  output clk_17;
  output [28:0]D;
  output BControl__8;
  output \ALUResult[1]_INST_0_i_6_0 ;
  output \ALUResult[0]_INST_0_i_9_0 ;
  output \ALUResult[0]_INST_0_i_12_0 ;
  output clk_18;
  output clk_19;
  output clk_20;
  output clk_21;
  output \ALUResult[9]_INST_0_i_2_0 ;
  output \ALUResult[8]_INST_0_i_2_0 ;
  output \ALUResult[11]_INST_0_i_2_0 ;
  output \ALUResult[10]_INST_0_i_2_0 ;
  output \ALUResult[7]_INST_0_i_2_0 ;
  output \ALUResult[6]_INST_0_i_2_0 ;
  output \ALUResult[5]_INST_0_i_2_0 ;
  output \ALUResult[4]_INST_0_i_2_0 ;
  output \ALUResult[3]_INST_0_i_2_0 ;
  output \ALUResult[2]_INST_0_i_2_0 ;
  output clk_22;
  output clk_23;
  output clk_24;
  output clk_25;
  output \ALUResult[15]_INST_0_i_2_0 ;
  output \ALUResult[14]_INST_0_i_2_0 ;
  output \ALUResult[13]_INST_0_i_2_0 ;
  output \ALUResult[12]_INST_0_i_2_0 ;
  output clk_26;
  output clk_27;
  output clk_28;
  output clk_29;
  output clk_30;
  output clk_31;
  output clk_32;
  output clk_33;
  output clk_34;
  output clk_35;
  output clk_36;
  output clk_37;
  output clk_38;
  output clk_39;
  output clk_40;
  output clk_41;
  output clk_42;
  output clk_43;
  output clk_44;
  output clk_45;
  output clk_46;
  output clk_47;
  output clk_48;
  output \ALUResult[30]_INST_0_i_2_0 ;
  output \ALUResult[31]_INST_0_i_3_0 ;
  output \ALUResult[29]_INST_0_i_2_0 ;
  output \ALUResult[28]_INST_0_i_2_0 ;
  output \ALUResult[25]_INST_0_i_2_0 ;
  output \ALUResult[24]_INST_0_i_2_0 ;
  output \ALUResult[27]_INST_0_i_2_0 ;
  output \ALUResult[26]_INST_0_i_2_0 ;
  output \ALUResult[23]_INST_0_i_2_0 ;
  output \ALUResult[22]_INST_0_i_2_0 ;
  output \ALUResult[21]_INST_0_i_2_0 ;
  output \ALUResult[20]_INST_0_i_2_0 ;
  output \ALUResult[18]_INST_0_i_2_0 ;
  output \ALUResult[17]_INST_0_i_2_0 ;
  output \ALUResult[16]_INST_0_i_2_0 ;
  output \ALUResult[19]_INST_0_i_6_0 ;
  output clk_49;
  output [0:0]ResultSrc;
  output [3:0]S;
  output [3:0]clk_50;
  output [3:0]clk_51;
  output [3:0]clk_52;
  output [3:0]clk_53;
  output [3:0]clk_54;
  output [3:0]clk_55;
  output [3:0]clk_56;
  output [3:0]clk_57;
  output [3:0]clk_58;
  output [3:0]clk_59;
  output [3:0]clk_60;
  output [3:0]clk_61;
  output [3:0]clk_62;
  output [3:0]clk_63;
  output \ALUResult[0]_INST_0_i_6_0 ;
  output rf_reg_r1_0_31_6_11_i_9_0;
  input clk;
  input [31:0]Result;
  input [28:0]Instr;
  input rd21__3;
  input ALUSrc;
  input [0:0]ALUControl;
  input \addressM[0] ;
  input [15:0]ReadData;
  input \writeDataM[15] ;
  input \writeDataM[16] ;
  input \writeDataM[17] ;
  input \writeDataM[18] ;
  input \writeDataM[19] ;
  input \writeDataM[20] ;
  input \writeDataM[21] ;
  input \writeDataM[22] ;
  input \writeDataM[23] ;
  input \writeDataM[8] ;
  input [0:0]Q;
  input [27:0]PCPlus4;
  input \q[31]_i_3_0 ;
  input [2:0]ALUControl__0;
  input [28:0]PCTargetI;
  input [0:0]O;
  input [30:0]sum;
  input \q[31]_i_6_0 ;
  input [0:0]CO;
  input sum__0_carry_i_7_0;
  input [7:0]ImmExt;
  input sum__0_carry__1_i_5_0;
  input sum__0_carry__0_i_8_0;
  input [0:0]ImmSrc;
  input sum__0_carry__0_i_8_1;
  input sum__0_carry_i_6_0;
  input sum__0_carry_i_6_1;
  input sum__0_carry_i_7_1;
  input sum__0_carry_i_7_2;
  input \ALUResult[1]_INST_0_i_2 ;
  input i__carry_i_4_0;
  input rd11__3;

  wire [0:0]ALUControl;
  wire [2:0]ALUControl__0;
  wire \ALUResult[0]_INST_0_i_11_n_0 ;
  wire \ALUResult[0]_INST_0_i_12_0 ;
  wire \ALUResult[0]_INST_0_i_12_n_0 ;
  wire \ALUResult[0]_INST_0_i_14_n_0 ;
  wire \ALUResult[0]_INST_0_i_16_n_0 ;
  wire \ALUResult[0]_INST_0_i_6_0 ;
  wire \ALUResult[0]_INST_0_i_8_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_10_n_0 ;
  wire \ALUResult[10]_INST_0_i_11_n_0 ;
  wire \ALUResult[10]_INST_0_i_12_n_0 ;
  wire \ALUResult[10]_INST_0_i_13_n_0 ;
  wire \ALUResult[10]_INST_0_i_1_n_0 ;
  wire \ALUResult[10]_INST_0_i_2_0 ;
  wire \ALUResult[10]_INST_0_i_2_n_0 ;
  wire \ALUResult[10]_INST_0_i_3_n_0 ;
  wire \ALUResult[10]_INST_0_i_4_n_0 ;
  wire \ALUResult[10]_INST_0_i_5_n_0 ;
  wire \ALUResult[10]_INST_0_i_6_n_0 ;
  wire \ALUResult[10]_INST_0_i_8_n_0 ;
  wire \ALUResult[10]_INST_0_i_9_n_0 ;
  wire \ALUResult[11]_INST_0_i_10_n_0 ;
  wire \ALUResult[11]_INST_0_i_11_n_0 ;
  wire \ALUResult[11]_INST_0_i_12_n_0 ;
  wire \ALUResult[11]_INST_0_i_13_n_0 ;
  wire \ALUResult[11]_INST_0_i_1_n_0 ;
  wire \ALUResult[11]_INST_0_i_2_0 ;
  wire \ALUResult[11]_INST_0_i_2_n_0 ;
  wire \ALUResult[11]_INST_0_i_3_n_0 ;
  wire \ALUResult[11]_INST_0_i_4_n_0 ;
  wire \ALUResult[11]_INST_0_i_5_n_0 ;
  wire \ALUResult[11]_INST_0_i_6_n_0 ;
  wire \ALUResult[11]_INST_0_i_8_n_0 ;
  wire \ALUResult[11]_INST_0_i_9_n_0 ;
  wire \ALUResult[12]_INST_0_i_10_n_0 ;
  wire \ALUResult[12]_INST_0_i_12_n_0 ;
  wire \ALUResult[12]_INST_0_i_13_n_0 ;
  wire \ALUResult[12]_INST_0_i_14_n_0 ;
  wire \ALUResult[12]_INST_0_i_1_n_0 ;
  wire \ALUResult[12]_INST_0_i_2_0 ;
  wire \ALUResult[12]_INST_0_i_2_n_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_4_n_0 ;
  wire \ALUResult[12]_INST_0_i_5_n_0 ;
  wire \ALUResult[12]_INST_0_i_6_n_0 ;
  wire \ALUResult[12]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_9_n_0 ;
  wire \ALUResult[13]_INST_0_i_10_n_0 ;
  wire \ALUResult[13]_INST_0_i_12_n_0 ;
  wire \ALUResult[13]_INST_0_i_13_n_0 ;
  wire \ALUResult[13]_INST_0_i_14_n_0 ;
  wire \ALUResult[13]_INST_0_i_1_n_0 ;
  wire \ALUResult[13]_INST_0_i_2_0 ;
  wire \ALUResult[13]_INST_0_i_2_n_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_4_n_0 ;
  wire \ALUResult[13]_INST_0_i_5_n_0 ;
  wire \ALUResult[13]_INST_0_i_6_n_0 ;
  wire \ALUResult[13]_INST_0_i_8_n_0 ;
  wire \ALUResult[13]_INST_0_i_9_n_0 ;
  wire \ALUResult[14]_INST_0_i_10_n_0 ;
  wire \ALUResult[14]_INST_0_i_12_n_0 ;
  wire \ALUResult[14]_INST_0_i_13_n_0 ;
  wire \ALUResult[14]_INST_0_i_14_n_0 ;
  wire \ALUResult[14]_INST_0_i_1_n_0 ;
  wire \ALUResult[14]_INST_0_i_2_0 ;
  wire \ALUResult[14]_INST_0_i_2_n_0 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_4_n_0 ;
  wire \ALUResult[14]_INST_0_i_5_n_0 ;
  wire \ALUResult[14]_INST_0_i_6_n_0 ;
  wire \ALUResult[14]_INST_0_i_8_n_0 ;
  wire \ALUResult[14]_INST_0_i_9_n_0 ;
  wire \ALUResult[15]_INST_0_i_10_n_0 ;
  wire \ALUResult[15]_INST_0_i_12_n_0 ;
  wire \ALUResult[15]_INST_0_i_13_n_0 ;
  wire \ALUResult[15]_INST_0_i_14_n_0 ;
  wire \ALUResult[15]_INST_0_i_1_n_0 ;
  wire \ALUResult[15]_INST_0_i_2_0 ;
  wire \ALUResult[15]_INST_0_i_2_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_4_n_0 ;
  wire \ALUResult[15]_INST_0_i_5_n_0 ;
  wire \ALUResult[15]_INST_0_i_6_n_0 ;
  wire \ALUResult[15]_INST_0_i_8_n_0 ;
  wire \ALUResult[15]_INST_0_i_9_n_0 ;
  wire \ALUResult[16]_INST_0_i_10_n_0 ;
  wire \ALUResult[16]_INST_0_i_12_n_0 ;
  wire \ALUResult[16]_INST_0_i_13_n_0 ;
  wire \ALUResult[16]_INST_0_i_14_n_0 ;
  wire \ALUResult[16]_INST_0_i_15_n_0 ;
  wire \ALUResult[16]_INST_0_i_1_n_0 ;
  wire \ALUResult[16]_INST_0_i_2_0 ;
  wire \ALUResult[16]_INST_0_i_2_n_0 ;
  wire \ALUResult[16]_INST_0_i_3_n_0 ;
  wire \ALUResult[16]_INST_0_i_4_n_0 ;
  wire \ALUResult[16]_INST_0_i_5_n_0 ;
  wire \ALUResult[16]_INST_0_i_6_n_0 ;
  wire \ALUResult[16]_INST_0_i_8_n_0 ;
  wire \ALUResult[16]_INST_0_i_9_n_0 ;
  wire \ALUResult[17]_INST_0_i_10_n_0 ;
  wire \ALUResult[17]_INST_0_i_12_n_0 ;
  wire \ALUResult[17]_INST_0_i_13_n_0 ;
  wire \ALUResult[17]_INST_0_i_14_n_0 ;
  wire \ALUResult[17]_INST_0_i_15_n_0 ;
  wire \ALUResult[17]_INST_0_i_1_n_0 ;
  wire \ALUResult[17]_INST_0_i_2_0 ;
  wire \ALUResult[17]_INST_0_i_2_n_0 ;
  wire \ALUResult[17]_INST_0_i_3_n_0 ;
  wire \ALUResult[17]_INST_0_i_4_n_0 ;
  wire \ALUResult[17]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_6_n_0 ;
  wire \ALUResult[17]_INST_0_i_8_n_0 ;
  wire \ALUResult[17]_INST_0_i_9_n_0 ;
  wire \ALUResult[18]_INST_0_i_10_n_0 ;
  wire \ALUResult[18]_INST_0_i_12_n_0 ;
  wire \ALUResult[18]_INST_0_i_13_n_0 ;
  wire \ALUResult[18]_INST_0_i_14_n_0 ;
  wire \ALUResult[18]_INST_0_i_15_n_0 ;
  wire \ALUResult[18]_INST_0_i_1_n_0 ;
  wire \ALUResult[18]_INST_0_i_2_0 ;
  wire \ALUResult[18]_INST_0_i_2_n_0 ;
  wire \ALUResult[18]_INST_0_i_3_n_0 ;
  wire \ALUResult[18]_INST_0_i_4_n_0 ;
  wire \ALUResult[18]_INST_0_i_5_n_0 ;
  wire \ALUResult[18]_INST_0_i_6_n_0 ;
  wire \ALUResult[18]_INST_0_i_8_n_0 ;
  wire \ALUResult[18]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_10_n_0 ;
  wire \ALUResult[19]_INST_0_i_12_n_0 ;
  wire \ALUResult[19]_INST_0_i_13_n_0 ;
  wire \ALUResult[19]_INST_0_i_14_n_0 ;
  wire \ALUResult[19]_INST_0_i_15_n_0 ;
  wire \ALUResult[19]_INST_0_i_16_n_0 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_4_n_0 ;
  wire \ALUResult[19]_INST_0_i_5_n_0 ;
  wire \ALUResult[19]_INST_0_i_6_0 ;
  wire \ALUResult[19]_INST_0_i_6_n_0 ;
  wire \ALUResult[19]_INST_0_i_8_n_0 ;
  wire \ALUResult[19]_INST_0_i_9_n_0 ;
  wire \ALUResult[1]_INST_0_i_11_n_0 ;
  wire \ALUResult[1]_INST_0_i_2 ;
  wire \ALUResult[1]_INST_0_i_3_n_0 ;
  wire \ALUResult[1]_INST_0_i_4_n_0 ;
  wire \ALUResult[1]_INST_0_i_5_n_0 ;
  wire \ALUResult[1]_INST_0_i_6_0 ;
  wire \ALUResult[1]_INST_0_i_6_n_0 ;
  wire \ALUResult[1]_INST_0_i_8_n_0 ;
  wire \ALUResult[1]_INST_0_i_9_n_0 ;
  wire \ALUResult[20]_INST_0_i_10_n_0 ;
  wire \ALUResult[20]_INST_0_i_11_n_0 ;
  wire \ALUResult[20]_INST_0_i_12_n_0 ;
  wire \ALUResult[20]_INST_0_i_13_n_0 ;
  wire \ALUResult[20]_INST_0_i_14_n_0 ;
  wire \ALUResult[20]_INST_0_i_1_n_0 ;
  wire \ALUResult[20]_INST_0_i_2_0 ;
  wire \ALUResult[20]_INST_0_i_2_n_0 ;
  wire \ALUResult[20]_INST_0_i_3_n_0 ;
  wire \ALUResult[20]_INST_0_i_4_n_0 ;
  wire \ALUResult[20]_INST_0_i_5_n_0 ;
  wire \ALUResult[20]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_8_n_0 ;
  wire \ALUResult[20]_INST_0_i_9_n_0 ;
  wire \ALUResult[21]_INST_0_i_10_n_0 ;
  wire \ALUResult[21]_INST_0_i_11_n_0 ;
  wire \ALUResult[21]_INST_0_i_12_n_0 ;
  wire \ALUResult[21]_INST_0_i_13_n_0 ;
  wire \ALUResult[21]_INST_0_i_14_n_0 ;
  wire \ALUResult[21]_INST_0_i_1_n_0 ;
  wire \ALUResult[21]_INST_0_i_2_0 ;
  wire \ALUResult[21]_INST_0_i_2_n_0 ;
  wire \ALUResult[21]_INST_0_i_3_n_0 ;
  wire \ALUResult[21]_INST_0_i_4_n_0 ;
  wire \ALUResult[21]_INST_0_i_5_n_0 ;
  wire \ALUResult[21]_INST_0_i_6_n_0 ;
  wire \ALUResult[21]_INST_0_i_8_n_0 ;
  wire \ALUResult[21]_INST_0_i_9_n_0 ;
  wire \ALUResult[22]_INST_0_i_10_n_0 ;
  wire \ALUResult[22]_INST_0_i_11_n_0 ;
  wire \ALUResult[22]_INST_0_i_12_n_0 ;
  wire \ALUResult[22]_INST_0_i_13_n_0 ;
  wire \ALUResult[22]_INST_0_i_14_n_0 ;
  wire \ALUResult[22]_INST_0_i_1_n_0 ;
  wire \ALUResult[22]_INST_0_i_2_0 ;
  wire \ALUResult[22]_INST_0_i_2_n_0 ;
  wire \ALUResult[22]_INST_0_i_3_n_0 ;
  wire \ALUResult[22]_INST_0_i_4_n_0 ;
  wire \ALUResult[22]_INST_0_i_5_n_0 ;
  wire \ALUResult[22]_INST_0_i_6_n_0 ;
  wire \ALUResult[22]_INST_0_i_8_n_0 ;
  wire \ALUResult[22]_INST_0_i_9_n_0 ;
  wire \ALUResult[23]_INST_0_i_10_n_0 ;
  wire \ALUResult[23]_INST_0_i_11_n_0 ;
  wire \ALUResult[23]_INST_0_i_12_n_0 ;
  wire \ALUResult[23]_INST_0_i_1_n_0 ;
  wire \ALUResult[23]_INST_0_i_2_0 ;
  wire \ALUResult[23]_INST_0_i_2_n_0 ;
  wire \ALUResult[23]_INST_0_i_3_n_0 ;
  wire \ALUResult[23]_INST_0_i_4_n_0 ;
  wire \ALUResult[23]_INST_0_i_5_n_0 ;
  wire \ALUResult[23]_INST_0_i_6_n_0 ;
  wire \ALUResult[23]_INST_0_i_8_n_0 ;
  wire \ALUResult[23]_INST_0_i_9_n_0 ;
  wire \ALUResult[24]_INST_0_i_10_n_0 ;
  wire \ALUResult[24]_INST_0_i_11_n_0 ;
  wire \ALUResult[24]_INST_0_i_12_n_0 ;
  wire \ALUResult[24]_INST_0_i_13_n_0 ;
  wire \ALUResult[24]_INST_0_i_1_n_0 ;
  wire \ALUResult[24]_INST_0_i_2_0 ;
  wire \ALUResult[24]_INST_0_i_2_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_4_n_0 ;
  wire \ALUResult[24]_INST_0_i_5_n_0 ;
  wire \ALUResult[24]_INST_0_i_6_n_0 ;
  wire \ALUResult[24]_INST_0_i_8_n_0 ;
  wire \ALUResult[24]_INST_0_i_9_n_0 ;
  wire \ALUResult[25]_INST_0_i_10_n_0 ;
  wire \ALUResult[25]_INST_0_i_11_n_0 ;
  wire \ALUResult[25]_INST_0_i_12_n_0 ;
  wire \ALUResult[25]_INST_0_i_1_n_0 ;
  wire \ALUResult[25]_INST_0_i_2_0 ;
  wire \ALUResult[25]_INST_0_i_2_n_0 ;
  wire \ALUResult[25]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_4_n_0 ;
  wire \ALUResult[25]_INST_0_i_5_n_0 ;
  wire \ALUResult[25]_INST_0_i_6_n_0 ;
  wire \ALUResult[25]_INST_0_i_8_n_0 ;
  wire \ALUResult[25]_INST_0_i_9_n_0 ;
  wire \ALUResult[26]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_11_n_0 ;
  wire \ALUResult[26]_INST_0_i_12_n_0 ;
  wire \ALUResult[26]_INST_0_i_13_n_0 ;
  wire \ALUResult[26]_INST_0_i_1_n_0 ;
  wire \ALUResult[26]_INST_0_i_2_0 ;
  wire \ALUResult[26]_INST_0_i_2_n_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[26]_INST_0_i_4_n_0 ;
  wire \ALUResult[26]_INST_0_i_5_n_0 ;
  wire \ALUResult[26]_INST_0_i_6_n_0 ;
  wire \ALUResult[26]_INST_0_i_8_n_0 ;
  wire \ALUResult[26]_INST_0_i_9_n_0 ;
  wire \ALUResult[27]_INST_0_i_10_n_0 ;
  wire \ALUResult[27]_INST_0_i_11_n_0 ;
  wire \ALUResult[27]_INST_0_i_12_n_0 ;
  wire \ALUResult[27]_INST_0_i_1_n_0 ;
  wire \ALUResult[27]_INST_0_i_2_0 ;
  wire \ALUResult[27]_INST_0_i_2_n_0 ;
  wire \ALUResult[27]_INST_0_i_3_n_0 ;
  wire \ALUResult[27]_INST_0_i_4_n_0 ;
  wire \ALUResult[27]_INST_0_i_5_n_0 ;
  wire \ALUResult[27]_INST_0_i_6_n_0 ;
  wire \ALUResult[27]_INST_0_i_8_n_0 ;
  wire \ALUResult[27]_INST_0_i_9_n_0 ;
  wire \ALUResult[28]_INST_0_i_10_n_0 ;
  wire \ALUResult[28]_INST_0_i_11_n_0 ;
  wire \ALUResult[28]_INST_0_i_12_n_0 ;
  wire \ALUResult[28]_INST_0_i_1_n_0 ;
  wire \ALUResult[28]_INST_0_i_2_0 ;
  wire \ALUResult[28]_INST_0_i_2_n_0 ;
  wire \ALUResult[28]_INST_0_i_3_n_0 ;
  wire \ALUResult[28]_INST_0_i_4_n_0 ;
  wire \ALUResult[28]_INST_0_i_5_n_0 ;
  wire \ALUResult[28]_INST_0_i_6_n_0 ;
  wire \ALUResult[28]_INST_0_i_8_n_0 ;
  wire \ALUResult[28]_INST_0_i_9_n_0 ;
  wire \ALUResult[29]_INST_0_i_10_n_0 ;
  wire \ALUResult[29]_INST_0_i_11_n_0 ;
  wire \ALUResult[29]_INST_0_i_1_n_0 ;
  wire \ALUResult[29]_INST_0_i_2_0 ;
  wire \ALUResult[29]_INST_0_i_2_n_0 ;
  wire \ALUResult[29]_INST_0_i_3_n_0 ;
  wire \ALUResult[29]_INST_0_i_4_n_0 ;
  wire \ALUResult[29]_INST_0_i_5_n_0 ;
  wire \ALUResult[29]_INST_0_i_6_n_0 ;
  wire \ALUResult[29]_INST_0_i_8_n_0 ;
  wire \ALUResult[29]_INST_0_i_9_n_0 ;
  wire \ALUResult[2]_INST_0_i_10_n_0 ;
  wire \ALUResult[2]_INST_0_i_13_n_0 ;
  wire \ALUResult[2]_INST_0_i_1_n_0 ;
  wire \ALUResult[2]_INST_0_i_2_0 ;
  wire \ALUResult[2]_INST_0_i_2_n_0 ;
  wire \ALUResult[2]_INST_0_i_3_n_0 ;
  wire \ALUResult[2]_INST_0_i_4_n_0 ;
  wire \ALUResult[2]_INST_0_i_5_n_0 ;
  wire \ALUResult[2]_INST_0_i_6_n_0 ;
  wire \ALUResult[2]_INST_0_i_8_n_0 ;
  wire \ALUResult[2]_INST_0_i_9_n_0 ;
  wire \ALUResult[30]_INST_0_i_10_n_0 ;
  wire \ALUResult[30]_INST_0_i_11_n_0 ;
  wire \ALUResult[30]_INST_0_i_1_n_0 ;
  wire \ALUResult[30]_INST_0_i_2_0 ;
  wire \ALUResult[30]_INST_0_i_2_n_0 ;
  wire \ALUResult[30]_INST_0_i_3_n_0 ;
  wire \ALUResult[30]_INST_0_i_4_n_0 ;
  wire \ALUResult[30]_INST_0_i_5_n_0 ;
  wire \ALUResult[30]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_8_n_0 ;
  wire \ALUResult[30]_INST_0_i_9_n_0 ;
  wire \ALUResult[31]_INST_0_i_12_n_0 ;
  wire \ALUResult[31]_INST_0_i_13_n_0 ;
  wire \ALUResult[31]_INST_0_i_14_n_0 ;
  wire \ALUResult[31]_INST_0_i_15_n_0 ;
  wire \ALUResult[31]_INST_0_i_16_n_0 ;
  wire \ALUResult[31]_INST_0_i_17_n_0 ;
  wire \ALUResult[31]_INST_0_i_18_n_0 ;
  wire \ALUResult[31]_INST_0_i_19_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_21_n_0 ;
  wire \ALUResult[31]_INST_0_i_22_n_0 ;
  wire \ALUResult[31]_INST_0_i_2_n_0 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_3_n_0 ;
  wire \ALUResult[31]_INST_0_i_6_n_0 ;
  wire \ALUResult[31]_INST_0_i_7_n_0 ;
  wire \ALUResult[31]_INST_0_i_9_n_0 ;
  wire \ALUResult[3]_INST_0_i_10_n_0 ;
  wire \ALUResult[3]_INST_0_i_13_n_0 ;
  wire \ALUResult[3]_INST_0_i_1_n_0 ;
  wire \ALUResult[3]_INST_0_i_2_0 ;
  wire \ALUResult[3]_INST_0_i_2_n_0 ;
  wire \ALUResult[3]_INST_0_i_3_n_0 ;
  wire \ALUResult[3]_INST_0_i_4_n_0 ;
  wire \ALUResult[3]_INST_0_i_5_n_0 ;
  wire \ALUResult[3]_INST_0_i_6_n_0 ;
  wire \ALUResult[3]_INST_0_i_8_n_0 ;
  wire \ALUResult[3]_INST_0_i_9_n_0 ;
  wire \ALUResult[4]_INST_0_i_10_n_0 ;
  wire \ALUResult[4]_INST_0_i_13_n_0 ;
  wire \ALUResult[4]_INST_0_i_1_n_0 ;
  wire \ALUResult[4]_INST_0_i_2_0 ;
  wire \ALUResult[4]_INST_0_i_2_n_0 ;
  wire \ALUResult[4]_INST_0_i_3_n_0 ;
  wire \ALUResult[4]_INST_0_i_4_n_0 ;
  wire \ALUResult[4]_INST_0_i_5_n_0 ;
  wire \ALUResult[4]_INST_0_i_6_n_0 ;
  wire \ALUResult[4]_INST_0_i_8_n_0 ;
  wire \ALUResult[4]_INST_0_i_9_n_0 ;
  wire \ALUResult[5]_INST_0_i_10_n_0 ;
  wire \ALUResult[5]_INST_0_i_11_n_0 ;
  wire \ALUResult[5]_INST_0_i_1_n_0 ;
  wire \ALUResult[5]_INST_0_i_2_0 ;
  wire \ALUResult[5]_INST_0_i_2_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_n_0 ;
  wire \ALUResult[5]_INST_0_i_4_n_0 ;
  wire \ALUResult[5]_INST_0_i_5_n_0 ;
  wire \ALUResult[5]_INST_0_i_6_n_0 ;
  wire \ALUResult[5]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_9_n_0 ;
  wire \ALUResult[6]_INST_0_i_10_n_0 ;
  wire \ALUResult[6]_INST_0_i_11_n_0 ;
  wire \ALUResult[6]_INST_0_i_1_n_0 ;
  wire \ALUResult[6]_INST_0_i_2_0 ;
  wire \ALUResult[6]_INST_0_i_2_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_4_n_0 ;
  wire \ALUResult[6]_INST_0_i_5_n_0 ;
  wire \ALUResult[6]_INST_0_i_6_n_0 ;
  wire \ALUResult[6]_INST_0_i_8_n_0 ;
  wire \ALUResult[6]_INST_0_i_9_n_0 ;
  wire \ALUResult[7]_INST_0_i_10_n_0 ;
  wire \ALUResult[7]_INST_0_i_11_n_0 ;
  wire \ALUResult[7]_INST_0_i_12_n_0 ;
  wire \ALUResult[7]_INST_0_i_1_n_0 ;
  wire \ALUResult[7]_INST_0_i_2_0 ;
  wire \ALUResult[7]_INST_0_i_2_n_0 ;
  wire \ALUResult[7]_INST_0_i_3_n_0 ;
  wire \ALUResult[7]_INST_0_i_4_n_0 ;
  wire \ALUResult[7]_INST_0_i_5_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[7]_INST_0_i_8_n_0 ;
  wire \ALUResult[7]_INST_0_i_9_n_0 ;
  wire \ALUResult[8]_INST_0_i_10_n_0 ;
  wire \ALUResult[8]_INST_0_i_11_n_0 ;
  wire \ALUResult[8]_INST_0_i_12_n_0 ;
  wire \ALUResult[8]_INST_0_i_13_n_0 ;
  wire \ALUResult[8]_INST_0_i_1_n_0 ;
  wire \ALUResult[8]_INST_0_i_2_0 ;
  wire \ALUResult[8]_INST_0_i_2_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_4_n_0 ;
  wire \ALUResult[8]_INST_0_i_5_n_0 ;
  wire \ALUResult[8]_INST_0_i_6_n_0 ;
  wire \ALUResult[8]_INST_0_i_8_n_0 ;
  wire \ALUResult[8]_INST_0_i_9_n_0 ;
  wire \ALUResult[9]_INST_0_i_10_n_0 ;
  wire \ALUResult[9]_INST_0_i_11_n_0 ;
  wire \ALUResult[9]_INST_0_i_12_n_0 ;
  wire \ALUResult[9]_INST_0_i_13_n_0 ;
  wire \ALUResult[9]_INST_0_i_1_n_0 ;
  wire \ALUResult[9]_INST_0_i_2_0 ;
  wire \ALUResult[9]_INST_0_i_2_n_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_4_n_0 ;
  wire \ALUResult[9]_INST_0_i_5_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_n_0 ;
  wire \ALUResult[9]_INST_0_i_8_n_0 ;
  wire \ALUResult[9]_INST_0_i_9_n_0 ;
  wire ALUSrc;
  wire BControl__8;
  wire [0:0]CO;
  wire [28:0]D;
  wire [3:0]DI;
  wire [7:0]ImmExt;
  wire [0:0]ImmSrc;
  wire [28:0]Instr;
  wire [0:0]O;
  wire [27:0]PCPlus4;
  wire [31:2]PCTarget;
  wire [28:0]PCTargetI;
  wire [0:0]Q;
  wire [15:0]ReadData;
  wire RegWrite;
  wire [31:0]Result;
  wire [0:0]ResultSrc;
  wire [3:0]S;
  wire [31:0]SrcB;
  wire [23:0]WriteData;
  wire \WriteData[10]_INST_0_i_1_n_0 ;
  wire \WriteData[10]_INST_0_i_2_n_0 ;
  wire \WriteData[11]_INST_0_i_1_n_0 ;
  wire \WriteData[11]_INST_0_i_2_n_0 ;
  wire \WriteData[12]_INST_0_i_1_n_0 ;
  wire \WriteData[12]_INST_0_i_2_n_0 ;
  wire \WriteData[13]_INST_0_i_1_n_0 ;
  wire \WriteData[13]_INST_0_i_2_n_0 ;
  wire \WriteData[14]_INST_0_i_1_n_0 ;
  wire \WriteData[14]_INST_0_i_2_n_0 ;
  wire \WriteData[15]_INST_0_i_1_n_0 ;
  wire \WriteData[15]_INST_0_i_2_n_0 ;
  wire \WriteData[24]_INST_0_i_1_n_0 ;
  wire \WriteData[25]_INST_0_i_1_n_0 ;
  wire \WriteData[26]_INST_0_i_1_n_0 ;
  wire \WriteData[27]_INST_0_i_1_n_0 ;
  wire \WriteData[28]_INST_0_i_1_n_0 ;
  wire \WriteData[29]_INST_0_i_1_n_0 ;
  wire \WriteData[30]_INST_0_i_1_n_0 ;
  wire \WriteData[31]_INST_0_i_2_n_0 ;
  wire \WriteData[8]_INST_0_i_1_n_0 ;
  wire \WriteData[8]_INST_0_i_2_n_0 ;
  wire \WriteData[9]_INST_0_i_1_n_0 ;
  wire \WriteData[9]_INST_0_i_2_n_0 ;
  wire \addressM[0] ;
  wire [0:0]\alu/result00_out ;
  wire clk;
  wire [3:0]clk_0;
  wire clk_1;
  wire clk_10;
  wire clk_11;
  wire clk_12;
  wire clk_13;
  wire clk_14;
  wire clk_15;
  wire clk_16;
  wire clk_17;
  wire clk_18;
  wire clk_19;
  wire [1:0]clk_2;
  wire clk_20;
  wire clk_21;
  wire clk_22;
  wire clk_23;
  wire clk_24;
  wire clk_25;
  wire clk_26;
  wire clk_27;
  wire clk_28;
  wire clk_29;
  wire [3:0]clk_3;
  wire clk_30;
  wire clk_31;
  wire clk_32;
  wire clk_33;
  wire clk_34;
  wire clk_35;
  wire clk_36;
  wire clk_37;
  wire clk_38;
  wire clk_39;
  wire [3:0]clk_4;
  wire clk_40;
  wire clk_41;
  wire clk_42;
  wire clk_43;
  wire clk_44;
  wire clk_45;
  wire clk_46;
  wire clk_47;
  wire clk_48;
  wire clk_49;
  wire [3:0]clk_5;
  wire [3:0]clk_50;
  wire [3:0]clk_51;
  wire [3:0]clk_52;
  wire [3:0]clk_53;
  wire [3:0]clk_54;
  wire [3:0]clk_55;
  wire [3:0]clk_56;
  wire [3:0]clk_57;
  wire [3:0]clk_58;
  wire [3:0]clk_59;
  wire [3:0]clk_6;
  wire [3:0]clk_60;
  wire [3:0]clk_61;
  wire [3:0]clk_62;
  wire [3:0]clk_63;
  wire [3:0]clk_7;
  wire [3:0]clk_8;
  wire [3:0]clk_9;
  wire i__carry_i_4_0;
  wire \q[31]_i_10_n_0 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_12_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_3_0 ;
  wire \q[31]_i_4_n_0 ;
  wire \q[31]_i_5_n_0 ;
  wire \q[31]_i_6_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q[31]_i_9_n_0 ;
  wire [31:0]rd10;
  wire rd11__3;
  wire [7:0]rd20;
  wire [31:8]rd20_0;
  wire rd21__3;
  wire rf_reg_r1_0_31_6_11_i_9_0;
  wire [30:0]sum;
  wire sum__0_carry__0_i_8_0;
  wire sum__0_carry__0_i_8_1;
  wire sum__0_carry__1_i_5_0;
  wire sum__0_carry_i_6_0;
  wire sum__0_carry_i_6_1;
  wire sum__0_carry_i_7_0;
  wire sum__0_carry_i_7_1;
  wire sum__0_carry_i_7_2;
  wire \writeDataM[15] ;
  wire \writeDataM[16] ;
  wire \writeDataM[17] ;
  wire \writeDataM[18] ;
  wire \writeDataM[19] ;
  wire \writeDataM[20] ;
  wire \writeDataM[21] ;
  wire \writeDataM[22] ;
  wire \writeDataM[23] ;
  wire \writeDataM[8] ;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[0]_INST_0_i_11 
       (.I0(rd10[0]),
        .I1(\addressM[0] ),
        .I2(SrcB[0]),
        .I3(ALUControl__0[0]),
        .I4(sum[0]),
        .O(\ALUResult[0]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \ALUResult[0]_INST_0_i_12 
       (.I0(\ALUResult[1]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_14_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[1]_INST_0_i_9_n_0 ),
        .I4(SrcB[0]),
        .O(\ALUResult[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[0]_INST_0_i_14 
       (.I0(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[4]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[0]_INST_0_i_16_n_0 ),
        .O(\ALUResult[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBE00080028)) 
    \ALUResult[0]_INST_0_i_15 
       (.I0(clk_1),
        .I1(ALUControl),
        .I2(SrcB[31]),
        .I3(ALUControl__0[0]),
        .I4(ALUControl__0[1]),
        .I5(O),
        .O(\alu/result00_out ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[0]_INST_0_i_16 
       (.I0(clk_46),
        .I1(clk_47),
        .I2(SrcB[3]),
        .I3(clk_45),
        .I4(SrcB[4]),
        .I5(clk_48),
        .O(\ALUResult[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9CCC)) 
    \ALUResult[0]_INST_0_i_2 
       (.I0(ALUControl__0[1]),
        .I1(SrcB[0]),
        .I2(rd10[0]),
        .I3(\addressM[0] ),
        .O(clk_49));
  MUXF7 \ALUResult[0]_INST_0_i_3 
       (.I0(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_9_n_0 ),
        .O(\ALUResult[0]_INST_0_i_9_0 ),
        .S(ALUControl__0[1]));
  MUXF7 \ALUResult[0]_INST_0_i_5 
       (.I0(\ALUResult[0]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_12_n_0 ),
        .O(\ALUResult[0]_INST_0_i_12_0 ),
        .S(ALUControl__0[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[0]_INST_0_i_6 
       (.I0(i__carry_i_4_0),
        .I1(rd21__3),
        .I2(rd20[0]),
        .I3(ALUSrc),
        .O(SrcB[0]));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(rd10[0]),
        .I1(\addressM[0] ),
        .I2(SrcB[0]),
        .I3(ALUControl__0[0]),
        .I4(sum[0]),
        .O(\ALUResult[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(\ALUResult[1]_INST_0_i_8_n_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[0]_INST_0_i_14_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(\alu/result00_out ),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[10]_INST_0 
       (.I0(\ALUResult[10]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_2_n_0 ),
        .O(\ALUResult[10]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(\ALUResult[10]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[10]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[10]_INST_0_i_6_n_0 ),
        .O(\ALUResult[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[10]_INST_0_i_10 
       (.I0(\ALUResult[10]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[12]_INST_0_i_14_n_0 ),
        .O(\ALUResult[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_11 
       (.I0(clk_1),
        .I1(clk_35),
        .I2(SrcB[3]),
        .I3(clk_33),
        .I4(SrcB[4]),
        .I5(clk_34),
        .O(\ALUResult[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[10]_INST_0_i_12 
       (.I0(rd10[18]),
        .I1(SrcB[3]),
        .I2(rd10[26]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[10]),
        .O(\ALUResult[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[10]_INST_0_i_13 
       (.I0(rd10[3]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[7]),
        .I5(SrcB[3]),
        .O(\ALUResult[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[10]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[10]),
        .I5(clk_34),
        .O(\ALUResult[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[10]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[10]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[11]_INST_0_i_8_n_0 ),
        .O(\ALUResult[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(rd10[10]),
        .I1(\addressM[0] ),
        .I2(SrcB[10]),
        .I3(ALUControl__0[0]),
        .I4(sum[10]),
        .O(\ALUResult[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[10]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[11]_INST_0_i_10_n_0 ),
        .O(\ALUResult[10]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(rd10[10]),
        .I1(\addressM[0] ),
        .I2(SrcB[10]),
        .I3(ALUControl__0[0]),
        .I4(sum[10]),
        .O(\ALUResult[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[10]_INST_0_i_7 
       (.I0(Instr[27]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20_0[10]),
        .I5(ALUSrc),
        .O(SrcB[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_8 
       (.I0(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[14]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_11_n_0 ),
        .O(\ALUResult[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_9 
       (.I0(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[10]_INST_0_i_12_n_0 ),
        .O(\ALUResult[10]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[11]_INST_0 
       (.I0(\ALUResult[11]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_2_n_0 ),
        .O(\ALUResult[11]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(\ALUResult[11]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[11]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[11]_INST_0_i_6_n_0 ),
        .O(\ALUResult[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[11]_INST_0_i_10 
       (.I0(\ALUResult[11]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[13]_INST_0_i_14_n_0 ),
        .O(\ALUResult[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_11 
       (.I0(clk_1),
        .I1(clk_28),
        .I2(SrcB[3]),
        .I3(clk_26),
        .I4(SrcB[4]),
        .I5(clk_27),
        .O(\ALUResult[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[11]_INST_0_i_12 
       (.I0(rd10[19]),
        .I1(SrcB[3]),
        .I2(rd10[27]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[11]),
        .O(\ALUResult[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[11]_INST_0_i_13 
       (.I0(clk_44),
        .I1(SrcB[2]),
        .I2(clk_48),
        .I3(SrcB[3]),
        .I4(clk_47),
        .I5(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[11]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[11]),
        .I5(clk_27),
        .O(\ALUResult[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[11]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[11]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[12]_INST_0_i_8_n_0 ),
        .O(\ALUResult[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(rd10[11]),
        .I1(\addressM[0] ),
        .I2(SrcB[11]),
        .I3(ALUControl__0[0]),
        .I4(sum[11]),
        .O(\ALUResult[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(\ALUResult[12]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[12]_INST_0_i_10_n_0 ),
        .O(\ALUResult[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(rd10[11]),
        .I1(\addressM[0] ),
        .I2(SrcB[11]),
        .I3(ALUControl__0[0]),
        .I4(sum[11]),
        .O(\ALUResult[11]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(sum__0_carry__1_i_5_0),
        .I1(rd21__3),
        .I2(rd20_0[11]),
        .I3(ALUSrc),
        .O(SrcB[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_8 
       (.I0(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_11_n_0 ),
        .O(\ALUResult[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_9 
       (.I0(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[11]_INST_0_i_12_n_0 ),
        .O(\ALUResult[11]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[12]_INST_0 
       (.I0(\ALUResult[12]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_2_n_0 ),
        .O(\ALUResult[12]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[12]_INST_0_i_6_n_0 ),
        .O(\ALUResult[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_10 
       (.I0(\ALUResult[12]_INST_0_i_14_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[14]_INST_0_i_14_n_0 ),
        .O(\ALUResult[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_12 
       (.I0(clk_1),
        .I1(clk_43),
        .I2(SrcB[3]),
        .I3(clk_41),
        .I4(SrcB[4]),
        .I5(clk_42),
        .O(\ALUResult[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[12]_INST_0_i_13 
       (.I0(rd10[20]),
        .I1(SrcB[3]),
        .I2(rd10[28]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[12]),
        .O(\ALUResult[12]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[12]_INST_0_i_14 
       (.I0(clk_25),
        .I1(SrcB[2]),
        .I2(clk_21),
        .I3(SrcB[3]),
        .I4(clk_19),
        .I5(SrcB[4]),
        .O(\ALUResult[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[12]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[12]),
        .I5(clk_42),
        .O(\ALUResult[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[13]_INST_0_i_8_n_0 ),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(rd10[12]),
        .I1(\addressM[0] ),
        .I2(SrcB[12]),
        .I3(ALUControl__0[0]),
        .I4(sum[12]),
        .O(\ALUResult[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[12]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[13]_INST_0_i_10_n_0 ),
        .O(\ALUResult[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[12]_INST_0_i_6 
       (.I0(rd10[12]),
        .I1(\addressM[0] ),
        .I2(SrcB[12]),
        .I3(ALUControl__0[0]),
        .I4(sum[12]),
        .O(\ALUResult[12]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[12]_INST_0_i_7 
       (.I0(ImmExt[0]),
        .I1(rd21__3),
        .I2(rd20_0[12]),
        .I3(ALUSrc),
        .O(SrcB[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_8 
       (.I0(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[12]_INST_0_i_12_n_0 ),
        .O(\ALUResult[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_9 
       (.I0(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[12]_INST_0_i_13_n_0 ),
        .O(\ALUResult[12]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[13]_INST_0 
       (.I0(\ALUResult[13]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_2_n_0 ),
        .O(\ALUResult[13]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[13]_INST_0_i_6_n_0 ),
        .O(\ALUResult[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[13]_INST_0_i_10 
       (.I0(\ALUResult[13]_INST_0_i_14_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[19]_INST_0_i_16_n_0 ),
        .O(\ALUResult[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_12 
       (.I0(clk_1),
        .I1(clk_24),
        .I2(SrcB[3]),
        .I3(clk_22),
        .I4(SrcB[4]),
        .I5(clk_23),
        .O(\ALUResult[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[13]_INST_0_i_13 
       (.I0(rd10[21]),
        .I1(SrcB[3]),
        .I2(rd10[29]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[13]),
        .O(\ALUResult[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[13]_INST_0_i_14 
       (.I0(clk_40),
        .I1(SrcB[2]),
        .I2(clk_36),
        .I3(SrcB[3]),
        .I4(clk_34),
        .I5(SrcB[4]),
        .O(\ALUResult[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[13]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[13]),
        .I5(clk_23),
        .O(\ALUResult[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[14]_INST_0_i_8_n_0 ),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(rd10[13]),
        .I1(\addressM[0] ),
        .I2(SrcB[13]),
        .I3(ALUControl__0[0]),
        .I4(sum[13]),
        .O(\ALUResult[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[13]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[14]_INST_0_i_10_n_0 ),
        .O(\ALUResult[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[13]_INST_0_i_6 
       (.I0(rd10[13]),
        .I1(\addressM[0] ),
        .I2(SrcB[13]),
        .I3(ALUControl__0[0]),
        .I4(sum[13]),
        .O(\ALUResult[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[13]_INST_0_i_7 
       (.I0(ImmExt[1]),
        .I1(rd21__3),
        .I2(rd20_0[13]),
        .I3(ALUSrc),
        .O(SrcB[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_8 
       (.I0(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[13]_INST_0_i_12_n_0 ),
        .O(\ALUResult[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_9 
       (.I0(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[13]_INST_0_i_13_n_0 ),
        .O(\ALUResult[13]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[14]_INST_0 
       (.I0(\ALUResult[14]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_2_n_0 ),
        .O(\ALUResult[14]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[14]_INST_0_i_6_n_0 ),
        .O(\ALUResult[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[14]_INST_0_i_10 
       (.I0(\ALUResult[14]_INST_0_i_14_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[20]_INST_0_i_14_n_0 ),
        .O(\ALUResult[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_12 
       (.I0(clk_1),
        .I1(clk_39),
        .I2(SrcB[3]),
        .I3(clk_37),
        .I4(SrcB[4]),
        .I5(clk_38),
        .O(\ALUResult[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[14]_INST_0_i_13 
       (.I0(rd10[22]),
        .I1(SrcB[3]),
        .I2(rd10[30]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[14]),
        .O(\ALUResult[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[14]_INST_0_i_14 
       (.I0(clk_32),
        .I1(SrcB[2]),
        .I2(clk_29),
        .I3(SrcB[3]),
        .I4(clk_27),
        .I5(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[14]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[14]),
        .I5(clk_38),
        .O(\ALUResult[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[15]_INST_0_i_8_n_0 ),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(rd10[14]),
        .I1(\addressM[0] ),
        .I2(SrcB[14]),
        .I3(ALUControl__0[0]),
        .I4(sum[14]),
        .O(\ALUResult[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[15]_INST_0_i_10_n_0 ),
        .O(\ALUResult[14]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[14]_INST_0_i_6 
       (.I0(rd10[14]),
        .I1(\addressM[0] ),
        .I2(SrcB[14]),
        .I3(ALUControl__0[0]),
        .I4(sum[14]),
        .O(\ALUResult[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[14]_INST_0_i_7 
       (.I0(ImmExt[2]),
        .I1(rd21__3),
        .I2(rd20_0[14]),
        .I3(ALUSrc),
        .O(SrcB[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_8 
       (.I0(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_12_n_0 ),
        .O(\ALUResult[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_9 
       (.I0(\ALUResult[16]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[14]_INST_0_i_13_n_0 ),
        .O(\ALUResult[14]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[15]_INST_0 
       (.I0(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_2_n_0 ),
        .O(\ALUResult[15]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[15]_INST_0_i_6_n_0 ),
        .O(\ALUResult[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_10 
       (.I0(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[17]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[21]_INST_0_i_14_n_0 ),
        .O(\ALUResult[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[15]_INST_0_i_12 
       (.I0(rd10[23]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[15]),
        .O(\ALUResult[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[15]_INST_0_i_13 
       (.I0(rd10[23]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[15]),
        .O(\ALUResult[15]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[15]_INST_0_i_14 
       (.I0(rd10[0]),
        .I1(SrcB[3]),
        .I2(rd10[8]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[15]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[15]),
        .I5(clk_30),
        .O(\ALUResult[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[16]_INST_0_i_8_n_0 ),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(rd10[15]),
        .I1(\addressM[0] ),
        .I2(SrcB[15]),
        .I3(ALUControl__0[0]),
        .I4(sum[15]),
        .O(\ALUResult[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[16]_INST_0_i_10_n_0 ),
        .O(\ALUResult[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[15]_INST_0_i_6 
       (.I0(rd10[15]),
        .I1(\addressM[0] ),
        .I2(SrcB[15]),
        .I3(ALUControl__0[0]),
        .I4(sum[15]),
        .O(\ALUResult[15]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[15]_INST_0_i_7 
       (.I0(ImmExt[3]),
        .I1(rd21__3),
        .I2(rd20_0[15]),
        .I3(ALUSrc),
        .O(SrcB[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_8 
       (.I0(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_12_n_0 ),
        .O(\ALUResult[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_9 
       (.I0(\ALUResult[17]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_13_n_0 ),
        .O(\ALUResult[15]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[16]_INST_0 
       (.I0(\ALUResult[16]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_2_n_0 ),
        .O(\ALUResult[16]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_1 
       (.I0(\ALUResult[16]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[16]_INST_0_i_6_n_0 ),
        .O(\ALUResult[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_10 
       (.I0(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[18]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_14_n_0 ),
        .O(\ALUResult[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[16]_INST_0_i_12 
       (.I0(rd10[24]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[16]),
        .O(\ALUResult[16]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[16]_INST_0_i_13 
       (.I0(rd10[28]),
        .I1(SrcB[3]),
        .I2(rd10[20]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[16]_INST_0_i_14 
       (.I0(rd10[24]),
        .I1(SrcB[3]),
        .I2(rd10[16]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[16]_INST_0_i_15 
       (.I0(rd10[1]),
        .I1(SrcB[3]),
        .I2(rd10[9]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[16]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[16]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[16]),
        .I5(clk_45),
        .O(\ALUResult[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[16]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[17]_INST_0_i_8_n_0 ),
        .O(\ALUResult[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(rd10[16]),
        .I1(\addressM[0] ),
        .I2(SrcB[16]),
        .I3(ALUControl__0[0]),
        .I4(sum[16]),
        .O(\ALUResult[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(\ALUResult[17]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[17]_INST_0_i_10_n_0 ),
        .O(\ALUResult[16]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[16]_INST_0_i_6 
       (.I0(rd10[16]),
        .I1(\addressM[0] ),
        .I2(SrcB[16]),
        .I3(ALUControl__0[0]),
        .I4(sum[16]),
        .O(\ALUResult[16]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[16]_INST_0_i_7 
       (.I0(ImmExt[4]),
        .I1(rd21__3),
        .I2(rd20_0[16]),
        .I3(ALUSrc),
        .O(SrcB[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_8 
       (.I0(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_12_n_0 ),
        .O(\ALUResult[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_9 
       (.I0(\ALUResult[18]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[16]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_14_n_0 ),
        .O(\ALUResult[16]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[17]_INST_0 
       (.I0(\ALUResult[17]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_2_n_0 ),
        .O(\ALUResult[17]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_1 
       (.I0(\ALUResult[17]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[17]_INST_0_i_6_n_0 ),
        .O(\ALUResult[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_10 
       (.I0(\ALUResult[17]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[23]_INST_0_i_12_n_0 ),
        .O(\ALUResult[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[17]_INST_0_i_12 
       (.I0(rd10[25]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[17]),
        .O(\ALUResult[17]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[17]_INST_0_i_13 
       (.I0(rd10[29]),
        .I1(SrcB[3]),
        .I2(rd10[21]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[17]_INST_0_i_14 
       (.I0(rd10[25]),
        .I1(SrcB[3]),
        .I2(rd10[17]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[17]_INST_0_i_15 
       (.I0(rd10[2]),
        .I1(SrcB[3]),
        .I2(rd10[10]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[17]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[17]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[17]),
        .I5(clk_20),
        .O(\ALUResult[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[17]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[18]_INST_0_i_8_n_0 ),
        .O(\ALUResult[17]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(rd10[17]),
        .I1(\addressM[0] ),
        .I2(SrcB[17]),
        .I3(ALUControl__0[0]),
        .I4(sum[17]),
        .O(\ALUResult[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[17]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[18]_INST_0_i_10_n_0 ),
        .O(\ALUResult[17]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[17]_INST_0_i_6 
       (.I0(rd10[17]),
        .I1(\addressM[0] ),
        .I2(SrcB[17]),
        .I3(ALUControl__0[0]),
        .I4(sum[17]),
        .O(\ALUResult[17]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[17]_INST_0_i_7 
       (.I0(ImmExt[5]),
        .I1(rd21__3),
        .I2(rd20_0[17]),
        .I3(ALUSrc),
        .O(SrcB[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_8 
       (.I0(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_12_n_0 ),
        .O(\ALUResult[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_9 
       (.I0(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[17]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_14_n_0 ),
        .O(\ALUResult[17]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[18]_INST_0 
       (.I0(\ALUResult[18]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_2_n_0 ),
        .O(\ALUResult[18]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_1 
       (.I0(\ALUResult[18]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[18]_INST_0_i_6_n_0 ),
        .O(\ALUResult[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_10 
       (.I0(\ALUResult[18]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_14_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[20]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[24]_INST_0_i_13_n_0 ),
        .O(\ALUResult[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[18]_INST_0_i_12 
       (.I0(rd10[26]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[18]),
        .O(\ALUResult[18]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[18]_INST_0_i_13 
       (.I0(rd10[30]),
        .I1(SrcB[3]),
        .I2(rd10[22]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[18]_INST_0_i_14 
       (.I0(rd10[26]),
        .I1(SrcB[3]),
        .I2(rd10[18]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[18]_INST_0_i_15 
       (.I0(rd10[3]),
        .I1(SrcB[3]),
        .I2(rd10[11]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[18]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[18]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[18]),
        .I5(clk_35),
        .O(\ALUResult[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[18]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[19]_INST_0_i_8_n_0 ),
        .O(\ALUResult[18]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(rd10[18]),
        .I1(\addressM[0] ),
        .I2(SrcB[18]),
        .I3(ALUControl__0[0]),
        .I4(sum[18]),
        .O(\ALUResult[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[19]_INST_0_i_10_n_0 ),
        .O(\ALUResult[18]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[18]_INST_0_i_6 
       (.I0(rd10[18]),
        .I1(\addressM[0] ),
        .I2(SrcB[18]),
        .I3(ALUControl__0[0]),
        .I4(sum[18]),
        .O(\ALUResult[18]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[18]_INST_0_i_7 
       (.I0(ImmExt[6]),
        .I1(rd21__3),
        .I2(rd20_0[18]),
        .I3(ALUSrc),
        .O(SrcB[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_8 
       (.I0(\ALUResult[20]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[18]_INST_0_i_12_n_0 ),
        .O(\ALUResult[18]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[18]_INST_0_i_9 
       (.I0(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[18]_INST_0_i_13_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[18]_INST_0_i_14_n_0 ),
        .O(\ALUResult[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_1 
       (.I0(\ALUResult[19]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[19]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[19]_INST_0_i_6_n_0 ),
        .O(\ALUResult[19]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_10 
       (.I0(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[21]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[25]_INST_0_i_12_n_0 ),
        .O(\ALUResult[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \ALUResult[19]_INST_0_i_12 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[23]),
        .O(\ALUResult[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[19]_INST_0_i_13 
       (.I0(rd10[27]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[19]),
        .O(\ALUResult[19]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[19]_INST_0_i_14 
       (.I0(rd10[31]),
        .I1(SrcB[3]),
        .I2(rd10[23]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[19]_INST_0_i_15 
       (.I0(rd10[27]),
        .I1(SrcB[3]),
        .I2(rd10[19]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[19]_INST_0_i_16 
       (.I0(rd10[4]),
        .I1(SrcB[3]),
        .I2(rd10[12]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[19]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[20]_INST_0_i_8_n_0 ),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(rd10[19]),
        .I1(\addressM[0] ),
        .I2(clk_2[1]),
        .I3(ALUControl__0[0]),
        .I4(sum[19]),
        .O(\ALUResult[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(\ALUResult[20]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[20]_INST_0_i_10_n_0 ),
        .O(\ALUResult[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[19]_INST_0_i_6 
       (.I0(rd10[19]),
        .I1(\addressM[0] ),
        .I2(clk_2[1]),
        .I3(ALUControl__0[0]),
        .I4(sum[19]),
        .O(\ALUResult[19]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(ImmExt[7]),
        .I1(rd21__3),
        .I2(rd20_0[19]),
        .I3(ALUSrc),
        .O(clk_2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_8 
       (.I0(\ALUResult[21]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[19]_INST_0_i_13_n_0 ),
        .O(\ALUResult[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[19]_INST_0_i_9 
       (.I0(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[19]_INST_0_i_15_n_0 ),
        .O(\ALUResult[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_1 
       (.I0(\ALUResult[1]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[1]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[1]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[1]_INST_0_i_6_n_0 ),
        .O(\ALUResult[1]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_11 
       (.I0(clk_18),
        .I1(clk_19),
        .I2(SrcB[3]),
        .I3(clk_20),
        .I4(SrcB[4]),
        .I5(clk_21),
        .O(\ALUResult[1]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[1]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[1]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[2]_INST_0_i_8_n_0 ),
        .O(\ALUResult[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(rd10[1]),
        .I1(\addressM[0] ),
        .I2(clk_2[0]),
        .I3(ALUControl__0[0]),
        .I4(sum[1]),
        .O(\ALUResult[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(\ALUResult[2]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[1]_INST_0_i_8_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[1]_INST_0_i_9_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[2]_INST_0_i_10_n_0 ),
        .O(\ALUResult[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(rd10[1]),
        .I1(\addressM[0] ),
        .I2(clk_2[0]),
        .I3(ALUControl__0[0]),
        .I4(sum[1]),
        .O(\ALUResult[1]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(\ALUResult[1]_INST_0_i_2 ),
        .I1(rd21__3),
        .I2(rd20[1]),
        .I3(ALUSrc),
        .O(clk_2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[1]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[1]_INST_0_i_11_n_0 ),
        .O(\ALUResult[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ALUResult[1]_INST_0_i_9 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(\addressM[0] ),
        .I3(rd10[0]),
        .I4(SrcB[3]),
        .I5(clk_2[0]),
        .O(\ALUResult[1]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[20]_INST_0 
       (.I0(\ALUResult[20]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_2_n_0 ),
        .O(\ALUResult[20]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(\ALUResult[20]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[20]_INST_0_i_6_n_0 ),
        .O(\ALUResult[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_10 
       (.I0(\ALUResult[20]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[22]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[26]_INST_0_i_13_n_0 ),
        .O(\ALUResult[20]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \ALUResult[20]_INST_0_i_11 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[24]),
        .O(\ALUResult[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[20]_INST_0_i_12 
       (.I0(rd10[28]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[20]),
        .O(\ALUResult[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[20]_INST_0_i_13 
       (.I0(clk_46),
        .I1(SrcB[2]),
        .I2(clk_41),
        .I3(SrcB[3]),
        .I4(clk_43),
        .I5(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[20]_INST_0_i_14 
       (.I0(rd10[5]),
        .I1(SrcB[3]),
        .I2(rd10[13]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[20]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[20]),
        .I5(clk_43),
        .O(\ALUResult[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[21]_INST_0_i_8_n_0 ),
        .O(\ALUResult[20]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(rd10[20]),
        .I1(\addressM[0] ),
        .I2(SrcB[20]),
        .I3(ALUControl__0[0]),
        .I4(sum[20]),
        .O(\ALUResult[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(\ALUResult[21]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[21]_INST_0_i_10_n_0 ),
        .O(\ALUResult[20]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[20]_INST_0_i_6 
       (.I0(rd10[20]),
        .I1(\addressM[0] ),
        .I2(SrcB[20]),
        .I3(ALUControl__0[0]),
        .I4(sum[20]),
        .O(\ALUResult[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[20]_INST_0_i_7 
       (.I0(Instr[17]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[20]),
        .I5(ALUSrc),
        .O(SrcB[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_8 
       (.I0(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[20]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[20]_INST_0_i_12_n_0 ),
        .O(\ALUResult[20]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[20]_INST_0_i_13_n_0 ),
        .O(\ALUResult[20]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[21]_INST_0 
       (.I0(\ALUResult[21]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_2_n_0 ),
        .O(\ALUResult[21]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(\ALUResult[21]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[21]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[21]_INST_0_i_6_n_0 ),
        .O(\ALUResult[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_10 
       (.I0(\ALUResult[21]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[27]_INST_0_i_12_n_0 ),
        .O(\ALUResult[21]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \ALUResult[21]_INST_0_i_11 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[25]),
        .O(\ALUResult[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[21]_INST_0_i_12 
       (.I0(rd10[29]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[21]),
        .O(\ALUResult[21]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[21]_INST_0_i_13 
       (.I0(clk_18),
        .I1(SrcB[2]),
        .I2(clk_22),
        .I3(SrcB[3]),
        .I4(clk_24),
        .I5(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[21]_INST_0_i_14 
       (.I0(rd10[6]),
        .I1(SrcB[3]),
        .I2(rd10[14]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[21]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[21]),
        .I5(clk_24),
        .O(\ALUResult[21]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[22]_INST_0_i_8_n_0 ),
        .O(\ALUResult[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(rd10[21]),
        .I1(\addressM[0] ),
        .I2(SrcB[21]),
        .I3(ALUControl__0[0]),
        .I4(sum[21]),
        .O(\ALUResult[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(\ALUResult[22]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[22]_INST_0_i_10_n_0 ),
        .O(\ALUResult[21]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[21]_INST_0_i_6 
       (.I0(rd10[21]),
        .I1(\addressM[0] ),
        .I2(SrcB[21]),
        .I3(ALUControl__0[0]),
        .I4(sum[21]),
        .O(\ALUResult[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[21]_INST_0_i_7 
       (.I0(Instr[18]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[21]),
        .I5(ALUSrc),
        .O(SrcB[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[21]_INST_0_i_8 
       (.I0(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[21]_INST_0_i_11_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[21]_INST_0_i_12_n_0 ),
        .O(\ALUResult[21]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[21]_INST_0_i_9 
       (.I0(\ALUResult[23]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[21]_INST_0_i_13_n_0 ),
        .O(\ALUResult[21]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[22]_INST_0 
       (.I0(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_2_n_0 ),
        .O(\ALUResult[22]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[22]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[22]_INST_0_i_6_n_0 ),
        .O(\ALUResult[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_10 
       (.I0(\ALUResult[22]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[24]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[28]_INST_0_i_12_n_0 ),
        .O(\ALUResult[22]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCD00C800)) 
    \ALUResult[22]_INST_0_i_11 
       (.I0(SrcB[3]),
        .I1(rd10[31]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[26]),
        .O(\ALUResult[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB0000F0880000)) 
    \ALUResult[22]_INST_0_i_12 
       (.I0(rd10[30]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[22]),
        .O(\ALUResult[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[22]_INST_0_i_13 
       (.I0(clk_33),
        .I1(SrcB[2]),
        .I2(clk_37),
        .I3(SrcB[3]),
        .I4(clk_39),
        .I5(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \ALUResult[22]_INST_0_i_14 
       (.I0(rd10[7]),
        .I1(SrcB[3]),
        .I2(rd10[15]),
        .I3(\addressM[0] ),
        .I4(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[22]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[22]),
        .I5(clk_39),
        .O(\ALUResult[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(\ALUResult[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(rd10[22]),
        .I1(\addressM[0] ),
        .I2(SrcB[22]),
        .I3(ALUControl__0[0]),
        .I4(sum[22]),
        .O(\ALUResult[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(\ALUResult[23]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[23]_INST_0_i_10_n_0 ),
        .O(\ALUResult[22]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[22]_INST_0_i_6 
       (.I0(rd10[22]),
        .I1(\addressM[0] ),
        .I2(SrcB[22]),
        .I3(ALUControl__0[0]),
        .I4(sum[22]),
        .O(\ALUResult[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[22]_INST_0_i_7 
       (.I0(Instr[19]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[22]),
        .I5(ALUSrc),
        .O(SrcB[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[22]_INST_0_i_8 
       (.I0(\ALUResult[24]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[22]_INST_0_i_12_n_0 ),
        .O(\ALUResult[22]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[22]_INST_0_i_9 
       (.I0(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[22]_INST_0_i_13_n_0 ),
        .O(\ALUResult[22]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[23]_INST_0 
       (.I0(\ALUResult[23]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_2_n_0 ),
        .O(\ALUResult[23]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_1 
       (.I0(\ALUResult[23]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[23]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[23]_INST_0_i_6_n_0 ),
        .O(\ALUResult[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_10 
       (.I0(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_11_n_0 ),
        .O(\ALUResult[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult[23]_INST_0_i_11 
       (.I0(clk_26),
        .I1(SrcB[2]),
        .I2(clk_1),
        .I3(SrcB[3]),
        .I4(clk_31),
        .I5(SrcB[4]),
        .O(\ALUResult[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[23]_INST_0_i_12 
       (.I0(rd10[8]),
        .I1(SrcB[3]),
        .I2(rd10[0]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[16]),
        .O(\ALUResult[23]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[23]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[23]),
        .I5(clk_31),
        .O(\ALUResult[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(SrcB[0]),
        .I5(\ALUResult[24]_INST_0_i_8_n_0 ),
        .O(\ALUResult[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(rd10[23]),
        .I1(\addressM[0] ),
        .I2(SrcB[23]),
        .I3(ALUControl__0[0]),
        .I4(sum[23]),
        .O(\ALUResult[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[23]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[24]_INST_0_i_10_n_0 ),
        .O(\ALUResult[23]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[23]_INST_0_i_6 
       (.I0(rd10[23]),
        .I1(\addressM[0] ),
        .I2(SrcB[23]),
        .I3(ALUControl__0[0]),
        .I4(sum[23]),
        .O(\ALUResult[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[23]_INST_0_i_7 
       (.I0(Instr[20]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[23]),
        .I5(ALUSrc),
        .O(SrcB[23]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[23]_INST_0_i_8 
       (.I0(clk_26),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(clk_1),
        .I4(SrcB[4]),
        .I5(clk_31),
        .O(\ALUResult[23]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[23]_INST_0_i_9 
       (.I0(\ALUResult[25]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[23]_INST_0_i_11_n_0 ),
        .O(\ALUResult[23]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[24]_INST_0 
       (.I0(\ALUResult[24]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_2_n_0 ),
        .O(\ALUResult[24]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_1 
       (.I0(\ALUResult[24]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[24]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[24]_INST_0_i_6_n_0 ),
        .O(\ALUResult[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_10 
       (.I0(\ALUResult[24]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[30]_INST_0_i_11_n_0 ),
        .O(\ALUResult[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[24]_INST_0_i_11 
       (.I0(clk_41),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(clk_1),
        .I4(SrcB[4]),
        .I5(clk_46),
        .O(\ALUResult[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[24]_INST_0_i_12 
       (.I0(rd10[28]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[24]),
        .I5(SrcB[3]),
        .O(\ALUResult[24]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[24]_INST_0_i_13 
       (.I0(rd10[9]),
        .I1(SrcB[3]),
        .I2(rd10[1]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[17]),
        .O(\ALUResult[24]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[24]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[24]),
        .I5(clk_46),
        .O(\ALUResult[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(\ALUResult[24]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(rd10[24]),
        .I1(\addressM[0] ),
        .I2(SrcB[24]),
        .I3(ALUControl__0[0]),
        .I4(sum[24]),
        .O(\ALUResult[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[25]_INST_0_i_10_n_0 ),
        .O(\ALUResult[24]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[24]_INST_0_i_6 
       (.I0(rd10[24]),
        .I1(\addressM[0] ),
        .I2(SrcB[24]),
        .I3(ALUControl__0[0]),
        .I4(sum[24]),
        .O(\ALUResult[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[24]_INST_0_i_7 
       (.I0(Instr[21]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[24]),
        .I5(ALUSrc),
        .O(SrcB[24]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[24]_INST_0_i_8 
       (.I0(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[24]_INST_0_i_11_n_0 ),
        .O(\ALUResult[24]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[24]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_12_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[24]_INST_0_i_12_n_0 ),
        .O(\ALUResult[24]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[25]_INST_0 
       (.I0(\ALUResult[25]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_2_n_0 ),
        .O(\ALUResult[25]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_1 
       (.I0(\ALUResult[25]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[25]_INST_0_i_6_n_0 ),
        .O(\ALUResult[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_10 
       (.I0(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_15_n_0 ),
        .O(\ALUResult[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[25]_INST_0_i_11 
       (.I0(rd10[29]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[25]),
        .I5(SrcB[3]),
        .O(\ALUResult[25]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[25]_INST_0_i_12 
       (.I0(rd10[10]),
        .I1(SrcB[3]),
        .I2(rd10[2]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[18]),
        .O(\ALUResult[25]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[25]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[25]),
        .I5(clk_18),
        .O(\ALUResult[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[25]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(SrcB[0]),
        .I5(\ALUResult[26]_INST_0_i_8_n_0 ),
        .O(\ALUResult[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(rd10[25]),
        .I1(\addressM[0] ),
        .I2(SrcB[25]),
        .I3(ALUControl__0[0]),
        .I4(sum[25]),
        .O(\ALUResult[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[26]_INST_0_i_10_n_0 ),
        .O(\ALUResult[25]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[25]_INST_0_i_6 
       (.I0(rd10[25]),
        .I1(\addressM[0] ),
        .I2(SrcB[25]),
        .I3(ALUControl__0[0]),
        .I4(sum[25]),
        .O(\ALUResult[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[25]_INST_0_i_7 
       (.I0(Instr[22]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[25]),
        .I5(ALUSrc),
        .O(SrcB[25]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[25]_INST_0_i_8 
       (.I0(clk_22),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(clk_1),
        .I4(SrcB[4]),
        .I5(clk_18),
        .O(\ALUResult[25]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[25]_INST_0_i_9 
       (.I0(\ALUResult[27]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[25]_INST_0_i_11_n_0 ),
        .O(\ALUResult[25]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[26]_INST_0 
       (.I0(\ALUResult[26]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_2_n_0 ),
        .O(\ALUResult[26]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_1 
       (.I0(\ALUResult[26]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[26]_INST_0_i_6_n_0 ),
        .O(\ALUResult[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_10 
       (.I0(\ALUResult[26]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_19_n_0 ),
        .O(\ALUResult[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult[26]_INST_0_i_11 
       (.I0(clk_37),
        .I1(SrcB[2]),
        .I2(SrcB[3]),
        .I3(clk_1),
        .I4(SrcB[4]),
        .I5(clk_33),
        .O(\ALUResult[26]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[26]_INST_0_i_12 
       (.I0(rd10[30]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[26]),
        .I5(SrcB[3]),
        .O(\ALUResult[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[26]_INST_0_i_13 
       (.I0(rd10[11]),
        .I1(SrcB[3]),
        .I2(rd10[3]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[19]),
        .O(\ALUResult[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[26]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[26]),
        .I5(clk_33),
        .O(\ALUResult[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(\ALUResult[26]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(rd10[26]),
        .I1(\addressM[0] ),
        .I2(SrcB[26]),
        .I3(ALUControl__0[0]),
        .I4(sum[26]),
        .O(\ALUResult[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[26]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[27]_INST_0_i_10_n_0 ),
        .O(\ALUResult[26]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[26]_INST_0_i_6 
       (.I0(rd10[26]),
        .I1(\addressM[0] ),
        .I2(SrcB[26]),
        .I3(ALUControl__0[0]),
        .I4(sum[26]),
        .O(\ALUResult[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[26]_INST_0_i_7 
       (.I0(Instr[23]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[26]),
        .I5(ALUSrc),
        .O(SrcB[26]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[26]_INST_0_i_8 
       (.I0(\ALUResult[28]_INST_0_i_11_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[26]_INST_0_i_11_n_0 ),
        .O(\ALUResult[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[26]_INST_0_i_9 
       (.I0(SrcB[3]),
        .I1(clk_41),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(clk_2[0]),
        .I5(\ALUResult[26]_INST_0_i_12_n_0 ),
        .O(\ALUResult[26]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[27]_INST_0 
       (.I0(\ALUResult[27]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_2_n_0 ),
        .O(\ALUResult[27]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_1 
       (.I0(\ALUResult[27]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[27]_INST_0_i_6_n_0 ),
        .O(\ALUResult[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_10 
       (.I0(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_15_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[29]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_17_n_0 ),
        .O(\ALUResult[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[27]_INST_0_i_11 
       (.I0(rd10[31]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[27]),
        .I5(SrcB[3]),
        .O(\ALUResult[27]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[27]_INST_0_i_12 
       (.I0(rd10[12]),
        .I1(SrcB[3]),
        .I2(rd10[4]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[20]),
        .O(\ALUResult[27]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[27]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[27]),
        .I5(clk_26),
        .O(\ALUResult[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I3(ALUControl__0[0]),
        .I4(SrcB[0]),
        .I5(\ALUResult[28]_INST_0_i_8_n_0 ),
        .O(\ALUResult[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(rd10[27]),
        .I1(\addressM[0] ),
        .I2(SrcB[27]),
        .I3(ALUControl__0[0]),
        .I4(sum[27]),
        .O(\ALUResult[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(\ALUResult[28]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[27]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[28]_INST_0_i_10_n_0 ),
        .O(\ALUResult[27]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[27]_INST_0_i_6 
       (.I0(rd10[27]),
        .I1(\addressM[0] ),
        .I2(SrcB[27]),
        .I3(ALUControl__0[0]),
        .I4(sum[27]),
        .O(\ALUResult[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[27]_INST_0_i_7 
       (.I0(Instr[24]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[27]),
        .I5(ALUSrc),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'hF0F10000F0E00000)) 
    \ALUResult[27]_INST_0_i_8 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[27]),
        .O(\ALUResult[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[27]_INST_0_i_9 
       (.I0(SrcB[3]),
        .I1(clk_22),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(clk_2[0]),
        .I5(\ALUResult[27]_INST_0_i_11_n_0 ),
        .O(\ALUResult[27]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[28]_INST_0 
       (.I0(\ALUResult[28]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_2_n_0 ),
        .O(\ALUResult[28]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_1 
       (.I0(\ALUResult[28]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[28]_INST_0_i_6_n_0 ),
        .O(\ALUResult[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_10 
       (.I0(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_21_n_0 ),
        .O(\ALUResult[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F10000F0E00000)) 
    \ALUResult[28]_INST_0_i_11 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[28]),
        .O(\ALUResult[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[28]_INST_0_i_12 
       (.I0(rd10[13]),
        .I1(SrcB[3]),
        .I2(rd10[5]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[21]),
        .O(\ALUResult[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[28]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[28]),
        .I5(clk_41),
        .O(\ALUResult[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I4(clk_2[0]),
        .I5(clk_1),
        .O(\ALUResult[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(rd10[28]),
        .I1(\addressM[0] ),
        .I2(SrcB[28]),
        .I3(ALUControl__0[0]),
        .I4(sum[28]),
        .O(\ALUResult[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[28]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[29]_INST_0_i_10_n_0 ),
        .O(\ALUResult[28]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[28]_INST_0_i_6 
       (.I0(rd10[28]),
        .I1(\addressM[0] ),
        .I2(SrcB[28]),
        .I3(ALUControl__0[0]),
        .I4(sum[28]),
        .O(\ALUResult[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[28]_INST_0_i_7 
       (.I0(Instr[25]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[28]),
        .I5(ALUSrc),
        .O(SrcB[28]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[28]_INST_0_i_8 
       (.I0(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[28]_INST_0_i_11_n_0 ),
        .O(\ALUResult[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[28]_INST_0_i_9 
       (.I0(clk_37),
        .I1(clk_2[0]),
        .I2(SrcB[3]),
        .I3(clk_41),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[28]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[29]_INST_0 
       (.I0(\ALUResult[29]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_2_n_0 ),
        .O(\ALUResult[29]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[29]_INST_0_i_6_n_0 ),
        .O(\ALUResult[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_10 
       (.I0(\ALUResult[29]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[31]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_16_n_0 ),
        .O(\ALUResult[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[29]_INST_0_i_11 
       (.I0(rd10[14]),
        .I1(SrcB[3]),
        .I2(rd10[6]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[22]),
        .O(\ALUResult[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[29]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[29]),
        .I5(clk_22),
        .O(\ALUResult[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AA808A000A808)) 
    \ALUResult[29]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I2(clk_2[0]),
        .I3(clk_1),
        .I4(SrcB[0]),
        .I5(\ALUResult[30]_INST_0_i_8_n_0 ),
        .O(\ALUResult[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(rd10[29]),
        .I1(\addressM[0] ),
        .I2(SrcB[29]),
        .I3(ALUControl__0[0]),
        .I4(sum[29]),
        .O(\ALUResult[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(\ALUResult[30]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[29]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[30]_INST_0_i_10_n_0 ),
        .O(\ALUResult[29]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[29]_INST_0_i_6 
       (.I0(rd10[29]),
        .I1(\addressM[0] ),
        .I2(SrcB[29]),
        .I3(ALUControl__0[0]),
        .I4(sum[29]),
        .O(\ALUResult[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[29]_INST_0_i_7 
       (.I0(Instr[26]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[29]),
        .I5(ALUSrc),
        .O(SrcB[29]));
  LUT6 #(
    .INIT(64'hF0F10000F0E00000)) 
    \ALUResult[29]_INST_0_i_8 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[29]),
        .O(\ALUResult[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[29]_INST_0_i_9 
       (.I0(clk_1),
        .I1(clk_2[0]),
        .I2(SrcB[3]),
        .I3(clk_22),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[29]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[2]_INST_0 
       (.I0(\ALUResult[2]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_2_n_0 ),
        .O(\ALUResult[2]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_1 
       (.I0(\ALUResult[2]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[2]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[2]_INST_0_i_6_n_0 ),
        .O(\ALUResult[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ALUResult[2]_INST_0_i_10 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(\addressM[0] ),
        .I3(rd10[1]),
        .I4(SrcB[3]),
        .I5(clk_2[0]),
        .O(\ALUResult[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_13 
       (.I0(clk_33),
        .I1(clk_34),
        .I2(SrcB[3]),
        .I3(clk_35),
        .I4(SrcB[4]),
        .I5(clk_36),
        .O(\ALUResult[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[2]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[2]),
        .I5(clk_36),
        .O(\ALUResult[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[2]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[2]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[3]_INST_0_i_8_n_0 ),
        .O(\ALUResult[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(rd10[2]),
        .I1(\addressM[0] ),
        .I2(SrcB[2]),
        .I3(ALUControl__0[0]),
        .I4(sum[2]),
        .O(\ALUResult[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[2]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[3]_INST_0_i_10_n_0 ),
        .O(\ALUResult[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[2]_INST_0_i_6 
       (.I0(rd10[2]),
        .I1(\addressM[0] ),
        .I2(SrcB[2]),
        .I3(ALUControl__0[0]),
        .I4(sum[2]),
        .O(\ALUResult[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \ALUResult[2]_INST_0_i_7 
       (.I0(sum__0_carry_i_7_1),
        .I1(ImmSrc),
        .I2(sum__0_carry_i_7_2),
        .I3(sum__0_carry_i_7_0),
        .I4(clk_12),
        .I5(ALUSrc),
        .O(SrcB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_8 
       (.I0(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_9 
       (.I0(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_13_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_13_n_0 ),
        .O(\ALUResult[2]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[30]_INST_0 
       (.I0(\ALUResult[30]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_2_n_0 ),
        .O(\ALUResult[30]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(\ALUResult[30]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[30]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[30]_INST_0_i_6_n_0 ),
        .O(\ALUResult[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_10 
       (.I0(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_21_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_20_n_0 ),
        .O(\ALUResult[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[30]_INST_0_i_11 
       (.I0(rd10[15]),
        .I1(SrcB[3]),
        .I2(rd10[7]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[23]),
        .O(\ALUResult[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[30]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[30]),
        .I5(clk_37),
        .O(\ALUResult[30]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \ALUResult[30]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I2(clk_2[0]),
        .I3(clk_1),
        .I4(SrcB[0]),
        .O(\ALUResult[30]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(rd10[30]),
        .I1(\addressM[0] ),
        .I2(SrcB[30]),
        .I3(ALUControl__0[0]),
        .I4(sum[30]),
        .O(\ALUResult[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(\ALUResult[31]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[30]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[31]_INST_0_i_13_n_0 ),
        .O(\ALUResult[30]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[30]_INST_0_i_6 
       (.I0(rd10[30]),
        .I1(\addressM[0] ),
        .I2(SrcB[30]),
        .I3(ALUControl__0[0]),
        .I4(sum[30]),
        .O(\ALUResult[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF000000)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(Instr[27]),
        .I1(sum__0_carry_i_7_0),
        .I2(Instr[28]),
        .I3(rd21__3),
        .I4(rd20_0[30]),
        .I5(ALUSrc),
        .O(SrcB[30]));
  LUT6 #(
    .INIT(64'hF0F10000F0E00000)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(SrcB[2]),
        .I1(SrcB[3]),
        .I2(rd10[31]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[30]),
        .O(\ALUResult[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(\addressM[0] ),
        .I3(rd10[30]),
        .I4(SrcB[3]),
        .I5(clk_2[0]),
        .O(\ALUResult[30]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[31]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_3_n_0 ),
        .O(\ALUResult[31]_INST_0_i_3_0 ),
        .S(ALUControl__0[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(Instr[28]),
        .I1(rd21__3),
        .I2(rd20_0[31]),
        .I3(ALUSrc),
        .O(SrcB[31]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(SrcB[2]),
        .I1(SrcB[4]),
        .I2(clk_1),
        .I3(SrcB[3]),
        .I4(clk_2[0]),
        .O(\ALUResult[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[31]_INST_0_i_17_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_18_n_0 ),
        .O(\ALUResult[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[31]_INST_0_i_21_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_22_n_0 ),
        .O(\ALUResult[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(clk_48),
        .I1(clk_45),
        .I2(SrcB[3]),
        .I3(clk_47),
        .I4(SrcB[4]),
        .I5(clk_46),
        .O(\ALUResult[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(clk_44),
        .I1(clk_43),
        .I2(SrcB[3]),
        .I3(clk_42),
        .I4(SrcB[4]),
        .I5(clk_41),
        .O(\ALUResult[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(clk_36),
        .I1(clk_35),
        .I2(SrcB[3]),
        .I3(clk_34),
        .I4(SrcB[4]),
        .I5(clk_33),
        .O(\ALUResult[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(clk_40),
        .I1(clk_39),
        .I2(SrcB[3]),
        .I3(clk_38),
        .I4(SrcB[4]),
        .I5(clk_37),
        .O(\ALUResult[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(clk_21),
        .I1(clk_20),
        .I2(SrcB[3]),
        .I3(clk_19),
        .I4(SrcB[4]),
        .I5(clk_18),
        .O(\ALUResult[31]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(\ALUResult[31]_INST_0_i_6_n_0 ),
        .I1(ALUControl),
        .I2(\ALUResult[31]_INST_0_i_7_n_0 ),
        .I3(ALUControl__0[1]),
        .I4(\ALUResult[31]_INST_0_i_9_n_0 ),
        .O(\ALUResult[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(clk_25),
        .I1(clk_24),
        .I2(SrcB[3]),
        .I3(clk_23),
        .I4(SrcB[4]),
        .I5(clk_22),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(clk_29),
        .I1(clk_28),
        .I2(SrcB[3]),
        .I3(clk_27),
        .I4(SrcB[4]),
        .I5(clk_26),
        .O(\ALUResult[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(clk_32),
        .I1(clk_31),
        .I2(SrcB[3]),
        .I3(clk_30),
        .I4(SrcB[4]),
        .I5(clk_1),
        .O(\ALUResult[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(O),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[31]),
        .I5(clk_1),
        .O(\ALUResult[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hDC55DC00)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(ALUControl__0[1]),
        .I1(clk_1),
        .I2(SrcB[31]),
        .I3(ALUControl__0[0]),
        .I4(O),
        .O(\ALUResult[31]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(\ALUResult[31]_INST_0_i_12_n_0 ),
        .I1(ALUControl__0[0]),
        .I2(\ALUResult[31]_INST_0_i_13_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[31]_INST_0_i_14_n_0 ),
        .O(\ALUResult[31]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(clk_1),
        .I1(SrcB[31]),
        .I2(ALUControl__0[0]),
        .I3(O),
        .O(\ALUResult[31]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[3]_INST_0 
       (.I0(\ALUResult[3]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_2_n_0 ),
        .O(\ALUResult[3]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(\ALUResult[3]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[3]_INST_0_i_6_n_0 ),
        .O(\ALUResult[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[3]_INST_0_i_10 
       (.I0(clk_48),
        .I1(clk_2[0]),
        .I2(SrcB[3]),
        .I3(clk_36),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_13 
       (.I0(clk_26),
        .I1(clk_27),
        .I2(SrcB[3]),
        .I3(clk_28),
        .I4(SrcB[4]),
        .I5(clk_29),
        .O(\ALUResult[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[3]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[3]),
        .I5(clk_29),
        .O(\ALUResult[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[3]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[3]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[4]_INST_0_i_8_n_0 ),
        .O(\ALUResult[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(rd10[3]),
        .I1(\addressM[0] ),
        .I2(SrcB[3]),
        .I3(ALUControl__0[0]),
        .I4(sum[3]),
        .O(\ALUResult[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[3]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[4]_INST_0_i_10_n_0 ),
        .O(\ALUResult[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(rd10[3]),
        .I1(\addressM[0] ),
        .I2(SrcB[3]),
        .I3(ALUControl__0[0]),
        .I4(sum[3]),
        .O(\ALUResult[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \ALUResult[3]_INST_0_i_7 
       (.I0(sum__0_carry_i_6_0),
        .I1(ImmSrc),
        .I2(sum__0_carry_i_6_1),
        .I3(sum__0_carry_i_7_0),
        .I4(clk_13),
        .I5(ALUSrc),
        .O(SrcB[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_8 
       (.I0(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_9 
       (.I0(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[4]_INST_0 
       (.I0(\ALUResult[4]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_2_n_0 ),
        .O(\ALUResult[4]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(\ALUResult[4]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[4]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[4]_INST_0_i_6_n_0 ),
        .O(\ALUResult[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult[4]_INST_0_i_10 
       (.I0(clk_21),
        .I1(clk_2[0]),
        .I2(SrcB[3]),
        .I3(clk_29),
        .I4(SrcB[4]),
        .I5(SrcB[2]),
        .O(\ALUResult[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_13 
       (.I0(clk_41),
        .I1(clk_42),
        .I2(SrcB[3]),
        .I3(clk_43),
        .I4(SrcB[4]),
        .I5(clk_44),
        .O(\ALUResult[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[4]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[4]),
        .I5(clk_44),
        .O(\ALUResult[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[4]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[4]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[5]_INST_0_i_8_n_0 ),
        .O(\ALUResult[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(rd10[4]),
        .I1(\addressM[0] ),
        .I2(SrcB[4]),
        .I3(ALUControl__0[0]),
        .I4(sum[4]),
        .O(\ALUResult[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[5]_INST_0_i_10_n_0 ),
        .O(\ALUResult[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(rd10[4]),
        .I1(\addressM[0] ),
        .I2(SrcB[4]),
        .I3(ALUControl__0[0]),
        .I4(sum[4]),
        .O(\ALUResult[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(sum__0_carry__0_i_8_0),
        .I1(ImmSrc),
        .I2(sum__0_carry__0_i_8_1),
        .I3(sum__0_carry_i_7_0),
        .I4(clk_14),
        .I5(ALUSrc),
        .O(SrcB[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_13_n_0 ),
        .O(\ALUResult[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_9 
       (.I0(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_13_n_0 ),
        .O(\ALUResult[4]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[5]_INST_0 
       (.I0(\ALUResult[5]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_2_n_0 ),
        .O(\ALUResult[5]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(\ALUResult[5]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[5]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[5]_INST_0_i_6_n_0 ),
        .O(\ALUResult[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[5]_INST_0_i_10 
       (.I0(SrcB[3]),
        .I1(clk_36),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(clk_2[0]),
        .I5(\ALUResult[7]_INST_0_i_12_n_0 ),
        .O(\ALUResult[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_11 
       (.I0(clk_22),
        .I1(clk_23),
        .I2(SrcB[3]),
        .I3(clk_24),
        .I4(SrcB[4]),
        .I5(clk_25),
        .O(\ALUResult[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[5]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[5]),
        .I5(clk_25),
        .O(\ALUResult[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[5]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[6]_INST_0_i_8_n_0 ),
        .O(\ALUResult[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(rd10[5]),
        .I1(\addressM[0] ),
        .I2(SrcB[5]),
        .I3(ALUControl__0[0]),
        .I4(sum[5]),
        .O(\ALUResult[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[6]_INST_0_i_10_n_0 ),
        .O(\ALUResult[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[5]_INST_0_i_6 
       (.I0(rd10[5]),
        .I1(\addressM[0] ),
        .I2(SrcB[5]),
        .I3(ALUControl__0[0]),
        .I4(sum[5]),
        .O(\ALUResult[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[5]_INST_0_i_7 
       (.I0(Instr[22]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20[5]),
        .I5(ALUSrc),
        .O(SrcB[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_8 
       (.I0(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_9 
       (.I0(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[6]_INST_0 
       (.I0(\ALUResult[6]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_2_n_0 ),
        .O(\ALUResult[6]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[6]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[6]_INST_0_i_6_n_0 ),
        .O(\ALUResult[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult[6]_INST_0_i_10 
       (.I0(SrcB[3]),
        .I1(clk_29),
        .I2(SrcB[4]),
        .I3(SrcB[2]),
        .I4(clk_2[0]),
        .I5(\ALUResult[8]_INST_0_i_13_n_0 ),
        .O(\ALUResult[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_11 
       (.I0(clk_37),
        .I1(clk_38),
        .I2(SrcB[3]),
        .I3(clk_39),
        .I4(SrcB[4]),
        .I5(clk_40),
        .O(\ALUResult[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[6]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[6]),
        .I5(clk_40),
        .O(\ALUResult[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[6]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[6]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[7]_INST_0_i_8_n_0 ),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(rd10[6]),
        .I1(\addressM[0] ),
        .I2(SrcB[6]),
        .I3(ALUControl__0[0]),
        .I4(sum[6]),
        .O(\ALUResult[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[7]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[6]_INST_0_i_6 
       (.I0(rd10[6]),
        .I1(\addressM[0] ),
        .I2(SrcB[6]),
        .I3(ALUControl__0[0]),
        .I4(sum[6]),
        .O(\ALUResult[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[6]_INST_0_i_7 
       (.I0(Instr[23]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20[6]),
        .I5(ALUSrc),
        .O(SrcB[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_8 
       (.I0(\ALUResult[12]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_9 
       (.I0(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[7]_INST_0 
       (.I0(\ALUResult[7]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_2_n_0 ),
        .O(\ALUResult[7]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(\ALUResult[7]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[7]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[7]_INST_0_i_6_n_0 ),
        .O(\ALUResult[7]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[7]_INST_0_i_10 
       (.I0(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[9]_INST_0_i_13_n_0 ),
        .O(\ALUResult[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_11 
       (.I0(clk_1),
        .I1(clk_30),
        .I2(SrcB[3]),
        .I3(clk_31),
        .I4(SrcB[4]),
        .I5(clk_32),
        .O(\ALUResult[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[7]_INST_0_i_12 
       (.I0(rd10[0]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[4]),
        .I5(SrcB[3]),
        .O(\ALUResult[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[7]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[7]),
        .I5(clk_32),
        .O(\ALUResult[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[7]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[8]_INST_0_i_8_n_0 ),
        .O(\ALUResult[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(rd10[7]),
        .I1(\addressM[0] ),
        .I2(SrcB[7]),
        .I3(ALUControl__0[0]),
        .I4(sum[7]),
        .O(\ALUResult[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[8]_INST_0_i_10_n_0 ),
        .O(\ALUResult[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(rd10[7]),
        .I1(\addressM[0] ),
        .I2(SrcB[7]),
        .I3(ALUControl__0[0]),
        .I4(sum[7]),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[7]_INST_0_i_7 
       (.I0(Instr[24]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20[7]),
        .I5(ALUSrc),
        .O(SrcB[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_8 
       (.I0(\ALUResult[13]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_11_n_0 ),
        .O(\ALUResult[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_9 
       (.I0(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_11_n_0 ),
        .O(\ALUResult[7]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[8]_INST_0 
       (.I0(\ALUResult[8]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_2_n_0 ),
        .O(\ALUResult[8]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[8]_INST_0_i_6_n_0 ),
        .O(\ALUResult[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[8]_INST_0_i_10 
       (.I0(\ALUResult[8]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[10]_INST_0_i_13_n_0 ),
        .O(\ALUResult[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_11 
       (.I0(clk_1),
        .I1(clk_45),
        .I2(SrcB[3]),
        .I3(clk_46),
        .I4(SrcB[4]),
        .I5(clk_47),
        .O(\ALUResult[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[8]_INST_0_i_12 
       (.I0(rd10[16]),
        .I1(SrcB[3]),
        .I2(rd10[24]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[8]),
        .O(\ALUResult[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[8]_INST_0_i_13 
       (.I0(rd10[1]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[5]),
        .I5(SrcB[3]),
        .O(\ALUResult[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[8]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[8]),
        .I5(clk_47),
        .O(\ALUResult[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[8]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[9]_INST_0_i_8_n_0 ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(rd10[8]),
        .I1(\addressM[0] ),
        .I2(SrcB[8]),
        .I3(ALUControl__0[0]),
        .I4(sum[8]),
        .O(\ALUResult[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[8]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[9]_INST_0_i_10_n_0 ),
        .O(\ALUResult[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(rd10[8]),
        .I1(\addressM[0] ),
        .I2(SrcB[8]),
        .I3(ALUControl__0[0]),
        .I4(sum[8]),
        .O(\ALUResult[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(Instr[25]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20_0[8]),
        .I5(ALUSrc),
        .O(SrcB[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_8 
       (.I0(\ALUResult[14]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[12]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_11_n_0 ),
        .O(\ALUResult[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_9 
       (.I0(\ALUResult[14]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[12]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_12_n_0 ),
        .O(\ALUResult[8]_INST_0_i_9_n_0 ));
  MUXF7 \ALUResult[9]_INST_0 
       (.I0(\ALUResult[9]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_2_n_0 ),
        .O(\ALUResult[9]_INST_0_i_2_0 ),
        .S(ALUControl__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[9]_INST_0_i_5_n_0 ),
        .I4(ALUControl__0[1]),
        .I5(\ALUResult[9]_INST_0_i_6_n_0 ),
        .O(\ALUResult[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[9]_INST_0_i_10 
       (.I0(\ALUResult[9]_INST_0_i_13_n_0 ),
        .I1(clk_2[0]),
        .I2(\ALUResult[11]_INST_0_i_13_n_0 ),
        .O(\ALUResult[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_11 
       (.I0(clk_1),
        .I1(clk_20),
        .I2(SrcB[3]),
        .I3(clk_18),
        .I4(SrcB[4]),
        .I5(clk_19),
        .O(\ALUResult[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \ALUResult[9]_INST_0_i_12 
       (.I0(rd10[17]),
        .I1(SrcB[3]),
        .I2(rd10[25]),
        .I3(SrcB[4]),
        .I4(\addressM[0] ),
        .I5(rd10[9]),
        .O(\ALUResult[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \ALUResult[9]_INST_0_i_13 
       (.I0(rd10[2]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(\addressM[0] ),
        .I4(rd10[6]),
        .I5(SrcB[3]),
        .O(\ALUResult[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCF80C08FCF8FC080)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(ALUControl__0[0]),
        .I1(sum[9]),
        .I2(ALUControl),
        .I3(ALUControl__0[1]),
        .I4(SrcB[9]),
        .I5(clk_19),
        .O(\ALUResult[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALUResult[9]_INST_0_i_3 
       (.I0(ALUControl__0[0]),
        .I1(\ALUResult[9]_INST_0_i_8_n_0 ),
        .I2(SrcB[0]),
        .I3(\ALUResult[10]_INST_0_i_8_n_0 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(rd10[9]),
        .I1(\addressM[0] ),
        .I2(SrcB[9]),
        .I3(ALUControl__0[0]),
        .I4(sum[9]),
        .O(\ALUResult[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I2(ALUControl__0[0]),
        .I3(\ALUResult[9]_INST_0_i_10_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[10]_INST_0_i_10_n_0 ),
        .O(\ALUResult[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(rd10[9]),
        .I1(\addressM[0] ),
        .I2(SrcB[9]),
        .I3(ALUControl__0[0]),
        .I4(sum[9]),
        .O(\ALUResult[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AFF000000)) 
    \ALUResult[9]_INST_0_i_7 
       (.I0(Instr[26]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd21__3),
        .I4(rd20_0[9]),
        .I5(ALUSrc),
        .O(SrcB[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_8 
       (.I0(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[13]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_11_n_0 ),
        .O(\ALUResult[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_9 
       (.I0(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I2(clk_2[0]),
        .I3(\ALUResult[13]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[9]_INST_0_i_12_n_0 ),
        .O(\ALUResult[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[0]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[0]),
        .O(clk_10));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[10]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[10]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[2]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[10]_INST_0_i_2_n_0 ),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[10]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[10]),
        .O(\WriteData[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[10]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[2]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[2]),
        .O(\WriteData[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[11]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[11]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[3]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[11]_INST_0_i_2_n_0 ),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[11]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[11]),
        .O(\WriteData[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[11]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[3]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[3]),
        .O(\WriteData[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[12]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[12]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[4]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[12]_INST_0_i_2_n_0 ),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[12]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[12]),
        .O(\WriteData[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[12]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[4]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[4]),
        .O(\WriteData[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[13]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[13]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[5]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[13]_INST_0_i_2_n_0 ),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[13]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[13]),
        .O(\WriteData[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[13]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[5]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[5]),
        .O(\WriteData[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[14]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[14]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[6]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[14]_INST_0_i_2_n_0 ),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[14]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[14]),
        .O(\WriteData[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[14]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[6]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[6]),
        .O(\WriteData[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[15]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[15]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[7]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[15]_INST_0_i_2_n_0 ),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[15]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[15]),
        .O(\WriteData[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[15]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[7]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[7]),
        .O(\WriteData[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[16]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[16]),
        .I2(Instr[10]),
        .I3(\writeDataM[16] ),
        .O(WriteData[8]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[17]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[17]),
        .I2(Instr[10]),
        .I3(\writeDataM[17] ),
        .O(WriteData[9]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[18]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[18]),
        .I2(Instr[10]),
        .I3(\writeDataM[18] ),
        .O(WriteData[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[19]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[19]),
        .I2(Instr[10]),
        .I3(\writeDataM[19] ),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[1]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[1]),
        .O(clk_11));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[20]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[20]),
        .I2(Instr[10]),
        .I3(\writeDataM[20] ),
        .O(WriteData[12]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[21]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[21]),
        .I2(Instr[10]),
        .I3(\writeDataM[21] ),
        .O(WriteData[13]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[22]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[22]),
        .I2(Instr[10]),
        .I3(\writeDataM[22] ),
        .O(WriteData[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[23]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[23]),
        .I2(Instr[10]),
        .I3(\writeDataM[23] ),
        .O(WriteData[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[24]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[24]),
        .I2(Instr[10]),
        .I3(\WriteData[24]_INST_0_i_1_n_0 ),
        .O(WriteData[16]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[24]_INST_0_i_1 
       (.I0(\WriteData[8]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_10),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[8]),
        .O(\WriteData[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[25]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[25]),
        .I2(Instr[10]),
        .I3(\WriteData[25]_INST_0_i_1_n_0 ),
        .O(WriteData[17]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[25]_INST_0_i_1 
       (.I0(\WriteData[9]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_11),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[9]),
        .O(\WriteData[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[26]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[26]),
        .I2(Instr[10]),
        .I3(\WriteData[26]_INST_0_i_1_n_0 ),
        .O(WriteData[18]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[26]_INST_0_i_1 
       (.I0(\WriteData[10]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_12),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[10]),
        .O(\WriteData[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[27]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[27]),
        .I2(Instr[10]),
        .I3(\WriteData[27]_INST_0_i_1_n_0 ),
        .O(WriteData[19]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[27]_INST_0_i_1 
       (.I0(\WriteData[11]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_13),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[11]),
        .O(\WriteData[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[28]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[28]),
        .I2(Instr[10]),
        .I3(\WriteData[28]_INST_0_i_1_n_0 ),
        .O(WriteData[20]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[28]_INST_0_i_1 
       (.I0(\WriteData[12]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_14),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[12]),
        .O(\WriteData[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[29]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[29]),
        .I2(Instr[10]),
        .I3(\WriteData[29]_INST_0_i_1_n_0 ),
        .O(WriteData[21]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[29]_INST_0_i_1 
       (.I0(\WriteData[13]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_15),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[13]),
        .O(\WriteData[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[2]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[2]),
        .O(clk_12));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[30]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[30]),
        .I2(Instr[10]),
        .I3(\WriteData[30]_INST_0_i_1_n_0 ),
        .O(WriteData[22]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[30]_INST_0_i_1 
       (.I0(\WriteData[14]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_16),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[14]),
        .O(\WriteData[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[31]_INST_0 
       (.I0(rd21__3),
        .I1(rd20_0[31]),
        .I2(Instr[10]),
        .I3(\WriteData[31]_INST_0_i_2_n_0 ),
        .O(WriteData[23]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \WriteData[31]_INST_0_i_2 
       (.I0(\WriteData[15]_INST_0_i_1_n_0 ),
        .I1(Instr[9]),
        .I2(clk_17),
        .I3(\writeDataM[8] ),
        .I4(\writeDataM[15] ),
        .I5(ReadData[15]),
        .O(\WriteData[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[3]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[3]),
        .O(clk_13));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[4]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[4]),
        .O(clk_14));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[5]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[5]),
        .O(clk_15));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[6]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[6]),
        .O(clk_16));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[7]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20[7]),
        .O(clk_17));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[8]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[8]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[0]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[8]_INST_0_i_2_n_0 ),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[8]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[8]),
        .O(\WriteData[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[8]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[0]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[0]),
        .O(\WriteData[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88CDCDDD88C8C8)) 
    \WriteData[9]_INST_0 
       (.I0(Instr[10]),
        .I1(\WriteData[9]_INST_0_i_1_n_0 ),
        .I2(Instr[9]),
        .I3(ReadData[1]),
        .I4(\writeDataM[15] ),
        .I5(\WriteData[9]_INST_0_i_2_n_0 ),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[9]_INST_0_i_1 
       (.I0(Instr[21]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[17]),
        .I4(Instr[19]),
        .I5(rd20_0[9]),
        .O(\WriteData[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \WriteData[9]_INST_0_i_2 
       (.I0(rd21__3),
        .I1(rd20[1]),
        .I2(\writeDataM[8] ),
        .I3(ReadData[1]),
        .O(\WriteData[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__0_i_1
       (.I0(clk_32),
        .I1(ALUSrc),
        .I2(rd20[7]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[24]),
        .O(clk_62[3]));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__0_i_2
       (.I0(clk_40),
        .I1(ALUSrc),
        .I2(rd20[6]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[23]),
        .O(clk_62[2]));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__0_i_3
       (.I0(clk_25),
        .I1(ALUSrc),
        .I2(rd20[5]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[22]),
        .O(clk_62[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__0_i_4
       (.I0(rd10[4]),
        .I1(rd11__3),
        .I2(SrcB[4]),
        .O(clk_62[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__1_i_1
       (.I0(rd10[11]),
        .I1(rd11__3),
        .I2(SrcB[11]),
        .O(clk_61[3]));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__1_i_2
       (.I0(clk_34),
        .I1(ALUSrc),
        .I2(rd20_0[10]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[27]),
        .O(clk_61[2]));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__1_i_3
       (.I0(clk_19),
        .I1(ALUSrc),
        .I2(rd20_0[9]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[26]),
        .O(clk_61[1]));
  LUT6 #(
    .INIT(64'h6555A99965556555)) 
    carried_carry__1_i_4
       (.I0(clk_47),
        .I1(ALUSrc),
        .I2(rd20_0[8]),
        .I3(rd21__3),
        .I4(sum__0_carry_i_7_0),
        .I5(Instr[25]),
        .O(clk_61[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__2_i_1
       (.I0(rd10[15]),
        .I1(rd11__3),
        .I2(SrcB[15]),
        .O(clk_60[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__2_i_2
       (.I0(rd10[14]),
        .I1(rd11__3),
        .I2(SrcB[14]),
        .O(clk_60[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__2_i_3
       (.I0(rd10[13]),
        .I1(rd11__3),
        .I2(SrcB[13]),
        .O(clk_60[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__2_i_4
       (.I0(rd10[12]),
        .I1(rd11__3),
        .I2(SrcB[12]),
        .O(clk_60[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__3_i_1
       (.I0(rd10[19]),
        .I1(rd11__3),
        .I2(clk_2[1]),
        .O(clk_59[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__3_i_2
       (.I0(rd10[18]),
        .I1(rd11__3),
        .I2(SrcB[18]),
        .O(clk_59[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__3_i_3
       (.I0(rd10[17]),
        .I1(rd11__3),
        .I2(SrcB[17]),
        .O(clk_59[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__3_i_4
       (.I0(rd10[16]),
        .I1(rd11__3),
        .I2(SrcB[16]),
        .O(clk_59[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__4_i_1
       (.I0(rd10[23]),
        .I1(rd11__3),
        .I2(SrcB[23]),
        .O(clk_58[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__4_i_2
       (.I0(rd10[22]),
        .I1(rd11__3),
        .I2(SrcB[22]),
        .O(clk_58[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__4_i_3
       (.I0(rd10[21]),
        .I1(rd11__3),
        .I2(SrcB[21]),
        .O(clk_58[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__4_i_4
       (.I0(rd10[20]),
        .I1(rd11__3),
        .I2(SrcB[20]),
        .O(clk_58[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__5_i_1
       (.I0(rd10[27]),
        .I1(rd11__3),
        .I2(SrcB[27]),
        .O(clk_57[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__5_i_2
       (.I0(rd10[26]),
        .I1(rd11__3),
        .I2(SrcB[26]),
        .O(clk_57[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__5_i_3
       (.I0(rd10[25]),
        .I1(rd11__3),
        .I2(SrcB[25]),
        .O(clk_57[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__5_i_4
       (.I0(rd10[24]),
        .I1(rd11__3),
        .I2(SrcB[24]),
        .O(clk_57[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    carried_carry__6_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[31]),
        .O(clk_1));
  LUT5 #(
    .INIT(32'hA9996555)) 
    carried_carry__6_i_2
       (.I0(clk_1),
        .I1(ALUSrc),
        .I2(rd20_0[31]),
        .I3(rd21__3),
        .I4(Instr[28]),
        .O(clk_56[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__6_i_3
       (.I0(rd10[30]),
        .I1(rd11__3),
        .I2(SrcB[30]),
        .O(clk_56[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__6_i_4
       (.I0(rd10[29]),
        .I1(rd11__3),
        .I2(SrcB[29]),
        .O(clk_56[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry__6_i_5
       (.I0(rd10[28]),
        .I1(rd11__3),
        .I2(SrcB[28]),
        .O(clk_56[0]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry_i_1
       (.I0(rd10[3]),
        .I1(rd11__3),
        .I2(SrcB[3]),
        .O(clk_63[3]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry_i_2
       (.I0(rd10[2]),
        .I1(rd11__3),
        .I2(SrcB[2]),
        .O(clk_63[2]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry_i_3
       (.I0(rd11__3),
        .I1(rd10[1]),
        .I2(clk_2[0]),
        .O(clk_63[1]));
  LUT3 #(
    .INIT(8'h87)) 
    carried_carry_i_4
       (.I0(rd11__3),
        .I1(rd10[0]),
        .I2(SrcB[0]),
        .O(clk_63[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_1
       (.I0(SrcB[14]),
        .I1(rd10[14]),
        .I2(\addressM[0] ),
        .I3(rd10[15]),
        .I4(SrcB[15]),
        .O(clk_4[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_2
       (.I0(SrcB[12]),
        .I1(rd10[12]),
        .I2(\addressM[0] ),
        .I3(rd10[13]),
        .I4(SrcB[13]),
        .O(clk_4[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_3
       (.I0(SrcB[10]),
        .I1(rd10[10]),
        .I2(\addressM[0] ),
        .I3(rd10[11]),
        .I4(SrcB[11]),
        .O(clk_4[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_4
       (.I0(SrcB[8]),
        .I1(rd10[8]),
        .I2(\addressM[0] ),
        .I3(rd10[9]),
        .I4(SrcB[9]),
        .O(clk_4[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_5
       (.I0(SrcB[14]),
        .I1(rd10[14]),
        .I2(SrcB[15]),
        .I3(\addressM[0] ),
        .I4(rd10[15]),
        .O(clk_5[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_6
       (.I0(SrcB[12]),
        .I1(rd10[12]),
        .I2(SrcB[13]),
        .I3(\addressM[0] ),
        .I4(rd10[13]),
        .O(clk_5[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_7
       (.I0(SrcB[10]),
        .I1(rd10[10]),
        .I2(SrcB[11]),
        .I3(\addressM[0] ),
        .I4(rd10[11]),
        .O(clk_5[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_8
       (.I0(SrcB[8]),
        .I1(rd10[8]),
        .I2(SrcB[9]),
        .I3(\addressM[0] ),
        .I4(rd10[9]),
        .O(clk_5[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_1
       (.I0(SrcB[22]),
        .I1(rd10[22]),
        .I2(\addressM[0] ),
        .I3(rd10[23]),
        .I4(SrcB[23]),
        .O(clk_6[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_2
       (.I0(SrcB[20]),
        .I1(rd10[20]),
        .I2(\addressM[0] ),
        .I3(rd10[21]),
        .I4(SrcB[21]),
        .O(clk_6[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_3
       (.I0(SrcB[18]),
        .I1(rd10[18]),
        .I2(\addressM[0] ),
        .I3(rd10[19]),
        .I4(clk_2[1]),
        .O(clk_6[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_4
       (.I0(SrcB[16]),
        .I1(rd10[16]),
        .I2(\addressM[0] ),
        .I3(rd10[17]),
        .I4(SrcB[17]),
        .O(clk_6[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_5
       (.I0(SrcB[22]),
        .I1(rd10[22]),
        .I2(SrcB[23]),
        .I3(\addressM[0] ),
        .I4(rd10[23]),
        .O(clk_7[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_6
       (.I0(SrcB[20]),
        .I1(rd10[20]),
        .I2(SrcB[21]),
        .I3(\addressM[0] ),
        .I4(rd10[21]),
        .O(clk_7[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_7
       (.I0(SrcB[18]),
        .I1(rd10[18]),
        .I2(clk_2[1]),
        .I3(\addressM[0] ),
        .I4(rd10[19]),
        .O(clk_7[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_8
       (.I0(SrcB[16]),
        .I1(rd10[16]),
        .I2(SrcB[17]),
        .I3(\addressM[0] ),
        .I4(rd10[17]),
        .O(clk_7[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_1
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(\addressM[0] ),
        .I3(rd10[31]),
        .I4(SrcB[31]),
        .O(clk_8[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_2
       (.I0(SrcB[28]),
        .I1(rd10[28]),
        .I2(\addressM[0] ),
        .I3(rd10[29]),
        .I4(SrcB[29]),
        .O(clk_8[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_3
       (.I0(SrcB[26]),
        .I1(rd10[26]),
        .I2(\addressM[0] ),
        .I3(rd10[27]),
        .I4(SrcB[27]),
        .O(clk_8[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_4
       (.I0(SrcB[24]),
        .I1(rd10[24]),
        .I2(\addressM[0] ),
        .I3(rd10[25]),
        .I4(SrcB[25]),
        .O(clk_8[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_5
       (.I0(SrcB[30]),
        .I1(rd10[30]),
        .I2(SrcB[31]),
        .I3(\addressM[0] ),
        .I4(rd10[31]),
        .O(clk_9[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_6
       (.I0(SrcB[28]),
        .I1(rd10[28]),
        .I2(SrcB[29]),
        .I3(\addressM[0] ),
        .I4(rd10[29]),
        .O(clk_9[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_7
       (.I0(SrcB[26]),
        .I1(rd10[26]),
        .I2(SrcB[27]),
        .I3(\addressM[0] ),
        .I4(rd10[27]),
        .O(clk_9[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_8
       (.I0(SrcB[24]),
        .I1(rd10[24]),
        .I2(SrcB[25]),
        .I3(\addressM[0] ),
        .I4(rd10[25]),
        .O(clk_9[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_1
       (.I0(SrcB[6]),
        .I1(rd10[6]),
        .I2(\addressM[0] ),
        .I3(rd10[7]),
        .I4(SrcB[7]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_2
       (.I0(SrcB[4]),
        .I1(rd10[4]),
        .I2(\addressM[0] ),
        .I3(rd10[5]),
        .I4(SrcB[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_3
       (.I0(SrcB[2]),
        .I1(rd10[2]),
        .I2(\addressM[0] ),
        .I3(rd10[3]),
        .I4(SrcB[3]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_4
       (.I0(SrcB[0]),
        .I1(rd10[0]),
        .I2(\addressM[0] ),
        .I3(rd10[1]),
        .I4(clk_2[0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_5
       (.I0(SrcB[6]),
        .I1(rd10[6]),
        .I2(SrcB[7]),
        .I3(\addressM[0] ),
        .I4(rd10[7]),
        .O(clk_3[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_6
       (.I0(SrcB[4]),
        .I1(rd10[4]),
        .I2(SrcB[5]),
        .I3(\addressM[0] ),
        .I4(rd10[5]),
        .O(clk_3[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_7
       (.I0(SrcB[2]),
        .I1(rd10[2]),
        .I2(SrcB[3]),
        .I3(\addressM[0] ),
        .I4(rd10[3]),
        .O(clk_3[1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry_i_8
       (.I0(rd10[0]),
        .I1(SrcB[0]),
        .I2(\addressM[0] ),
        .I3(rd10[1]),
        .I4(clk_2[0]),
        .O(clk_3[0]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[10]_i_1 
       (.I0(PCTarget[10]),
        .I1(PCPlus4[7]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[10]_i_2 
       (.I0(\ALUResult[10]_INST_0_i_2_0 ),
        .I1(PCTargetI[8]),
        .I2(ALUSrc),
        .O(PCTarget[10]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[11]_i_1 
       (.I0(PCTarget[11]),
        .I1(PCPlus4[8]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[11]_i_2 
       (.I0(\ALUResult[11]_INST_0_i_2_0 ),
        .I1(PCTargetI[9]),
        .I2(ALUSrc),
        .O(PCTarget[11]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[12]_i_1 
       (.I0(PCTarget[12]),
        .I1(PCPlus4[9]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[12]_i_2 
       (.I0(\ALUResult[12]_INST_0_i_2_0 ),
        .I1(PCTargetI[10]),
        .I2(ALUSrc),
        .O(PCTarget[12]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[13]_i_1 
       (.I0(PCTarget[13]),
        .I1(PCPlus4[10]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[13]_i_2 
       (.I0(\ALUResult[13]_INST_0_i_2_0 ),
        .I1(PCTargetI[11]),
        .I2(ALUSrc),
        .O(PCTarget[13]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[14]_i_1 
       (.I0(PCTarget[14]),
        .I1(PCPlus4[11]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[14]_i_2 
       (.I0(\ALUResult[14]_INST_0_i_2_0 ),
        .I1(PCTargetI[12]),
        .I2(ALUSrc),
        .O(PCTarget[14]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[15]_i_1 
       (.I0(PCTarget[15]),
        .I1(PCPlus4[12]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[15]_i_2 
       (.I0(\ALUResult[15]_INST_0_i_2_0 ),
        .I1(PCTargetI[13]),
        .I2(ALUSrc),
        .O(PCTarget[15]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[16]_i_1 
       (.I0(PCTarget[16]),
        .I1(PCPlus4[13]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \q[16]_i_2 
       (.I0(\ALUResult[16]_INST_0_i_2_0 ),
        .I1(PCTargetI[14]),
        .I2(ALUSrc),
        .O(PCTarget[16]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[17]_i_1 
       (.I0(PCTarget[17]),
        .I1(PCPlus4[14]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[17]_i_2 
       (.I0(\ALUResult[17]_INST_0_i_2_0 ),
        .I1(PCTargetI[15]),
        .I2(ALUSrc),
        .O(PCTarget[17]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[18]_i_1 
       (.I0(PCTarget[18]),
        .I1(PCPlus4[15]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[18]_i_2 
       (.I0(\ALUResult[18]_INST_0_i_2_0 ),
        .I1(PCTargetI[16]),
        .I2(ALUSrc),
        .O(PCTarget[18]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[20]_i_1 
       (.I0(PCTarget[20]),
        .I1(PCPlus4[16]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[20]_i_2 
       (.I0(\ALUResult[20]_INST_0_i_2_0 ),
        .I1(PCTargetI[17]),
        .I2(ALUSrc),
        .O(PCTarget[20]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[21]_i_1 
       (.I0(PCTarget[21]),
        .I1(PCPlus4[17]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[21]_i_2 
       (.I0(\ALUResult[21]_INST_0_i_2_0 ),
        .I1(PCTargetI[18]),
        .I2(ALUSrc),
        .O(PCTarget[21]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[22]_i_1 
       (.I0(PCTarget[22]),
        .I1(PCPlus4[18]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[22]_i_2 
       (.I0(\ALUResult[22]_INST_0_i_2_0 ),
        .I1(PCTargetI[19]),
        .I2(ALUSrc),
        .O(PCTarget[22]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[23]_i_1 
       (.I0(PCTarget[23]),
        .I1(PCPlus4[19]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[23]_i_2 
       (.I0(\ALUResult[23]_INST_0_i_2_0 ),
        .I1(PCTargetI[20]),
        .I2(ALUSrc),
        .O(PCTarget[23]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[24]_i_1 
       (.I0(PCTarget[24]),
        .I1(PCPlus4[20]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[24]_i_2 
       (.I0(\ALUResult[24]_INST_0_i_2_0 ),
        .I1(PCTargetI[21]),
        .I2(ALUSrc),
        .O(PCTarget[24]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[25]_i_1 
       (.I0(PCTarget[25]),
        .I1(PCPlus4[21]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[25]_i_2 
       (.I0(\ALUResult[25]_INST_0_i_2_0 ),
        .I1(PCTargetI[22]),
        .I2(ALUSrc),
        .O(PCTarget[25]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[26]_i_1 
       (.I0(PCTarget[26]),
        .I1(PCPlus4[22]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[26]_i_2 
       (.I0(\ALUResult[26]_INST_0_i_2_0 ),
        .I1(PCTargetI[23]),
        .I2(ALUSrc),
        .O(PCTarget[26]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[27]_i_1 
       (.I0(PCTarget[27]),
        .I1(PCPlus4[23]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[27]_i_2 
       (.I0(\ALUResult[27]_INST_0_i_2_0 ),
        .I1(PCTargetI[24]),
        .I2(ALUSrc),
        .O(PCTarget[27]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[28]_i_1 
       (.I0(PCTarget[28]),
        .I1(PCPlus4[24]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[28]_i_2 
       (.I0(\ALUResult[28]_INST_0_i_2_0 ),
        .I1(PCTargetI[25]),
        .I2(ALUSrc),
        .O(PCTarget[28]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[29]_i_1 
       (.I0(PCTarget[29]),
        .I1(PCPlus4[25]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[29]_i_2 
       (.I0(\ALUResult[29]_INST_0_i_2_0 ),
        .I1(PCTargetI[26]),
        .I2(ALUSrc),
        .O(PCTarget[29]));
  LUT5 #(
    .INIT(32'hAA33A333)) 
    \q[2]_i_1 
       (.I0(PCTarget[2]),
        .I1(Q),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[2]_i_2 
       (.I0(\ALUResult[2]_INST_0_i_2_0 ),
        .I1(PCTargetI[0]),
        .I2(ALUSrc),
        .O(PCTarget[2]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[30]_i_1 
       (.I0(PCTarget[30]),
        .I1(PCPlus4[26]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[30]_i_2 
       (.I0(\ALUResult[30]_INST_0_i_2_0 ),
        .I1(PCTargetI[27]),
        .I2(ALUSrc),
        .O(PCTarget[30]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[31]_i_1 
       (.I0(PCTarget[31]),
        .I1(PCPlus4[27]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_10 
       (.I0(\ALUResult[15]_INST_0_i_2_0 ),
        .I1(\ALUResult[14]_INST_0_i_2_0 ),
        .I2(\ALUResult[13]_INST_0_i_2_0 ),
        .I3(\ALUResult[12]_INST_0_i_2_0 ),
        .O(\q[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_11 
       (.I0(\ALUResult[25]_INST_0_i_2_0 ),
        .I1(\ALUResult[24]_INST_0_i_2_0 ),
        .I2(\ALUResult[27]_INST_0_i_2_0 ),
        .I3(\ALUResult[26]_INST_0_i_2_0 ),
        .O(\q[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_12 
       (.I0(\ALUResult[30]_INST_0_i_2_0 ),
        .I1(\ALUResult[31]_INST_0_i_3_0 ),
        .I2(\ALUResult[29]_INST_0_i_2_0 ),
        .I3(\ALUResult[28]_INST_0_i_2_0 ),
        .O(\q[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_13 
       (.I0(\ALUResult[23]_INST_0_i_2_0 ),
        .I1(\ALUResult[22]_INST_0_i_2_0 ),
        .I2(\ALUResult[21]_INST_0_i_2_0 ),
        .I3(\ALUResult[20]_INST_0_i_2_0 ),
        .O(\q[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_14 
       (.I0(\q[31]_i_6_0 ),
        .I1(\ALUResult[18]_INST_0_i_2_0 ),
        .I2(\ALUResult[17]_INST_0_i_2_0 ),
        .I3(\ALUResult[16]_INST_0_i_2_0 ),
        .O(\q[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[31]_i_2 
       (.I0(\ALUResult[31]_INST_0_i_3_0 ),
        .I1(PCTargetI[28]),
        .I2(ALUSrc),
        .O(PCTarget[31]));
  LUT6 #(
    .INIT(64'hABA8A8ABABA8ABA8)) 
    \q[31]_i_3 
       (.I0(\q[31]_i_4_n_0 ),
        .I1(Instr[10]),
        .I2(Instr[11]),
        .I3(Instr[9]),
        .I4(\q[31]_i_5_n_0 ),
        .I5(\q[31]_i_6_n_0 ),
        .O(BControl__8));
  LUT5 #(
    .INIT(32'hA0380A38)) 
    \q[31]_i_4 
       (.I0(Instr[11]),
        .I1(\alu/result00_out ),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(CO),
        .O(\q[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_3_0 ),
        .I1(\q[31]_i_8_n_0 ),
        .I2(\q[31]_i_9_n_0 ),
        .I3(\q[31]_i_10_n_0 ),
        .O(\q[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \q[31]_i_6 
       (.I0(\q[31]_i_11_n_0 ),
        .I1(\q[31]_i_12_n_0 ),
        .I2(\q[31]_i_13_n_0 ),
        .I3(\q[31]_i_14_n_0 ),
        .O(\q[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_8 
       (.I0(\ALUResult[7]_INST_0_i_2_0 ),
        .I1(\ALUResult[6]_INST_0_i_2_0 ),
        .I2(\ALUResult[5]_INST_0_i_2_0 ),
        .I3(\ALUResult[4]_INST_0_i_2_0 ),
        .O(\q[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_9 
       (.I0(\ALUResult[9]_INST_0_i_2_0 ),
        .I1(\ALUResult[8]_INST_0_i_2_0 ),
        .I2(\ALUResult[11]_INST_0_i_2_0 ),
        .I3(\ALUResult[10]_INST_0_i_2_0 ),
        .O(\q[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[3]_i_1 
       (.I0(PCTarget[3]),
        .I1(PCPlus4[0]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[3]_i_2 
       (.I0(\ALUResult[3]_INST_0_i_2_0 ),
        .I1(PCTargetI[1]),
        .I2(ALUSrc),
        .O(PCTarget[3]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[4]_i_1 
       (.I0(PCTarget[4]),
        .I1(PCPlus4[1]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[4]_i_2 
       (.I0(\ALUResult[4]_INST_0_i_2_0 ),
        .I1(PCTargetI[2]),
        .I2(ALUSrc),
        .O(PCTarget[4]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[5]_i_1 
       (.I0(PCTarget[5]),
        .I1(PCPlus4[2]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[5]_i_2 
       (.I0(\ALUResult[5]_INST_0_i_2_0 ),
        .I1(PCTargetI[3]),
        .I2(ALUSrc),
        .O(PCTarget[5]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[6]_i_1 
       (.I0(PCTarget[6]),
        .I1(PCPlus4[3]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[6]_i_2 
       (.I0(\ALUResult[6]_INST_0_i_2_0 ),
        .I1(PCTargetI[4]),
        .I2(ALUSrc),
        .O(PCTarget[6]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[7]_i_1 
       (.I0(PCTarget[7]),
        .I1(PCPlus4[4]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[7]_i_2 
       (.I0(\ALUResult[7]_INST_0_i_2_0 ),
        .I1(PCTargetI[5]),
        .I2(ALUSrc),
        .O(PCTarget[7]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[8]_i_1 
       (.I0(PCTarget[8]),
        .I1(PCPlus4[5]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[8]_i_2 
       (.I0(\ALUResult[8]_INST_0_i_2_0 ),
        .I1(PCTargetI[6]),
        .I2(ALUSrc),
        .O(PCTarget[8]));
  LUT5 #(
    .INIT(32'hAACCACCC)) 
    \q[9]_i_1 
       (.I0(PCTarget[9]),
        .I1(PCPlus4[6]),
        .I2(BControl__8),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \q[9]_i_2 
       (.I0(\ALUResult[9]_INST_0_i_2_0 ),
        .I1(PCTargetI[7]),
        .I2(ALUSrc),
        .O(PCTarget[9]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r1_0_31_0_5
       (.ADDRA(Instr[16:12]),
        .ADDRB(Instr[16:12]),
        .ADDRC(Instr[16:12]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[1:0]),
        .DIB(Result[3:2]),
        .DIC(Result[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  LUT3 #(
    .INIT(8'hFD)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[1]),
        .O(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r1_0_31_12_17
       (.ADDRA(Instr[16:12]),
        .ADDRB(Instr[16:12]),
        .ADDRC(Instr[16:12]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[13:12]),
        .DIB(Result[15:14]),
        .DIC(Result[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r1_0_31_18_23
       (.ADDRA(Instr[16:12]),
        .ADDRB(Instr[16:12]),
        .ADDRC(Instr[16:12]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[19:18]),
        .DIB(Result[21:20]),
        .DIC(Result[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r1_0_31_24_29
       (.ADDRA(Instr[16:12]),
        .ADDRB(Instr[16:12]),
        .ADDRC(Instr[16:12]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[25:24]),
        .DIB(Result[27:26]),
        .DIC(Result[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(Result[30]),
        .DPO(rd10[30]),
        .DPRA0(Instr[12]),
        .DPRA1(Instr[13]),
        .DPRA2(Instr[14]),
        .DPRA3(Instr[15]),
        .DPRA4(Instr[16]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31__0
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(Result[31]),
        .DPO(rd10[31]),
        .DPRA0(Instr[12]),
        .DPRA1(Instr[13]),
        .DPRA2(Instr[14]),
        .DPRA3(Instr[15]),
        .DPRA4(Instr[16]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r1_0_31_6_11
       (.ADDRA(Instr[16:12]),
        .ADDRB(Instr[16:12]),
        .ADDRC(Instr[16:12]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[7:6]),
        .DIB(Result[9:8]),
        .DIC(Result[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[1]),
        .O(ResultSrc));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .O(rf_reg_r1_0_31_6_11_i_9_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r2_0_31_0_5
       (.ADDRA(Instr[21:17]),
        .ADDRB(Instr[21:17]),
        .ADDRC(Instr[21:17]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[1:0]),
        .DIB(Result[3:2]),
        .DIC(Result[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r2_0_31_12_17
       (.ADDRA(Instr[21:17]),
        .ADDRB(Instr[21:17]),
        .ADDRC(Instr[21:17]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[13:12]),
        .DIB(Result[15:14]),
        .DIC(Result[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[13:12]),
        .DOB(rd20_0[15:14]),
        .DOC(rd20_0[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r2_0_31_18_23
       (.ADDRA(Instr[21:17]),
        .ADDRB(Instr[21:17]),
        .ADDRC(Instr[21:17]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[19:18]),
        .DIB(Result[21:20]),
        .DIC(Result[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[19:18]),
        .DOB(rd20_0[21:20]),
        .DOC(rd20_0[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r2_0_31_24_29
       (.ADDRA(Instr[21:17]),
        .ADDRB(Instr[21:17]),
        .ADDRC(Instr[21:17]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[25:24]),
        .DIB(Result[27:26]),
        .DIC(Result[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20_0[25:24]),
        .DOB(rd20_0[27:26]),
        .DOC(rd20_0[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(Result[30]),
        .DPO(rd20_0[30]),
        .DPRA0(Instr[17]),
        .DPRA1(Instr[18]),
        .DPRA2(Instr[19]),
        .DPRA3(Instr[20]),
        .DPRA4(Instr[21]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31__0
       (.A0(Instr[4]),
        .A1(Instr[5]),
        .A2(Instr[6]),
        .A3(Instr[7]),
        .A4(Instr[8]),
        .D(Result[31]),
        .DPO(rd20_0[31]),
        .DPRA0(Instr[17]),
        .DPRA1(Instr[18]),
        .DPRA2(Instr[19]),
        .DPRA3(Instr[20]),
        .DPRA4(Instr[21]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r2_0_31_6_11
       (.ADDRA(Instr[21:17]),
        .ADDRB(Instr[21:17]),
        .ADDRC(Instr[21:17]),
        .ADDRD(Instr[8:4]),
        .DIA(Result[7:6]),
        .DIB(Result[9:8]),
        .DIC(Result[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20_0[9:8]),
        .DOC(rd20_0[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__0_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[7]),
        .O(clk_32));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__0_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[6]),
        .O(clk_40));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__0_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[5]),
        .O(clk_25));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__0_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[4]),
        .O(clk_44));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_5
       (.I0(rd10[7]),
        .I1(\addressM[0] ),
        .I2(SrcB[7]),
        .I3(ALUControl),
        .O(clk_50[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_6
       (.I0(rd10[6]),
        .I1(\addressM[0] ),
        .I2(SrcB[6]),
        .I3(ALUControl),
        .O(clk_50[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_7
       (.I0(rd10[5]),
        .I1(\addressM[0] ),
        .I2(SrcB[5]),
        .I3(ALUControl),
        .O(clk_50[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_8
       (.I0(rd10[4]),
        .I1(\addressM[0] ),
        .I2(SrcB[4]),
        .I3(ALUControl),
        .O(clk_50[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__1_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[11]),
        .O(clk_27));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__1_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[10]),
        .O(clk_34));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__1_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[9]),
        .O(clk_19));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__1_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[8]),
        .O(clk_47));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_5
       (.I0(rd10[11]),
        .I1(\addressM[0] ),
        .I2(SrcB[11]),
        .I3(ALUControl),
        .O(clk_51[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_6
       (.I0(rd10[10]),
        .I1(\addressM[0] ),
        .I2(SrcB[10]),
        .I3(ALUControl),
        .O(clk_51[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_7
       (.I0(rd10[9]),
        .I1(\addressM[0] ),
        .I2(SrcB[9]),
        .I3(ALUControl),
        .O(clk_51[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_8
       (.I0(rd10[8]),
        .I1(\addressM[0] ),
        .I2(SrcB[8]),
        .I3(ALUControl),
        .O(clk_51[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__2_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[15]),
        .O(clk_30));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__2_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[14]),
        .O(clk_38));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__2_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[13]),
        .O(clk_23));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__2_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[12]),
        .O(clk_42));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_5
       (.I0(rd10[15]),
        .I1(\addressM[0] ),
        .I2(SrcB[15]),
        .I3(ALUControl),
        .O(clk_52[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_6
       (.I0(rd10[14]),
        .I1(\addressM[0] ),
        .I2(SrcB[14]),
        .I3(ALUControl),
        .O(clk_52[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_7
       (.I0(rd10[13]),
        .I1(\addressM[0] ),
        .I2(SrcB[13]),
        .I3(ALUControl),
        .O(clk_52[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_8
       (.I0(rd10[12]),
        .I1(\addressM[0] ),
        .I2(SrcB[12]),
        .I3(ALUControl),
        .O(clk_52[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__3_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[19]),
        .O(clk_28));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__3_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[18]),
        .O(clk_35));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__3_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[17]),
        .O(clk_20));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__3_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[16]),
        .O(clk_45));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_5
       (.I0(rd10[19]),
        .I1(\addressM[0] ),
        .I2(clk_2[1]),
        .I3(ALUControl),
        .O(clk_53[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_6
       (.I0(rd10[18]),
        .I1(\addressM[0] ),
        .I2(SrcB[18]),
        .I3(ALUControl),
        .O(clk_53[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_7
       (.I0(rd10[17]),
        .I1(\addressM[0] ),
        .I2(SrcB[17]),
        .I3(ALUControl),
        .O(clk_53[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_8
       (.I0(rd10[16]),
        .I1(\addressM[0] ),
        .I2(SrcB[16]),
        .I3(ALUControl),
        .O(clk_53[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__4_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[23]),
        .O(clk_31));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__4_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[22]),
        .O(clk_39));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__4_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[21]),
        .O(clk_24));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__4_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[20]),
        .O(clk_43));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_5
       (.I0(rd10[23]),
        .I1(\addressM[0] ),
        .I2(SrcB[23]),
        .I3(ALUControl),
        .O(clk_54[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_6
       (.I0(rd10[22]),
        .I1(\addressM[0] ),
        .I2(SrcB[22]),
        .I3(ALUControl),
        .O(clk_54[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_7
       (.I0(rd10[21]),
        .I1(\addressM[0] ),
        .I2(SrcB[21]),
        .I3(ALUControl),
        .O(clk_54[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_8
       (.I0(rd10[20]),
        .I1(\addressM[0] ),
        .I2(SrcB[20]),
        .I3(ALUControl),
        .O(clk_54[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__5_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[27]),
        .O(clk_26));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__5_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[26]),
        .O(clk_33));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__5_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[25]),
        .O(clk_18));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__5_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[24]),
        .O(clk_46));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_5
       (.I0(rd10[27]),
        .I1(\addressM[0] ),
        .I2(SrcB[27]),
        .I3(ALUControl),
        .O(clk_55[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_6
       (.I0(rd10[26]),
        .I1(\addressM[0] ),
        .I2(SrcB[26]),
        .I3(ALUControl),
        .O(clk_55[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_7
       (.I0(rd10[25]),
        .I1(\addressM[0] ),
        .I2(SrcB[25]),
        .I3(ALUControl),
        .O(clk_55[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_8
       (.I0(rd10[24]),
        .I1(\addressM[0] ),
        .I2(SrcB[24]),
        .I3(ALUControl),
        .O(clk_55[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__6_i_1
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[30]),
        .O(clk_37));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__6_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[29]),
        .O(clk_22));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry__6_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[28]),
        .O(clk_41));
  LUT6 #(
    .INIT(64'h9999A55566665AAA)) 
    sum__0_carry__6_i_4
       (.I0(clk_1),
        .I1(Instr[28]),
        .I2(rd21__3),
        .I3(rd20_0[31]),
        .I4(ALUSrc),
        .I5(ALUControl),
        .O(clk_0[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_5
       (.I0(rd10[30]),
        .I1(\addressM[0] ),
        .I2(SrcB[30]),
        .I3(ALUControl),
        .O(clk_0[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_6
       (.I0(rd10[29]),
        .I1(\addressM[0] ),
        .I2(SrcB[29]),
        .I3(ALUControl),
        .O(clk_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_7
       (.I0(rd10[28]),
        .I1(\addressM[0] ),
        .I2(SrcB[28]),
        .I3(ALUControl),
        .O(clk_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum__0_carry_i_1
       (.I0(ALUControl),
        .I1(SrcB[0]),
        .O(\ALUResult[0]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry_i_2
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[3]),
        .O(clk_29));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry_i_3
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[2]),
        .O(clk_36));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry_i_4
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[1]),
        .O(clk_21));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry_i_5
       (.I0(Instr[16]),
        .I1(Instr[15]),
        .I2(Instr[13]),
        .I3(Instr[12]),
        .I4(Instr[14]),
        .I5(rd10[0]),
        .O(clk_48));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_6
       (.I0(rd10[3]),
        .I1(\addressM[0] ),
        .I2(SrcB[3]),
        .I3(ALUControl),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_7
       (.I0(rd10[2]),
        .I1(\addressM[0] ),
        .I2(SrcB[2]),
        .I3(ALUControl),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_8
       (.I0(rd10[1]),
        .I1(\addressM[0] ),
        .I2(clk_2[0]),
        .I3(ALUControl),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h78)) 
    sum__0_carry_i_9
       (.I0(rd10[0]),
        .I1(\addressM[0] ),
        .I2(ALUControl),
        .O(S[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle
   (clk,
    reset,
    PC,
    Instr,
    MemWrite,
    ALUResult,
    WriteData,
    ReadData,
    MemStrobe,
    PCReady);
  input clk;
  input reset;
  output [31:0]PC;
  input [31:0]Instr;
  output MemWrite;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input [31:0]ReadData;
  output MemStrobe;
  input PCReady;

  wire [31:0]ALUResult;
  wire [31:0]Instr;
  wire MemStrobe;
  wire MemWrite;
  wire [31:0]PC;
  wire PCReady;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[4]),
        .I1(Instr[6]),
        .O(MemStrobe));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    MemWrite_INST_0
       (.I0(Instr[5]),
        .I1(Instr[6]),
        .I2(Instr[4]),
        .O(MemWrite));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath dp
       (.\ALUResult[0]_INST_0_i_5 (ALUResult[0]),
        .\ALUResult[10]_INST_0_i_2 (ALUResult[10]),
        .\ALUResult[11]_INST_0_i_2 (ALUResult[11]),
        .\ALUResult[12]_INST_0_i_2 (ALUResult[12]),
        .\ALUResult[13]_INST_0_i_2 (ALUResult[13]),
        .\ALUResult[14]_INST_0_i_2 (ALUResult[14]),
        .\ALUResult[15]_INST_0_i_2 (ALUResult[15]),
        .\ALUResult[16]_INST_0_i_2 (ALUResult[16]),
        .\ALUResult[17]_INST_0_i_2 (ALUResult[17]),
        .\ALUResult[18]_INST_0_i_2 (ALUResult[18]),
        .\ALUResult[19]_INST_0_i_2 (ALUResult[19]),
        .\ALUResult[1]_INST_0_i_2 (ALUResult[1]),
        .\ALUResult[20]_INST_0_i_2 (ALUResult[20]),
        .\ALUResult[21]_INST_0_i_2 (ALUResult[21]),
        .\ALUResult[22]_INST_0_i_2 (ALUResult[22]),
        .\ALUResult[23]_INST_0_i_2 (ALUResult[23]),
        .\ALUResult[24]_INST_0_i_2 (ALUResult[24]),
        .\ALUResult[25]_INST_0_i_2 (ALUResult[25]),
        .\ALUResult[26]_INST_0_i_2 (ALUResult[26]),
        .\ALUResult[27]_INST_0_i_2 (ALUResult[27]),
        .\ALUResult[28]_INST_0_i_2 (ALUResult[28]),
        .\ALUResult[29]_INST_0_i_2 (ALUResult[29]),
        .\ALUResult[2]_INST_0_i_2 (ALUResult[2]),
        .\ALUResult[30]_INST_0_i_2 (ALUResult[30]),
        .\ALUResult[31]_INST_0_i_3 (ALUResult[31]),
        .\ALUResult[3]_INST_0_i_2 (ALUResult[3]),
        .\ALUResult[4]_INST_0_i_2 (ALUResult[4]),
        .\ALUResult[5]_INST_0_i_2 (ALUResult[5]),
        .\ALUResult[6]_INST_0_i_2 (ALUResult[6]),
        .\ALUResult[7]_INST_0_i_2 (ALUResult[7]),
        .\ALUResult[8]_INST_0_i_2 (ALUResult[8]),
        .\ALUResult[9]_INST_0_i_2 (ALUResult[9]),
        .Instr(Instr[31:2]),
        .PCReady(PCReady),
        .Q(PC),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk),
        .reset(reset));
endmodule

(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  (* MARK_DEBUG *) wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Instr[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Instr[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(Instr[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(Instr[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(Instr[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(Instr[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(Instr[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(Instr[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(Instr[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(Instr[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(Instr[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(Instr[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(Instr[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(Instr[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(Instr[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(Instr[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(Instr[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(Instr[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(Instr[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(Instr[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(Instr[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(Instr[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(Instr[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(Instr[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(Instr[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(Instr[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(Instr[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(Instr[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(Instr[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(Instr[22]));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscvsingle riscvsingle
       (.ALUResult(addressM),
        .Instr({Instr[31:2],1'b0,1'b0}),
        .MemStrobe(MStrobe),
        .MemWrite(MemWrite),
        .PC(PC),
        .PCReady(PCReady),
        .ReadData(readDataM),
        .WriteData(writeDataM),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
