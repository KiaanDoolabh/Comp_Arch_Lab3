-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr  1 18:06:23 2026
-- Host        : CEAT-ENDV350-06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/nplaton/Downloads/lab2_NEW_030926-20260323T204423Z-3-001/lab2_NEW_030926/lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_MemControl : entity is "MemControl";
end design_1_top_0_0_MemControl;

architecture STRUCTURE of design_1_top_0_0_MemControl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair75";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder is
  port (
    PCPlus4 : out STD_LOGIC_VECTOR ( 28 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_0_5_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_1 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_0 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_6_11_1 : in STD_LOGIC;
    ReadDataOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ResultSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_12_17_0 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_1 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_0 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_1 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_2 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_3 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_5 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_6 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_0 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_1 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_2 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_3 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_2 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_3 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_4 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_5 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_2 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_6_11_4 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_5 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_6 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder : entity is "adder";
end design_1_top_0_0_adder;

architecture STRUCTURE of design_1_top_0_0_adder is
  signal \^pcplus4\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
  PCPlus4(28 downto 0) <= \^pcplus4\(28 downto 0);
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => O(0),
      I1 => \^pcplus4\(0),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_0_5,
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11(1),
      I1 => \^pcplus4\(2),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_0_5_1,
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11(0),
      I1 => \^pcplus4\(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_0_5_0,
      O => wd3(1)
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17(1),
      I1 => \^pcplus4\(10),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(5),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_0,
      O => wd3(10)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17(0),
      I1 => \^pcplus4\(9),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(4),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_1,
      O => wd3(9)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17(3),
      I1 => \^pcplus4\(12),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(7),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_4,
      O => wd3(12)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17(2),
      I1 => \^pcplus4\(11),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_5,
      O => wd3(11)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23_4(1),
      I1 => \^pcplus4\(14),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_12_17_3,
      O => wd3(14)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23_4(0),
      I1 => \^pcplus4\(13),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_12_17_2,
      O => wd3(13)
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23_4(3),
      I1 => \^pcplus4\(16),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_6,
      O => wd3(16)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23_4(2),
      I1 => \^pcplus4\(15),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_5,
      O => wd3(15)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23(1),
      I1 => \^pcplus4\(18),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_3,
      O => wd3(18)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23(0),
      I1 => \^pcplus4\(17),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_2,
      O => wd3(17)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23(3),
      I1 => \^pcplus4\(20),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_1,
      O => wd3(20)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_18_23(2),
      I1 => \^pcplus4\(19),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_18_23_0,
      O => wd3(19)
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29(1),
      I1 => \^pcplus4\(22),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_24_29_3,
      O => wd3(22)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29(0),
      I1 => \^pcplus4\(21),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_24_29_2,
      O => wd3(21)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29(3),
      I1 => \^pcplus4\(24),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_24_29_1,
      O => wd3(24)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_24_29(2),
      I1 => \^pcplus4\(23),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_24_29_0,
      O => wd3(23)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11(3),
      I1 => \^pcplus4\(4),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_6_11_2,
      O => wd3(4)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11(2),
      I1 => \^pcplus4\(3),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => Instr(1),
      I5 => rf_reg_r1_0_31_6_11_0,
      O => wd3(3)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_3(1),
      I1 => \^pcplus4\(6),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(1),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_4,
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_3(0),
      I1 => \^pcplus4\(5),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(0),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_5,
      O => wd3(5)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_3(3),
      I1 => \^pcplus4\(8),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(3),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_6,
      O => wd3(8)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rf_reg_r1_0_31_6_11_3(2),
      I1 => \^pcplus4\(7),
      I2 => rf_reg_r1_0_31_6_11_1,
      I3 => ReadDataOut(2),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_7,
      O => wd3(7)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => \^pcplus4\(3 downto 0),
      S(3 downto 0) => Q(4 downto 1)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => \^pcplus4\(7 downto 4),
      S(3 downto 0) => Q(8 downto 5)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => \^pcplus4\(11 downto 8),
      S(3 downto 0) => Q(12 downto 9)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => \^pcplus4\(15 downto 12),
      S(3 downto 0) => Q(16 downto 13)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => \^pcplus4\(19 downto 16),
      S(3 downto 0) => Q(20 downto 17)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => \^pcplus4\(23 downto 20),
      S(3 downto 0) => Q(24 downto 21)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => \^pcplus4\(27 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \^pcplus4\(28),
      S(3 downto 1) => B"000",
      S(0) => Q(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder_0 is
  port (
    PCTargetI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmSrc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[4]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[8]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[12]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[16]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[20]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[24]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[28]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder_0 : entity is "adder";
end design_1_top_0_0_adder_0;

architecture STRUCTURE of design_1_top_0_0_adder_0 is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of y_carry_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of y_carry_i_7 : label is "soft_lutpair7";
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => PCTargetI(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => PCTargetI(7 downto 4),
      S(3 downto 0) => \q[4]_i_2\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => PCTargetI(11 downto 8),
      S(3 downto 0) => \q[8]_i_2\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => PCTargetI(15 downto 12),
      S(3 downto 0) => \q[12]_i_2\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => PCTargetI(19 downto 16),
      S(3 downto 0) => \q[16]_i_2\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => PCTargetI(23 downto 20),
      S(3 downto 0) => \q[20]_i_2\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => PCTargetI(27 downto 24),
      S(3 downto 0) => \q[24]_i_2\(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(30 downto 28),
      O(3 downto 0) => PCTargetI(31 downto 28),
      S(3 downto 0) => \q[28]_i_2\(3 downto 0)
    );
y_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(4),
      O => ImmSrc(1)
    );
y_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(2),
      I2 => Instr(4),
      I3 => Instr(3),
      O => ImmSrc(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_alu is
  port (
    sum : out STD_LOGIC_VECTOR ( 30 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readDataM[0]\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_2_0\ : out STD_LOGIC;
    \readDataM[1]\ : out STD_LOGIC;
    \readDataM[2]\ : out STD_LOGIC;
    \readDataM[3]\ : out STD_LOGIC;
    \readDataM[4]\ : out STD_LOGIC;
    \readDataM[5]\ : out STD_LOGIC;
    \readDataM[6]\ : out STD_LOGIC;
    ReadDataOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \readDataM[30]\ : out STD_LOGIC;
    \readDataM[31]\ : out STD_LOGIC;
    \readDataM[22]\ : out STD_LOGIC;
    \readDataM[23]\ : out STD_LOGIC;
    \readDataM[20]\ : out STD_LOGIC;
    \readDataM[21]\ : out STD_LOGIC;
    \readDataM[18]\ : out STD_LOGIC;
    \readDataM[19]\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_2_0\ : out STD_LOGIC;
    \readDataM[28]\ : out STD_LOGIC;
    \readDataM[29]\ : out STD_LOGIC;
    \readDataM[26]\ : out STD_LOGIC;
    \readDataM[27]\ : out STD_LOGIC;
    \readDataM[24]\ : out STD_LOGIC;
    \readDataM[25]\ : out STD_LOGIC;
    \readDataM[16]\ : out STD_LOGIC;
    \readDataM[17]\ : out STD_LOGIC;
    \readDataM[7]\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \readDataM[16]_0\ : out STD_LOGIC;
    \rd21__3\ : out STD_LOGIC;
    \readDataM[17]_0\ : out STD_LOGIC;
    \readDataM[18]_0\ : out STD_LOGIC;
    \readDataM[19]_0\ : out STD_LOGIC;
    \readDataM[20]_0\ : out STD_LOGIC;
    \readDataM[21]_0\ : out STD_LOGIC;
    \readDataM[22]_0\ : out STD_LOGIC;
    \readDataM[23]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[2]_INST_0\ : out STD_LOGIC;
    \rd11__3\ : out STD_LOGIC;
    ImmExt : out STD_LOGIC_VECTOR ( 7 downto 0 );
    y_carry_i_5_0 : out STD_LOGIC;
    y_carry_i_5_1 : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_11\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_11_0\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_11_1\ : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    \ALUResult[0]_INST_0_i_11_2\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[4]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_6_2\ : in STD_LOGIC;
    \ALUResult[4]_INST_0_i_6_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_6_2\ : in STD_LOGIC;
    \ALUResult[8]_INST_0_i_6_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[12]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_2\ : in STD_LOGIC;
    \ALUResult[12]_INST_0_i_6_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addressM[19]\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[16]_INST_0_i_6_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[20]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_2\ : in STD_LOGIC;
    \ALUResult[20]_INST_0_i_6_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[24]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_6_2\ : in STD_LOGIC;
    \ALUResult[24]_INST_0_i_6_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[28]_INST_0_i_6\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_6_0\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_6_1\ : in STD_LOGIC;
    \ALUResult[28]_INST_0_i_6_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \carried_carry__6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_4\ : in STD_LOGIC;
    \q[31]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ResultSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_0_5_i_5 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_4 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_7 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_i_6 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_2 : in STD_LOGIC;
    rf_reg_r1_0_31_30_31_i_1 : in STD_LOGIC;
    \rf_reg_r1_0_31_30_31_i_1__0\ : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_6 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_5 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_4 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_3 : in STD_LOGIC;
    rf_reg_r1_0_31_18_23_i_2 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_6 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_5 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_4 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_3 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_2 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_i_1 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_i_6 : in STD_LOGIC;
    rf_reg_r1_0_31_12_17_i_5 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_1 : in STD_LOGIC;
    \writeDataM[0]\ : in STD_LOGIC;
    \writeDataM[1]\ : in STD_LOGIC;
    \writeDataM[2]\ : in STD_LOGIC;
    \writeDataM[3]\ : in STD_LOGIC;
    \writeDataM[4]\ : in STD_LOGIC;
    \writeDataM[5]\ : in STD_LOGIC;
    \writeDataM[6]\ : in STD_LOGIC;
    \writeDataM[7]\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \BControl__8\ : in STD_LOGIC;
    \q_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCTargetI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUSrc : in STD_LOGIC;
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \addressM[1]_0\ : in STD_LOGIC;
    \addressM[0]\ : in STD_LOGIC;
    \addressM[0]_0\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[0]_1\ : in STD_LOGIC;
    \addressM[19]_0\ : in STD_LOGIC;
    SrcB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ImmSrc : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_alu : entity is "alu";
end design_1_top_0_0_alu;

architecture STRUCTURE of design_1_top_0_0_alu is
  signal \ALUResult[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[0]_inst_0_i_5\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[1]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal PCTarget : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal RDByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RDHalf : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \carried_carry__0_n_0\ : STD_LOGIC;
  signal \carried_carry__0_n_1\ : STD_LOGIC;
  signal \carried_carry__0_n_2\ : STD_LOGIC;
  signal \carried_carry__0_n_3\ : STD_LOGIC;
  signal \carried_carry__1_n_0\ : STD_LOGIC;
  signal \carried_carry__1_n_1\ : STD_LOGIC;
  signal \carried_carry__1_n_2\ : STD_LOGIC;
  signal \carried_carry__1_n_3\ : STD_LOGIC;
  signal \carried_carry__2_n_0\ : STD_LOGIC;
  signal \carried_carry__2_n_1\ : STD_LOGIC;
  signal \carried_carry__2_n_2\ : STD_LOGIC;
  signal \carried_carry__2_n_3\ : STD_LOGIC;
  signal \carried_carry__3_n_0\ : STD_LOGIC;
  signal \carried_carry__3_n_1\ : STD_LOGIC;
  signal \carried_carry__3_n_2\ : STD_LOGIC;
  signal \carried_carry__3_n_3\ : STD_LOGIC;
  signal \carried_carry__4_n_0\ : STD_LOGIC;
  signal \carried_carry__4_n_1\ : STD_LOGIC;
  signal \carried_carry__4_n_2\ : STD_LOGIC;
  signal \carried_carry__4_n_3\ : STD_LOGIC;
  signal \carried_carry__5_n_0\ : STD_LOGIC;
  signal \carried_carry__5_n_1\ : STD_LOGIC;
  signal \carried_carry__5_n_2\ : STD_LOGIC;
  signal \carried_carry__5_n_3\ : STD_LOGIC;
  signal \carried_carry__6_n_1\ : STD_LOGIC;
  signal \carried_carry__6_n_2\ : STD_LOGIC;
  signal \carried_carry__6_n_3\ : STD_LOGIC;
  signal carried_carry_n_0 : STD_LOGIC;
  signal carried_carry_n_1 : STD_LOGIC;
  signal carried_carry_n_2 : STD_LOGIC;
  signal carried_carry_n_3 : STD_LOGIC;
  signal data8 : STD_LOGIC;
  signal \^rd21__3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_16_n_0 : STD_LOGIC;
  signal \^sum\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \sum__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum__0_carry__1_n_0\ : STD_LOGIC;
  signal \sum__0_carry__1_n_1\ : STD_LOGIC;
  signal \sum__0_carry__1_n_2\ : STD_LOGIC;
  signal \sum__0_carry__1_n_3\ : STD_LOGIC;
  signal \sum__0_carry__2_n_0\ : STD_LOGIC;
  signal \sum__0_carry__2_n_1\ : STD_LOGIC;
  signal \sum__0_carry__2_n_2\ : STD_LOGIC;
  signal \sum__0_carry__2_n_3\ : STD_LOGIC;
  signal \sum__0_carry__3_n_0\ : STD_LOGIC;
  signal \sum__0_carry__3_n_1\ : STD_LOGIC;
  signal \sum__0_carry__3_n_2\ : STD_LOGIC;
  signal \sum__0_carry__3_n_3\ : STD_LOGIC;
  signal \sum__0_carry__4_n_0\ : STD_LOGIC;
  signal \sum__0_carry__4_n_1\ : STD_LOGIC;
  signal \sum__0_carry__4_n_2\ : STD_LOGIC;
  signal \sum__0_carry__4_n_3\ : STD_LOGIC;
  signal \sum__0_carry__5_n_0\ : STD_LOGIC;
  signal \sum__0_carry__5_n_1\ : STD_LOGIC;
  signal \sum__0_carry__5_n_2\ : STD_LOGIC;
  signal \sum__0_carry__5_n_3\ : STD_LOGIC;
  signal \sum__0_carry__6_n_1\ : STD_LOGIC;
  signal \sum__0_carry__6_n_2\ : STD_LOGIC;
  signal \sum__0_carry__6_n_3\ : STD_LOGIC;
  signal \sum__0_carry_n_0\ : STD_LOGIC;
  signal \sum__0_carry_n_1\ : STD_LOGIC;
  signal \sum__0_carry_n_2\ : STD_LOGIC;
  signal \sum__0_carry_n_3\ : STD_LOGIC;
  signal \^y_carry_i_5_1\ : STD_LOGIC;
  signal NLW_carried_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_carried_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[19]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[1]_i_2\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_13 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_14 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_15 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_16 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_17 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_17 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_19 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_20 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_21 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sum__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum__0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of y_carry_i_5 : label is "soft_lutpair1";
begin
  \ALUResult[0]_INST_0_i_5\ <= \^aluresult[0]_inst_0_i_5\;
  \ALUResult[19]_INST_0_i_2_0\ <= \^aluresult[19]_inst_0_i_2_0\;
  \ALUResult[1]_INST_0_i_2_0\ <= \^aluresult[1]_inst_0_i_2_0\;
  \rd21__3\ <= \^rd21__3\;
  sum(30 downto 0) <= \^sum\(30 downto 0);
  y_carry_i_5_1 <= \^y_carry_i_5_1\;
\ALUResult[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_1_n_0\,
      I1 => \addressM[0]\,
      I2 => \ALUControl__0\(2),
      I3 => \addressM[0]_0\,
      I4 => ALUControl(0),
      I5 => \addressM[0]_1\,
      O => \^aluresult[0]_inst_0_i_5\
    );
\ALUResult[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \ALUControl__0\(1),
      I1 => \^sum\(0),
      I2 => \ALUControl__0\(0),
      I3 => data8,
      O => \ALUResult[0]_INST_0_i_1_n_0\
    );
\ALUResult[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(4),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(0)
    );
\ALUResult[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(5),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(1)
    );
\ALUResult[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(6),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(2)
    );
\ALUResult[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(7),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(3)
    );
\ALUResult[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(8),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(4)
    );
\ALUResult[17]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(9),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(5)
    );
\ALUResult[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(10),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(6)
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[19]_0\,
      I1 => \ALUResult[19]_INST_0_i_2_n_0\,
      O => \^aluresult[19]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF9FDE0206020"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(11),
      I3 => ImmSrc(0),
      I4 => Instr(1),
      I5 => Instr(17),
      O => ImmExt(7)
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \^sum\(19),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(1),
      I5 => \addressM[19]\,
      O => \ALUResult[19]_INST_0_i_2_n_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \addressM[1]_0\,
      I1 => \ALUResult[1]_INST_0_i_2_n_0\,
      O => \^aluresult[1]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \^sum\(1),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(0),
      I5 => \addressM[1]\,
      O => \ALUResult[1]_INST_0_i_2_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(0),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[0]\,
      O => WriteData(0)
    );
\WriteData[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(0),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(16),
      O => \readDataM[16]_0\
    );
\WriteData[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(1),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(17),
      O => \readDataM[17]_0\
    );
\WriteData[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(2),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(18),
      O => \readDataM[18]_0\
    );
\WriteData[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(3),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(19),
      O => \readDataM[19]_0\
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(1),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[1]\,
      O => WriteData(1)
    );
\WriteData[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(4),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(20),
      O => \readDataM[20]_0\
    );
\WriteData[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(5),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(21),
      O => \readDataM[21]_0\
    );
\WriteData[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(6),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(22),
      O => \readDataM[22]_0\
    );
\WriteData[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFB0000000"
    )
        port map (
      I0 => Instr(4),
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => \^rd21__3\,
      I3 => rd20(7),
      I4 => \^aluresult[1]_inst_0_i_2_0\,
      I5 => ReadData(23),
      O => \readDataM[23]_0\
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(2),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[2]\,
      O => WriteData(2)
    );
\WriteData[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(14),
      I1 => Instr(12),
      I2 => Instr(13),
      I3 => Instr(15),
      I4 => Instr(16),
      O => \^rd21__3\
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(3),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[3]\,
      O => WriteData(3)
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(4),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[4]\,
      O => WriteData(4)
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(5),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[5]\,
      O => WriteData(5)
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(6),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[6]\,
      O => WriteData(6)
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAF51005000"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(4),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(7),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => \writeDataM[7]\,
      O => WriteData(7)
    );
carried_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carried_carry_n_0,
      CO(2) => carried_carry_n_1,
      CO(1) => carried_carry_n_2,
      CO(0) => carried_carry_n_3,
      CYINIT => '1',
      DI(3) => \ALUResult[0]_INST_0_i_11_0\,
      DI(2) => \ALUResult[0]_INST_0_i_11_1\,
      DI(1) => \addressM[1]\,
      DI(0) => \ALUResult[0]_INST_0_i_11_2\,
      O(3 downto 0) => NLW_carried_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \carried_carry__0_0\(3 downto 0)
    );
\carried_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => carried_carry_n_0,
      CO(3) => \carried_carry__0_n_0\,
      CO(2) => \carried_carry__0_n_1\,
      CO(1) => \carried_carry__0_n_2\,
      CO(0) => \carried_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[4]_INST_0_i_6\,
      DI(2) => \ALUResult[4]_INST_0_i_6_0\,
      DI(1) => \ALUResult[4]_INST_0_i_6_1\,
      DI(0) => \ALUResult[4]_INST_0_i_6_2\,
      O(3 downto 0) => \NLW_carried_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__1_0\(3 downto 0)
    );
\carried_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__0_n_0\,
      CO(3) => \carried_carry__1_n_0\,
      CO(2) => \carried_carry__1_n_1\,
      CO(1) => \carried_carry__1_n_2\,
      CO(0) => \carried_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[8]_INST_0_i_6\,
      DI(2) => \ALUResult[8]_INST_0_i_6_0\,
      DI(1) => \ALUResult[8]_INST_0_i_6_1\,
      DI(0) => \ALUResult[8]_INST_0_i_6_2\,
      O(3 downto 0) => \NLW_carried_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__2_0\(3 downto 0)
    );
\carried_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__1_n_0\,
      CO(3) => \carried_carry__2_n_0\,
      CO(2) => \carried_carry__2_n_1\,
      CO(1) => \carried_carry__2_n_2\,
      CO(0) => \carried_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[12]_INST_0_i_6\,
      DI(2) => \ALUResult[12]_INST_0_i_6_0\,
      DI(1) => \ALUResult[12]_INST_0_i_6_1\,
      DI(0) => \ALUResult[12]_INST_0_i_6_2\,
      O(3 downto 0) => \NLW_carried_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__3_0\(3 downto 0)
    );
\carried_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__2_n_0\,
      CO(3) => \carried_carry__3_n_0\,
      CO(2) => \carried_carry__3_n_1\,
      CO(1) => \carried_carry__3_n_2\,
      CO(0) => \carried_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \addressM[19]\,
      DI(2) => \ALUResult[16]_INST_0_i_6\,
      DI(1) => \ALUResult[16]_INST_0_i_6_0\,
      DI(0) => \ALUResult[16]_INST_0_i_6_1\,
      O(3 downto 0) => \NLW_carried_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__4_0\(3 downto 0)
    );
\carried_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__3_n_0\,
      CO(3) => \carried_carry__4_n_0\,
      CO(2) => \carried_carry__4_n_1\,
      CO(1) => \carried_carry__4_n_2\,
      CO(0) => \carried_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[20]_INST_0_i_6\,
      DI(2) => \ALUResult[20]_INST_0_i_6_0\,
      DI(1) => \ALUResult[20]_INST_0_i_6_1\,
      DI(0) => \ALUResult[20]_INST_0_i_6_2\,
      O(3 downto 0) => \NLW_carried_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__5_0\(3 downto 0)
    );
\carried_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__4_n_0\,
      CO(3) => \carried_carry__5_n_0\,
      CO(2) => \carried_carry__5_n_1\,
      CO(1) => \carried_carry__5_n_2\,
      CO(0) => \carried_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[24]_INST_0_i_6\,
      DI(2) => \ALUResult[24]_INST_0_i_6_0\,
      DI(1) => \ALUResult[24]_INST_0_i_6_1\,
      DI(0) => \ALUResult[24]_INST_0_i_6_2\,
      O(3 downto 0) => \NLW_carried_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \carried_carry__6_0\(3 downto 0)
    );
\carried_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \carried_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2) => \carried_carry__6_n_1\,
      CO(1) => \carried_carry__6_n_2\,
      CO(0) => \carried_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \q[31]_i_4\,
      DI(2) => \ALUResult[28]_INST_0_i_6\,
      DI(1) => \ALUResult[28]_INST_0_i_6_0\,
      DI(0) => \ALUResult[28]_INST_0_i_6_1\,
      O(3 downto 0) => \NLW_carried_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[31]_i_4_0\(3 downto 0)
    );
carried_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(7),
      I2 => Instr(8),
      I3 => Instr(10),
      I4 => Instr(11),
      O => \rd11__3\
    );
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(0),
      I1 => Q(0),
      I2 => \BControl__8\,
      I3 => Instr(2),
      I4 => Instr(0),
      O => D(0)
    );
\q[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[0]_inst_0_i_5\,
      I1 => PCTargetI(0),
      I2 => ALUSrc,
      O => PCTarget(0)
    );
\q[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(19),
      I1 => \q_reg[19]\(0),
      I2 => \BControl__8\,
      I3 => Instr(2),
      I4 => Instr(0),
      O => D(2)
    );
\q[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[19]_inst_0_i_2_0\,
      I1 => PCTargetI(2),
      I2 => ALUSrc,
      O => PCTarget(19)
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(1),
      I1 => Q(1),
      I2 => \BControl__8\,
      I3 => Instr(2),
      I4 => Instr(0),
      O => D(1)
    );
\q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[1]_inst_0_i_2_0\,
      I1 => PCTargetI(1),
      I2 => ALUSrc,
      O => PCTarget(1)
    );
\q[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^aluresult[1]_inst_0_i_2_0\,
      I1 => \^aluresult[0]_inst_0_i_5\,
      I2 => rf_reg_r1_0_31_0_5_i_4,
      I3 => rf_reg_r1_0_31_0_5_i_5,
      O => \ALUResult[2]_INST_0\
    );
\result0_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result0_inferred__6/i__carry_n_0\,
      CO(2) => \result0_inferred__6/i__carry_n_1\,
      CO(1) => \result0_inferred__6/i__carry_n_2\,
      CO(0) => \result0_inferred__6/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result0_inferred__6/i__carry__0_0\(3 downto 0)
    );
\result0_inferred__6/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry_n_0\,
      CO(3) => \result0_inferred__6/i__carry__0_n_0\,
      CO(2) => \result0_inferred__6/i__carry__0_n_1\,
      CO(1) => \result0_inferred__6/i__carry__0_n_2\,
      CO(0) => \result0_inferred__6/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result0_inferred__6/i__carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result0_inferred__6/i__carry__1_1\(3 downto 0)
    );
\result0_inferred__6/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry__0_n_0\,
      CO(3) => \result0_inferred__6/i__carry__1_n_0\,
      CO(2) => \result0_inferred__6/i__carry__1_n_1\,
      CO(1) => \result0_inferred__6/i__carry__1_n_2\,
      CO(0) => \result0_inferred__6/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result0_inferred__6/i__carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result0_inferred__6/i__carry__2_1\(3 downto 0)
    );
\result0_inferred__6/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry__1_n_0\,
      CO(3) => data8,
      CO(2) => \result0_inferred__6/i__carry__2_n_1\,
      CO(1) => \result0_inferred__6/i__carry__2_n_2\,
      CO(0) => \result0_inferred__6/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \ALUResult[0]_INST_0_i_1_0\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ALUResult[0]_INST_0_i_1_1\(3 downto 0)
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(3),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_16_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_0_5_i_4,
      O => \readDataM[3]\
    );
rf_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(2),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_17_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_0_5_i_5,
      O => \readDataM[2]\
    );
rf_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(5),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_18_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_0_5_i_6,
      O => \readDataM[5]\
    );
rf_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(4),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_19_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_0_5_i_7,
      O => \readDataM[4]\
    );
rf_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(17),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(1),
      I3 => Instr(4),
      I4 => RDByte(1),
      O => rf_reg_r1_0_31_0_5_i_14_n_0
    );
rf_reg_r1_0_31_0_5_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(16),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(0),
      I3 => Instr(4),
      I4 => RDByte(0),
      O => rf_reg_r1_0_31_0_5_i_15_n_0
    );
rf_reg_r1_0_31_0_5_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(19),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(3),
      I3 => Instr(4),
      I4 => RDByte(3),
      O => rf_reg_r1_0_31_0_5_i_16_n_0
    );
rf_reg_r1_0_31_0_5_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(18),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(2),
      I3 => Instr(4),
      I4 => RDByte(2),
      O => rf_reg_r1_0_31_0_5_i_17_n_0
    );
rf_reg_r1_0_31_0_5_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(21),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(5),
      I3 => Instr(4),
      I4 => RDByte(5),
      O => rf_reg_r1_0_31_0_5_i_18_n_0
    );
rf_reg_r1_0_31_0_5_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(20),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(4),
      I3 => Instr(4),
      I4 => RDByte(4),
      O => rf_reg_r1_0_31_0_5_i_19_n_0
    );
rf_reg_r1_0_31_0_5_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(25),
      I1 => ReadData(17),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(9),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(1),
      O => RDByte(1)
    );
rf_reg_r1_0_31_0_5_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(24),
      I1 => ReadData(16),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(8),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(0),
      O => RDByte(0)
    );
rf_reg_r1_0_31_0_5_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(27),
      I1 => ReadData(19),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(11),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(3),
      O => RDByte(3)
    );
rf_reg_r1_0_31_0_5_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(26),
      I1 => ReadData(18),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(10),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(2),
      O => RDByte(2)
    );
rf_reg_r1_0_31_0_5_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(29),
      I1 => ReadData(21),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(13),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(5),
      O => RDByte(5)
    );
rf_reg_r1_0_31_0_5_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(28),
      I1 => ReadData(20),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(12),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(4),
      O => RDByte(4)
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(1),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_14_n_0,
      I4 => ResultSrc(0),
      I5 => \^aluresult[1]_inst_0_i_2_0\,
      O => \readDataM[1]\
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(0),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_0_5_i_15_n_0,
      I4 => ResultSrc(0),
      I5 => \^aluresult[0]_inst_0_i_5\,
      O => \readDataM[0]\
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(14),
      I2 => Instr(5),
      I3 => RDHalf(14),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(6)
    );
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(17),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_i_5,
      O => \readDataM[17]\
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(16),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_12_17_i_6,
      O => \readDataM[16]\
    );
rf_reg_r1_0_31_12_17_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(29),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(13),
      O => RDHalf(13)
    );
rf_reg_r1_0_31_12_17_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(28),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(12),
      O => RDHalf(12)
    );
rf_reg_r1_0_31_12_17_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(31),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(15),
      O => RDHalf(15)
    );
rf_reg_r1_0_31_12_17_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(31),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(15),
      I3 => Instr(4),
      I4 => RDByte(7),
      O => rf_reg_r1_0_31_12_17_i_16_n_0
    );
rf_reg_r1_0_31_12_17_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(30),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(14),
      O => RDHalf(14)
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(13),
      I2 => Instr(5),
      I3 => RDHalf(13),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(5)
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(12),
      I2 => Instr(5),
      I3 => RDHalf(12),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(4)
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => Instr(4),
      I1 => RDHalf(15),
      I2 => Instr(6),
      I3 => ReadData(15),
      I4 => Instr(5),
      I5 => rf_reg_r1_0_31_12_17_i_16_n_0,
      O => ReadDataOut(7)
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(20),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_i_4,
      O => \readDataM[20]\
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(23),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_i_5,
      O => \readDataM[23]\
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(22),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_i_6,
      O => \readDataM[22]\
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(19),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => \^aluresult[19]_inst_0_i_2_0\,
      O => \readDataM[19]\
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(18),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_i_2,
      O => \readDataM[18]\
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(21),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_18_23_i_3,
      O => \readDataM[21]\
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(26),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_4,
      O => \readDataM[26]\
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(29),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_5,
      O => \readDataM[29]\
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(28),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_6,
      O => \readDataM[28]\
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(25),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_1,
      O => \readDataM[25]\
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(24),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_2,
      O => \readDataM[24]\
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(27),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_24_29_i_3,
      O => \readDataM[27]\
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(30),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_30_31_i_1,
      O => \readDataM[30]\
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I1 => Instr(5),
      I2 => ReadData(31),
      I3 => Instr(6),
      I4 => ResultSrc(0),
      I5 => \rf_reg_r1_0_31_30_31_i_1__0\,
      O => \readDataM[31]\
    );
rf_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(9),
      I2 => Instr(5),
      I3 => RDHalf(9),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(1)
    );
rf_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(8),
      I2 => Instr(5),
      I3 => RDHalf(8),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(0)
    );
rf_reg_r1_0_31_6_11_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(11),
      I2 => Instr(5),
      I3 => RDHalf(11),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(3)
    );
rf_reg_r1_0_31_6_11_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF404545EF404040"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(10),
      I2 => Instr(5),
      I3 => RDHalf(10),
      I4 => Instr(4),
      I5 => RDByte(7),
      O => ReadDataOut(2)
    );
rf_reg_r1_0_31_6_11_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(23),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(7),
      I3 => Instr(4),
      I4 => RDByte(7),
      O => rf_reg_r1_0_31_6_11_i_15_n_0
    );
rf_reg_r1_0_31_6_11_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ReadData(22),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(6),
      I3 => Instr(4),
      I4 => RDByte(6),
      O => rf_reg_r1_0_31_6_11_i_16_n_0
    );
rf_reg_r1_0_31_6_11_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(25),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(9),
      O => RDHalf(9)
    );
rf_reg_r1_0_31_6_11_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(31),
      I1 => ReadData(23),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(15),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(7),
      O => RDByte(7)
    );
rf_reg_r1_0_31_6_11_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(24),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(8),
      O => RDHalf(8)
    );
rf_reg_r1_0_31_6_11_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(27),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(11),
      O => RDHalf(11)
    );
rf_reg_r1_0_31_6_11_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(26),
      I1 => \^aluresult[1]_inst_0_i_2_0\,
      I2 => ReadData(10),
      O => RDHalf(10)
    );
rf_reg_r1_0_31_6_11_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ReadData(30),
      I1 => ReadData(22),
      I2 => \^aluresult[1]_inst_0_i_2_0\,
      I3 => ReadData(14),
      I4 => \^aluresult[0]_inst_0_i_5\,
      I5 => ReadData(6),
      O => RDByte(6)
    );
rf_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(7),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_6_11_i_15_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_i_1,
      O => \readDataM[7]\
    );
rf_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => Instr(6),
      I1 => ReadData(6),
      I2 => Instr(5),
      I3 => rf_reg_r1_0_31_6_11_i_16_n_0,
      I4 => ResultSrc(0),
      I5 => rf_reg_r1_0_31_6_11_i_2,
      O => \readDataM[6]\
    );
\sum__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum__0_carry_n_0\,
      CO(2) => \sum__0_carry_n_1\,
      CO(1) => \sum__0_carry_n_2\,
      CO(0) => \sum__0_carry_n_3\,
      CYINIT => \ALUResult[0]_INST_0_i_11\,
      DI(3) => \ALUResult[0]_INST_0_i_11_0\,
      DI(2) => \ALUResult[0]_INST_0_i_11_1\,
      DI(1) => \addressM[1]\,
      DI(0) => \ALUResult[0]_INST_0_i_11_2\,
      O(3 downto 0) => \^sum\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry_n_0\,
      CO(3) => \sum__0_carry__0_n_0\,
      CO(2) => \sum__0_carry__0_n_1\,
      CO(1) => \sum__0_carry__0_n_2\,
      CO(0) => \sum__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[4]_INST_0_i_6\,
      DI(2) => \ALUResult[4]_INST_0_i_6_0\,
      DI(1) => \ALUResult[4]_INST_0_i_6_1\,
      DI(0) => \ALUResult[4]_INST_0_i_6_2\,
      O(3 downto 0) => \^sum\(7 downto 4),
      S(3 downto 0) => \ALUResult[4]_INST_0_i_6_3\(3 downto 0)
    );
\sum__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__0_n_0\,
      CO(3) => \sum__0_carry__1_n_0\,
      CO(2) => \sum__0_carry__1_n_1\,
      CO(1) => \sum__0_carry__1_n_2\,
      CO(0) => \sum__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[8]_INST_0_i_6\,
      DI(2) => \ALUResult[8]_INST_0_i_6_0\,
      DI(1) => \ALUResult[8]_INST_0_i_6_1\,
      DI(0) => \ALUResult[8]_INST_0_i_6_2\,
      O(3 downto 0) => \^sum\(11 downto 8),
      S(3 downto 0) => \ALUResult[8]_INST_0_i_6_3\(3 downto 0)
    );
\sum__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__1_n_0\,
      CO(3) => \sum__0_carry__2_n_0\,
      CO(2) => \sum__0_carry__2_n_1\,
      CO(1) => \sum__0_carry__2_n_2\,
      CO(0) => \sum__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[12]_INST_0_i_6\,
      DI(2) => \ALUResult[12]_INST_0_i_6_0\,
      DI(1) => \ALUResult[12]_INST_0_i_6_1\,
      DI(0) => \ALUResult[12]_INST_0_i_6_2\,
      O(3 downto 0) => \^sum\(15 downto 12),
      S(3 downto 0) => \ALUResult[12]_INST_0_i_6_3\(3 downto 0)
    );
\sum__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__2_n_0\,
      CO(3) => \sum__0_carry__3_n_0\,
      CO(2) => \sum__0_carry__3_n_1\,
      CO(1) => \sum__0_carry__3_n_2\,
      CO(0) => \sum__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \addressM[19]\,
      DI(2) => \ALUResult[16]_INST_0_i_6\,
      DI(1) => \ALUResult[16]_INST_0_i_6_0\,
      DI(0) => \ALUResult[16]_INST_0_i_6_1\,
      O(3 downto 0) => \^sum\(19 downto 16),
      S(3 downto 0) => \ALUResult[16]_INST_0_i_6_2\(3 downto 0)
    );
\sum__0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__3_n_0\,
      CO(3) => \sum__0_carry__4_n_0\,
      CO(2) => \sum__0_carry__4_n_1\,
      CO(1) => \sum__0_carry__4_n_2\,
      CO(0) => \sum__0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[20]_INST_0_i_6\,
      DI(2) => \ALUResult[20]_INST_0_i_6_0\,
      DI(1) => \ALUResult[20]_INST_0_i_6_1\,
      DI(0) => \ALUResult[20]_INST_0_i_6_2\,
      O(3 downto 0) => \^sum\(23 downto 20),
      S(3 downto 0) => \ALUResult[20]_INST_0_i_6_3\(3 downto 0)
    );
\sum__0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__4_n_0\,
      CO(3) => \sum__0_carry__5_n_0\,
      CO(2) => \sum__0_carry__5_n_1\,
      CO(1) => \sum__0_carry__5_n_2\,
      CO(0) => \sum__0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \ALUResult[24]_INST_0_i_6\,
      DI(2) => \ALUResult[24]_INST_0_i_6_0\,
      DI(1) => \ALUResult[24]_INST_0_i_6_1\,
      DI(0) => \ALUResult[24]_INST_0_i_6_2\,
      O(3 downto 0) => \^sum\(27 downto 24),
      S(3 downto 0) => \ALUResult[24]_INST_0_i_6_3\(3 downto 0)
    );
\sum__0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__5_n_0\,
      CO(3) => \NLW_sum__0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum__0_carry__6_n_1\,
      CO(1) => \sum__0_carry__6_n_2\,
      CO(0) => \sum__0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ALUResult[28]_INST_0_i_6\,
      DI(1) => \ALUResult[28]_INST_0_i_6_0\,
      DI(0) => \ALUResult[28]_INST_0_i_6_1\,
      O(3) => O(0),
      O(2 downto 0) => \^sum\(30 downto 28),
      S(3 downto 0) => \ALUResult[28]_INST_0_i_6_2\(3 downto 0)
    );
\y_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => Instr(17),
      I1 => ImmSrc(1),
      I2 => Instr(3),
      I3 => ImmSrc(0),
      I4 => Instr(12),
      I5 => \^y_carry_i_5_1\,
      O => y_carry_i_5_0
    );
y_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      O => \^y_carry_i_5_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr is
  port (
    Result : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[2]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[2]_INST_0_i_12_0\ : out STD_LOGIC;
    \ALUResult[3]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[3]_INST_0_i_12_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_11_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_12_0\ : out STD_LOGIC;
    ALUControl : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUSrc : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_7_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    y_carry_i_7 : out STD_LOGIC;
    y_carry_i_7_0 : out STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_1 : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCPlus4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r2_0_31_30_31 : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0_0\ : in STD_LOGIC;
    rf_reg_r1_0_31_24_29 : in STD_LOGIC;
    rf_reg_r1_0_31_24_29_0 : in STD_LOGIC;
    \d30_carry__3\ : in STD_LOGIC;
    ImmSrc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \d30_carry__1\ : in STD_LOGIC;
    PCReady : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_flopenr : entity is "flopenr";
end design_1_top_0_0_flopenr;

architecture STRUCTURE of design_1_top_0_0_flopenr is
  signal \ALUResult[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \c/ALUOp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum__0_carry__6_i_8\ : label is "soft_lutpair9";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FC0FF08"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(28),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(10),
      O => \ALUResult[0]_INST_0_i_10_n_0\
    );
\ALUResult[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454000000000CFC0"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(5),
      I2 => ImmSrc(0),
      I3 => Instr(18),
      I4 => Instr(4),
      I5 => Instr(0),
      O => y_carry_i_7
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83380038"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(2),
      I4 => \ALUResult[0]_INST_0_i_10_n_0\,
      O => ALUControl(0)
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(15),
      I1 => Instr(13),
      I2 => Instr(14),
      I3 => Instr(16),
      I4 => Instr(17),
      O => \ALUResult[0]_INST_0_i_7_0\
    );
\ALUResult[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8E20000B8B8E2E2"
    )
        port map (
      I0 => Instr(19),
      I1 => ImmSrc(0),
      I2 => Instr(6),
      I3 => Instr(1),
      I4 => Instr(4),
      I5 => Instr(0),
      O => y_carry_i_7_0
    );
\ALUResult[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(20),
      O => \ALUResult[2]_INST_0_i_11_0\
    );
\ALUResult[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(7),
      O => \ALUResult[2]_INST_0_i_12_0\
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0820"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => Instr(10),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => \c/ALUOp\(0),
      O => \ALUControl__0\(2)
    );
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => Instr(12),
      I2 => Instr(11),
      I3 => Instr(10),
      I4 => \c/ALUOp\(0),
      O => \ALUControl__0\(0)
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(3),
      O => \c/ALUOp\(1)
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \c/ALUOp\(0)
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0828"
    )
        port map (
      I0 => \c/ALUOp\(1),
      I1 => Instr(10),
      I2 => Instr(11),
      I3 => Instr(12),
      I4 => \c/ALUOp\(0),
      O => \ALUControl__0\(1)
    );
\ALUResult[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(21),
      O => \ALUResult[3]_INST_0_i_11_0\
    );
\ALUResult[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(8),
      O => \ALUResult[3]_INST_0_i_12_0\
    );
\ALUResult[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(22),
      O => \ALUResult[4]_INST_0_i_11_0\
    );
\ALUResult[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(1),
      I2 => Instr(2),
      I3 => Instr(4),
      I4 => Instr(3),
      I5 => Instr(9),
      O => \ALUResult[4]_INST_0_i_12_0\
    );
\d30_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(25),
      I3 => \^q\(7),
      O => \q_reg[7]_1\(3)
    );
\d30_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(24),
      I3 => \^q\(6),
      O => \q_reg[7]_1\(2)
    );
\d30_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(23),
      I3 => \^q\(5),
      O => \q_reg[7]_1\(1)
    );
\d30_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAEEFBF54511040"
    )
        port map (
      I0 => \d30_carry__3\,
      I1 => ImmSrc(1),
      I2 => Instr(9),
      I3 => ImmSrc(0),
      I4 => Instr(22),
      I5 => \^q\(4),
      O => \q_reg[7]_1\(0)
    );
\d30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \d30_carry__1\,
      I1 => \^q\(11),
      O => \q_reg[11]_1\(3)
    );
\d30_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(28),
      I3 => \^q\(10),
      O => \q_reg[11]_1\(2)
    );
\d30_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(27),
      I3 => \^q\(9),
      O => \q_reg[11]_1\(1)
    );
\d30_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(4),
      I2 => Instr(26),
      I3 => \^q\(8),
      O => \q_reg[11]_1\(0)
    );
\d30_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(13),
      I4 => \d30_carry__3\,
      I5 => \^q\(15),
      O => \q_reg[15]_1\(3)
    );
\d30_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(12),
      I4 => \d30_carry__3\,
      I5 => \^q\(14),
      O => \q_reg[15]_1\(2)
    );
\d30_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(11),
      I4 => \d30_carry__3\,
      I5 => \^q\(13),
      O => \q_reg[15]_1\(1)
    );
\d30_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(10),
      I4 => \d30_carry__3\,
      I5 => \^q\(12),
      O => \q_reg[15]_1\(0)
    );
\d30_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(17),
      I4 => \d30_carry__3\,
      I5 => \^q\(19),
      O => \q_reg[19]_1\(3)
    );
\d30_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(16),
      I4 => \d30_carry__3\,
      I5 => \^q\(18),
      O => \q_reg[19]_1\(2)
    );
\d30_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(15),
      I4 => \d30_carry__3\,
      I5 => \^q\(17),
      O => \q_reg[19]_1\(1)
    );
\d30_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF15D5FF00EA2A"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(1),
      I2 => ImmSrc(0),
      I3 => Instr(14),
      I4 => \d30_carry__3\,
      I5 => \^q\(16),
      O => \q_reg[19]_1\(0)
    );
\d30_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(21),
      I4 => \^q\(23),
      O => \q_reg[23]_1\(3)
    );
\d30_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(20),
      I4 => \^q\(22),
      O => \q_reg[23]_1\(2)
    );
\d30_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(19),
      I4 => \^q\(21),
      O => \q_reg[23]_1\(1)
    );
\d30_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(18),
      I4 => \^q\(20),
      O => \q_reg[23]_1\(0)
    );
\d30_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(25),
      I4 => \^q\(27),
      O => \q_reg[27]_1\(3)
    );
\d30_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(24),
      I4 => \^q\(26),
      O => \q_reg[27]_1\(2)
    );
\d30_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(23),
      I4 => \^q\(25),
      O => \q_reg[27]_1\(1)
    );
\d30_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(22),
      I4 => \^q\(24),
      O => \q_reg[27]_1\(0)
    );
\d30_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Instr(29),
      I1 => \^q\(31),
      O => S(3)
    );
\d30_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(28),
      I4 => \^q\(30),
      O => S(2)
    );
\d30_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(27),
      I4 => \^q\(29),
      O => S(1)
    );
\d30_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(0),
      I3 => Instr(26),
      I4 => \^q\(28),
      O => S(0)
    );
d30_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAEEFBF54511040"
    )
        port map (
      I0 => \d30_carry__3\,
      I1 => ImmSrc(1),
      I2 => Instr(8),
      I3 => ImmSrc(0),
      I4 => Instr(21),
      I5 => \^q\(3),
      O => \q_reg[3]_1\(3)
    );
d30_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAEEFBF54511040"
    )
        port map (
      I0 => \d30_carry__3\,
      I1 => ImmSrc(1),
      I2 => Instr(7),
      I3 => ImmSrc(0),
      I4 => Instr(20),
      I5 => \^q\(2),
      O => \q_reg[3]_1\(2)
    );
d30_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAEEFBF54511040"
    )
        port map (
      I0 => \d30_carry__3\,
      I1 => ImmSrc(1),
      I2 => Instr(6),
      I3 => ImmSrc(0),
      I4 => Instr(19),
      I5 => \^q\(1),
      O => \q_reg[3]_1\(1)
    );
d30_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB00005404"
    )
        port map (
      I0 => \d30_carry__3\,
      I1 => Instr(18),
      I2 => ImmSrc(0),
      I3 => Instr(5),
      I4 => ImmSrc(1),
      I5 => \^q\(0),
      O => \q_reg[3]_1\(0)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(12),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(13),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(14),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(15),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(16),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(17),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(18),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(19),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(20),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(21),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(22),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(23),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(24),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(25),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(26),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(27),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(28),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(29),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(30),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(31),
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => D(9),
      Q => \^q\(9)
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => O(1),
      I1 => \^q\(1),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_1,
      O => Result(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => O(0),
      I1 => \^q\(0),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_0,
      O => Result(0)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF3FAF00A030A0"
    )
        port map (
      I0 => O(2),
      I1 => \^q\(2),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5,
      O => Result(2)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(1),
      I1 => PCPlus4(1),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_24_29_0,
      O => Result(4)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(0),
      I1 => PCPlus4(0),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_24_29,
      O => Result(3)
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(2),
      I1 => PCPlus4(2),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => rf_reg_r2_0_31_30_31,
      O => Result(5)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCFAF00A0C0A0"
    )
        port map (
      I0 => \rf_reg_r2_0_31_30_31__0\(3),
      I1 => PCPlus4(3),
      I2 => Instr(0),
      I3 => Instr(3),
      I4 => Instr(2),
      I5 => \rf_reg_r2_0_31_30_31__0_0\,
      O => Result(6)
    );
\sum__0_carry__6_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550111"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(4),
      I2 => Instr(3),
      I3 => Instr(2),
      I4 => Instr(0),
      O => ALUSrc
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(7),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(25),
      O => \q_reg[7]_0\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(24),
      O => \q_reg[7]_0\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(23),
      O => \q_reg[7]_0\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \d30_carry__3\,
      I2 => ImmSrc(1),
      I3 => Instr(9),
      I4 => ImmSrc(0),
      I5 => Instr(22),
      O => \q_reg[7]_0\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => \d30_carry__1\,
      O => \q_reg[11]_0\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(10),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(28),
      O => \q_reg[11]_0\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(9),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(27),
      O => \q_reg[11]_0\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => \^q\(8),
      I1 => Instr(0),
      I2 => Instr(4),
      I3 => Instr(26),
      O => \q_reg[11]_0\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(15),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(13),
      I5 => \d30_carry__3\,
      O => \q_reg[15]_0\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(14),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(12),
      I5 => \d30_carry__3\,
      O => \q_reg[15]_0\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(13),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(11),
      I5 => \d30_carry__3\,
      O => \q_reg[15]_0\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(12),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(10),
      I5 => \d30_carry__3\,
      O => \q_reg[15]_0\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(19),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(17),
      I5 => \d30_carry__3\,
      O => \q_reg[19]_0\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(18),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(16),
      I5 => \d30_carry__3\,
      O => \q_reg[19]_0\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(17),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(15),
      I5 => \d30_carry__3\,
      O => \q_reg[19]_0\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAAA5666A666"
    )
        port map (
      I0 => \^q\(16),
      I1 => Instr(29),
      I2 => ImmSrc(1),
      I3 => ImmSrc(0),
      I4 => Instr(14),
      I5 => \d30_carry__3\,
      O => \q_reg[19]_0\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(23),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(21),
      O => \q_reg[23]_0\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(22),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(20),
      O => \q_reg[23]_0\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(21),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(19),
      O => \q_reg[23]_0\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(20),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(18),
      O => \q_reg[23]_0\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(27),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(25),
      O => \q_reg[27]_0\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(26),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(24),
      O => \q_reg[27]_0\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(25),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(23),
      O => \q_reg[27]_0\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(24),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(22),
      O => \q_reg[27]_0\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(31),
      I1 => Instr(29),
      O => \q_reg[31]_0\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(30),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(28),
      O => \q_reg[31]_0\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(29),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(27),
      O => \q_reg[31]_0\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65666A66"
    )
        port map (
      I0 => \^q\(28),
      I1 => Instr(29),
      I2 => Instr(4),
      I3 => Instr(0),
      I4 => Instr(26),
      O => \q_reg[31]_0\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \d30_carry__3\,
      I2 => ImmSrc(1),
      I3 => Instr(8),
      I4 => ImmSrc(0),
      I5 => Instr(21),
      O => \q_reg[3]_0\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \d30_carry__3\,
      I2 => ImmSrc(1),
      I3 => Instr(7),
      I4 => ImmSrc(0),
      I5 => Instr(20),
      O => \q_reg[3]_0\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99A9A9AA9AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \d30_carry__3\,
      I2 => ImmSrc(1),
      I3 => Instr(6),
      I4 => ImmSrc(0),
      I5 => Instr(19),
      O => \q_reg[3]_0\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA999AAA9A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \d30_carry__3\,
      I2 => Instr(18),
      I3 => ImmSrc(0),
      I4 => Instr(5),
      I5 => ImmSrc(1),
      O => \q_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_regfile is
  port (
    rd20 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_6 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_7 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_8 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_9 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clk_10 : out STD_LOGIC;
    clk_11 : out STD_LOGIC;
    clk_12 : out STD_LOGIC;
    clk_13 : out STD_LOGIC;
    clk_14 : out STD_LOGIC;
    clk_15 : out STD_LOGIC;
    clk_16 : out STD_LOGIC;
    clk_17 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \BControl__8\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_6_0\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_12_0\ : out STD_LOGIC;
    clk_18 : out STD_LOGIC;
    clk_19 : out STD_LOGIC;
    clk_20 : out STD_LOGIC;
    clk_21 : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[11]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[10]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[7]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[6]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[5]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[3]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[2]_INST_0_i_2_0\ : out STD_LOGIC;
    clk_22 : out STD_LOGIC;
    clk_23 : out STD_LOGIC;
    clk_24 : out STD_LOGIC;
    clk_25 : out STD_LOGIC;
    \ALUResult[15]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[14]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[13]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[12]_INST_0_i_2_0\ : out STD_LOGIC;
    clk_26 : out STD_LOGIC;
    clk_27 : out STD_LOGIC;
    clk_28 : out STD_LOGIC;
    clk_29 : out STD_LOGIC;
    clk_30 : out STD_LOGIC;
    clk_31 : out STD_LOGIC;
    clk_32 : out STD_LOGIC;
    clk_33 : out STD_LOGIC;
    clk_34 : out STD_LOGIC;
    clk_35 : out STD_LOGIC;
    clk_36 : out STD_LOGIC;
    clk_37 : out STD_LOGIC;
    clk_38 : out STD_LOGIC;
    clk_39 : out STD_LOGIC;
    clk_40 : out STD_LOGIC;
    clk_41 : out STD_LOGIC;
    clk_42 : out STD_LOGIC;
    clk_43 : out STD_LOGIC;
    clk_44 : out STD_LOGIC;
    clk_45 : out STD_LOGIC;
    clk_46 : out STD_LOGIC;
    clk_47 : out STD_LOGIC;
    clk_48 : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : out STD_LOGIC;
    \ALUResult[29]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[28]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[25]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[24]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[27]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[26]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[23]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[22]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[21]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[18]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[17]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[16]_INST_0_i_2_0\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_6_0\ : out STD_LOGIC;
    clk_49 : out STD_LOGIC;
    ResultSrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_50 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_51 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_52 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_53 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_54 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_55 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_56 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_57 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_58 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_59 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_60 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_61 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_62 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_63 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_6_0\ : out STD_LOGIC;
    rf_reg_r1_0_31_6_11_i_9_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    Result : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \rd21__3\ : in STD_LOGIC;
    ALUSrc : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[0]\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \writeDataM[15]\ : in STD_LOGIC;
    \writeDataM[16]\ : in STD_LOGIC;
    \writeDataM[17]\ : in STD_LOGIC;
    \writeDataM[18]\ : in STD_LOGIC;
    \writeDataM[19]\ : in STD_LOGIC;
    \writeDataM[20]\ : in STD_LOGIC;
    \writeDataM[21]\ : in STD_LOGIC;
    \writeDataM[22]\ : in STD_LOGIC;
    \writeDataM[23]\ : in STD_LOGIC;
    \writeDataM[8]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCPlus4 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \q[31]_i_3_0\ : in STD_LOGIC;
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PCTargetI : in STD_LOGIC_VECTOR ( 28 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q[31]_i_6_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sum__0_carry_i_7_0\ : in STD_LOGIC;
    ImmExt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum__0_carry__1_i_5_0\ : in STD_LOGIC;
    \sum__0_carry__0_i_8_0\ : in STD_LOGIC;
    ImmSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sum__0_carry__0_i_8_1\ : in STD_LOGIC;
    \sum__0_carry_i_6_0\ : in STD_LOGIC;
    \sum__0_carry_i_6_1\ : in STD_LOGIC;
    \sum__0_carry_i_7_1\ : in STD_LOGIC;
    \sum__0_carry_i_7_2\ : in STD_LOGIC;
    \ALUResult[1]_INST_0_i_2\ : in STD_LOGIC;
    \i__carry_i_4_0\ : in STD_LOGIC;
    \rd11__3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_regfile : entity is "regfile";
end design_1_top_0_0_regfile;

architecture STRUCTURE of design_1_top_0_0_regfile is
  signal \ALUResult[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[10]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[11]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[12]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[13]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[14]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[15]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[16]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[17]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[18]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[20]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[21]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[22]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[23]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[24]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[25]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[26]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[27]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[28]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[29]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[2]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[3]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[4]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[5]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[6]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[7]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[8]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^aluresult[9]_inst_0_i_2_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^bcontrol__8\ : STD_LOGIC;
  signal PCTarget : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal RegWrite : STD_LOGIC;
  signal SrcB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WriteData[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \WriteData[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteData[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu/result00_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_1\ : STD_LOGIC;
  signal \^clk_10\ : STD_LOGIC;
  signal \^clk_11\ : STD_LOGIC;
  signal \^clk_12\ : STD_LOGIC;
  signal \^clk_13\ : STD_LOGIC;
  signal \^clk_14\ : STD_LOGIC;
  signal \^clk_15\ : STD_LOGIC;
  signal \^clk_16\ : STD_LOGIC;
  signal \^clk_17\ : STD_LOGIC;
  signal \^clk_18\ : STD_LOGIC;
  signal \^clk_19\ : STD_LOGIC;
  signal \^clk_2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^clk_20\ : STD_LOGIC;
  signal \^clk_21\ : STD_LOGIC;
  signal \^clk_22\ : STD_LOGIC;
  signal \^clk_23\ : STD_LOGIC;
  signal \^clk_24\ : STD_LOGIC;
  signal \^clk_25\ : STD_LOGIC;
  signal \^clk_26\ : STD_LOGIC;
  signal \^clk_27\ : STD_LOGIC;
  signal \^clk_28\ : STD_LOGIC;
  signal \^clk_29\ : STD_LOGIC;
  signal \^clk_30\ : STD_LOGIC;
  signal \^clk_31\ : STD_LOGIC;
  signal \^clk_32\ : STD_LOGIC;
  signal \^clk_33\ : STD_LOGIC;
  signal \^clk_34\ : STD_LOGIC;
  signal \^clk_35\ : STD_LOGIC;
  signal \^clk_36\ : STD_LOGIC;
  signal \^clk_37\ : STD_LOGIC;
  signal \^clk_38\ : STD_LOGIC;
  signal \^clk_39\ : STD_LOGIC;
  signal \^clk_40\ : STD_LOGIC;
  signal \^clk_41\ : STD_LOGIC;
  signal \^clk_42\ : STD_LOGIC;
  signal \^clk_43\ : STD_LOGIC;
  signal \^clk_44\ : STD_LOGIC;
  signal \^clk_45\ : STD_LOGIC;
  signal \^clk_46\ : STD_LOGIC;
  signal \^clk_47\ : STD_LOGIC;
  signal \^clk_48\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_11_n_0\ : STD_LOGIC;
  signal \q[31]_i_12_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_4_n_0\ : STD_LOGIC;
  signal \q[31]_i_5_n_0\ : STD_LOGIC;
  signal \q[31]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q[31]_i_9_n_0\ : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rd20\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd20_0 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_10\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_10\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_10\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[15]_INST_0_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_14\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALUResult[1]_INST_0_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ALUResult[1]_INST_0_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ALUResult[1]_INST_0_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_9\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_9\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALUResult[22]_INST_0_i_9\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_9\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_8\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_9\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_9\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_8\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_8\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ALUResult[2]_INST_0_i_6\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ALUResult[4]_INST_0_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ALUResult[5]_INST_0_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_10\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[8]_INST_0_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_10\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[10]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[11]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[12]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[13]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[14]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[15]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[17]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[18]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[20]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[21]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[22]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[23]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[24]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[25]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[26]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[27]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[28]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[29]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[2]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[30]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[31]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[3]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[4]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[5]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[6]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[7]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[8]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[9]_i_2\ : label is "soft_lutpair52";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_11 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_9 : label is "soft_lutpair73";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
  \ALUResult[10]_INST_0_i_2_0\ <= \^aluresult[10]_inst_0_i_2_0\;
  \ALUResult[11]_INST_0_i_2_0\ <= \^aluresult[11]_inst_0_i_2_0\;
  \ALUResult[12]_INST_0_i_2_0\ <= \^aluresult[12]_inst_0_i_2_0\;
  \ALUResult[13]_INST_0_i_2_0\ <= \^aluresult[13]_inst_0_i_2_0\;
  \ALUResult[14]_INST_0_i_2_0\ <= \^aluresult[14]_inst_0_i_2_0\;
  \ALUResult[15]_INST_0_i_2_0\ <= \^aluresult[15]_inst_0_i_2_0\;
  \ALUResult[16]_INST_0_i_2_0\ <= \^aluresult[16]_inst_0_i_2_0\;
  \ALUResult[17]_INST_0_i_2_0\ <= \^aluresult[17]_inst_0_i_2_0\;
  \ALUResult[18]_INST_0_i_2_0\ <= \^aluresult[18]_inst_0_i_2_0\;
  \ALUResult[20]_INST_0_i_2_0\ <= \^aluresult[20]_inst_0_i_2_0\;
  \ALUResult[21]_INST_0_i_2_0\ <= \^aluresult[21]_inst_0_i_2_0\;
  \ALUResult[22]_INST_0_i_2_0\ <= \^aluresult[22]_inst_0_i_2_0\;
  \ALUResult[23]_INST_0_i_2_0\ <= \^aluresult[23]_inst_0_i_2_0\;
  \ALUResult[24]_INST_0_i_2_0\ <= \^aluresult[24]_inst_0_i_2_0\;
  \ALUResult[25]_INST_0_i_2_0\ <= \^aluresult[25]_inst_0_i_2_0\;
  \ALUResult[26]_INST_0_i_2_0\ <= \^aluresult[26]_inst_0_i_2_0\;
  \ALUResult[27]_INST_0_i_2_0\ <= \^aluresult[27]_inst_0_i_2_0\;
  \ALUResult[28]_INST_0_i_2_0\ <= \^aluresult[28]_inst_0_i_2_0\;
  \ALUResult[29]_INST_0_i_2_0\ <= \^aluresult[29]_inst_0_i_2_0\;
  \ALUResult[2]_INST_0_i_2_0\ <= \^aluresult[2]_inst_0_i_2_0\;
  \ALUResult[30]_INST_0_i_2_0\ <= \^aluresult[30]_inst_0_i_2_0\;
  \ALUResult[31]_INST_0_i_3_0\ <= \^aluresult[31]_inst_0_i_3_0\;
  \ALUResult[3]_INST_0_i_2_0\ <= \^aluresult[3]_inst_0_i_2_0\;
  \ALUResult[4]_INST_0_i_2_0\ <= \^aluresult[4]_inst_0_i_2_0\;
  \ALUResult[5]_INST_0_i_2_0\ <= \^aluresult[5]_inst_0_i_2_0\;
  \ALUResult[6]_INST_0_i_2_0\ <= \^aluresult[6]_inst_0_i_2_0\;
  \ALUResult[7]_INST_0_i_2_0\ <= \^aluresult[7]_inst_0_i_2_0\;
  \ALUResult[8]_INST_0_i_2_0\ <= \^aluresult[8]_inst_0_i_2_0\;
  \ALUResult[9]_INST_0_i_2_0\ <= \^aluresult[9]_inst_0_i_2_0\;
  \BControl__8\ <= \^bcontrol__8\;
  clk_1 <= \^clk_1\;
  clk_10 <= \^clk_10\;
  clk_11 <= \^clk_11\;
  clk_12 <= \^clk_12\;
  clk_13 <= \^clk_13\;
  clk_14 <= \^clk_14\;
  clk_15 <= \^clk_15\;
  clk_16 <= \^clk_16\;
  clk_17 <= \^clk_17\;
  clk_18 <= \^clk_18\;
  clk_19 <= \^clk_19\;
  clk_2(1 downto 0) <= \^clk_2\(1 downto 0);
  clk_20 <= \^clk_20\;
  clk_21 <= \^clk_21\;
  clk_22 <= \^clk_22\;
  clk_23 <= \^clk_23\;
  clk_24 <= \^clk_24\;
  clk_25 <= \^clk_25\;
  clk_26 <= \^clk_26\;
  clk_27 <= \^clk_27\;
  clk_28 <= \^clk_28\;
  clk_29 <= \^clk_29\;
  clk_30 <= \^clk_30\;
  clk_31 <= \^clk_31\;
  clk_32 <= \^clk_32\;
  clk_33 <= \^clk_33\;
  clk_34 <= \^clk_34\;
  clk_35 <= \^clk_35\;
  clk_36 <= \^clk_36\;
  clk_37 <= \^clk_37\;
  clk_38 <= \^clk_38\;
  clk_39 <= \^clk_39\;
  clk_40 <= \^clk_40\;
  clk_41 <= \^clk_41\;
  clk_42 <= \^clk_42\;
  clk_43 <= \^clk_43\;
  clk_44 <= \^clk_44\;
  clk_45 <= \^clk_45\;
  clk_46 <= \^clk_46\;
  clk_47 <= \^clk_47\;
  clk_48 <= \^clk_48\;
  rd20(7 downto 0) <= \^rd20\(7 downto 0);
\ALUResult[0]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(0),
      I1 => \addressM[0]\,
      I2 => SrcB(0),
      I3 => \ALUControl__0\(0),
      I4 => sum(0),
      O => \ALUResult[0]_INST_0_i_11_n_0\
    );
\ALUResult[0]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_8_n_0\,
      I1 => \ALUResult[0]_INST_0_i_14_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[1]_INST_0_i_9_n_0\,
      I4 => SrcB(0),
      O => \ALUResult[0]_INST_0_i_12_n_0\
    );
\ALUResult[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_11_n_0\,
      I1 => \ALUResult[2]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[4]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[0]_INST_0_i_16_n_0\,
      O => \ALUResult[0]_INST_0_i_14_n_0\
    );
\ALUResult[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBE00080028"
    )
        port map (
      I0 => \^clk_1\,
      I1 => ALUControl(0),
      I2 => SrcB(31),
      I3 => \ALUControl__0\(0),
      I4 => \ALUControl__0\(1),
      I5 => O(0),
      O => \alu/result00_out\(0)
    );
\ALUResult[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_46\,
      I1 => \^clk_47\,
      I2 => SrcB(3),
      I3 => \^clk_45\,
      I4 => SrcB(4),
      I5 => \^clk_48\,
      O => \ALUResult[0]_INST_0_i_16_n_0\
    );
\ALUResult[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CCC"
    )
        port map (
      I0 => \ALUControl__0\(1),
      I1 => SrcB(0),
      I2 => rd10(0),
      I3 => \addressM[0]\,
      O => clk_49
    );
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_8_n_0\,
      I1 => \ALUResult[0]_INST_0_i_9_n_0\,
      O => \ALUResult[0]_INST_0_i_9_0\,
      S => \ALUControl__0\(1)
    );
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[0]_INST_0_i_11_n_0\,
      I1 => \ALUResult[0]_INST_0_i_12_n_0\,
      O => \ALUResult[0]_INST_0_i_12_0\,
      S => \ALUControl__0\(1)
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \i__carry_i_4_0\,
      I1 => \rd21__3\,
      I2 => \^rd20\(0),
      I3 => ALUSrc,
      O => SrcB(0)
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(0),
      I1 => \addressM[0]\,
      I2 => SrcB(0),
      I3 => \ALUControl__0\(0),
      I4 => sum(0),
      O => \ALUResult[0]_INST_0_i_8_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_8_n_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[0]_INST_0_i_14_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => \alu/result00_out\(0),
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[10]_INST_0_i_1_n_0\,
      I1 => \ALUResult[10]_INST_0_i_2_n_0\,
      O => \^aluresult[10]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_3_n_0\,
      I1 => \ALUResult[10]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[10]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[10]_INST_0_i_6_n_0\,
      O => \ALUResult[10]_INST_0_i_1_n_0\
    );
\ALUResult[10]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[12]_INST_0_i_14_n_0\,
      O => \ALUResult[10]_INST_0_i_10_n_0\
    );
\ALUResult[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_35\,
      I2 => SrcB(3),
      I3 => \^clk_33\,
      I4 => SrcB(4),
      I5 => \^clk_34\,
      O => \ALUResult[10]_INST_0_i_11_n_0\
    );
\ALUResult[10]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(18),
      I1 => SrcB(3),
      I2 => rd10(26),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(10),
      O => \ALUResult[10]_INST_0_i_12_n_0\
    );
\ALUResult[10]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(3),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(7),
      I5 => SrcB(3),
      O => \ALUResult[10]_INST_0_i_13_n_0\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(10),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(10),
      I5 => \^clk_34\,
      O => \ALUResult[10]_INST_0_i_2_n_0\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[10]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[11]_INST_0_i_8_n_0\,
      O => \ALUResult[10]_INST_0_i_3_n_0\
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(10),
      I1 => \addressM[0]\,
      I2 => SrcB(10),
      I3 => \ALUControl__0\(0),
      I4 => sum(10),
      O => \ALUResult[10]_INST_0_i_4_n_0\
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_9_n_0\,
      I1 => \ALUResult[10]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[10]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[11]_INST_0_i_10_n_0\,
      O => \ALUResult[10]_INST_0_i_5_n_0\
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(10),
      I1 => \addressM[0]\,
      I2 => SrcB(10),
      I3 => \ALUControl__0\(0),
      I4 => sum(10),
      O => \ALUResult[10]_INST_0_i_6_n_0\
    );
\ALUResult[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => rd20_0(10),
      I5 => ALUSrc,
      O => SrcB(10)
    );
\ALUResult[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_12_n_0\,
      I1 => \ALUResult[12]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[14]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_11_n_0\,
      O => \ALUResult[10]_INST_0_i_8_n_0\
    );
\ALUResult[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_14_n_0\,
      I1 => \ALUResult[12]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[14]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[10]_INST_0_i_12_n_0\,
      O => \ALUResult[10]_INST_0_i_9_n_0\
    );
\ALUResult[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[11]_INST_0_i_1_n_0\,
      I1 => \ALUResult[11]_INST_0_i_2_n_0\,
      O => \^aluresult[11]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_3_n_0\,
      I1 => \ALUResult[11]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[11]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[11]_INST_0_i_6_n_0\,
      O => \ALUResult[11]_INST_0_i_1_n_0\
    );
\ALUResult[11]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[13]_INST_0_i_14_n_0\,
      O => \ALUResult[11]_INST_0_i_10_n_0\
    );
\ALUResult[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_28\,
      I2 => SrcB(3),
      I3 => \^clk_26\,
      I4 => SrcB(4),
      I5 => \^clk_27\,
      O => \ALUResult[11]_INST_0_i_11_n_0\
    );
\ALUResult[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(19),
      I1 => SrcB(3),
      I2 => rd10(27),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(11),
      O => \ALUResult[11]_INST_0_i_12_n_0\
    );
\ALUResult[11]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_44\,
      I1 => SrcB(2),
      I2 => \^clk_48\,
      I3 => SrcB(3),
      I4 => \^clk_47\,
      I5 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_13_n_0\
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(11),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(11),
      I5 => \^clk_27\,
      O => \ALUResult[11]_INST_0_i_2_n_0\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[11]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[12]_INST_0_i_8_n_0\,
      O => \ALUResult[11]_INST_0_i_3_n_0\
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(11),
      I1 => \addressM[0]\,
      I2 => SrcB(11),
      I3 => \ALUControl__0\(0),
      I4 => sum(11),
      O => \ALUResult[11]_INST_0_i_4_n_0\
    );
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_9_n_0\,
      I1 => \ALUResult[11]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[11]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[12]_INST_0_i_10_n_0\,
      O => \ALUResult[11]_INST_0_i_5_n_0\
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(11),
      I1 => \addressM[0]\,
      I2 => SrcB(11),
      I3 => \ALUControl__0\(0),
      I4 => sum(11),
      O => \ALUResult[11]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \sum__0_carry__1_i_5_0\,
      I1 => \rd21__3\,
      I2 => rd20_0(11),
      I3 => ALUSrc,
      O => SrcB(11)
    );
\ALUResult[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_12_n_0\,
      I1 => \ALUResult[13]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[15]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_11_n_0\,
      O => \ALUResult[11]_INST_0_i_8_n_0\
    );
\ALUResult[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_14_n_0\,
      I1 => \ALUResult[13]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[15]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[11]_INST_0_i_12_n_0\,
      O => \ALUResult[11]_INST_0_i_9_n_0\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[12]_INST_0_i_1_n_0\,
      I1 => \ALUResult[12]_INST_0_i_2_n_0\,
      O => \^aluresult[12]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_3_n_0\,
      I1 => \ALUResult[12]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[12]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[12]_INST_0_i_6_n_0\,
      O => \ALUResult[12]_INST_0_i_1_n_0\
    );
\ALUResult[12]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_14_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[14]_INST_0_i_14_n_0\,
      O => \ALUResult[12]_INST_0_i_10_n_0\
    );
\ALUResult[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_43\,
      I2 => SrcB(3),
      I3 => \^clk_41\,
      I4 => SrcB(4),
      I5 => \^clk_42\,
      O => \ALUResult[12]_INST_0_i_12_n_0\
    );
\ALUResult[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(20),
      I1 => SrcB(3),
      I2 => rd10(28),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(12),
      O => \ALUResult[12]_INST_0_i_13_n_0\
    );
\ALUResult[12]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_25\,
      I1 => SrcB(2),
      I2 => \^clk_21\,
      I3 => SrcB(3),
      I4 => \^clk_19\,
      I5 => SrcB(4),
      O => \ALUResult[12]_INST_0_i_14_n_0\
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(12),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(12),
      I5 => \^clk_42\,
      O => \ALUResult[12]_INST_0_i_2_n_0\
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[12]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[13]_INST_0_i_8_n_0\,
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(12),
      I1 => \addressM[0]\,
      I2 => SrcB(12),
      I3 => \ALUControl__0\(0),
      I4 => sum(12),
      O => \ALUResult[12]_INST_0_i_4_n_0\
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_9_n_0\,
      I1 => \ALUResult[12]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[12]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[13]_INST_0_i_10_n_0\,
      O => \ALUResult[12]_INST_0_i_5_n_0\
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(12),
      I1 => \addressM[0]\,
      I2 => SrcB(12),
      I3 => \ALUControl__0\(0),
      I4 => sum(12),
      O => \ALUResult[12]_INST_0_i_6_n_0\
    );
\ALUResult[12]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(0),
      I1 => \rd21__3\,
      I2 => rd20_0(12),
      I3 => ALUSrc,
      O => SrcB(12)
    );
\ALUResult[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_12_n_0\,
      I1 => \ALUResult[14]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[16]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[12]_INST_0_i_12_n_0\,
      O => \ALUResult[12]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_14_n_0\,
      I1 => \ALUResult[14]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[16]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[12]_INST_0_i_13_n_0\,
      O => \ALUResult[12]_INST_0_i_9_n_0\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[13]_INST_0_i_1_n_0\,
      I1 => \ALUResult[13]_INST_0_i_2_n_0\,
      O => \^aluresult[13]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_3_n_0\,
      I1 => \ALUResult[13]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[13]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[13]_INST_0_i_6_n_0\,
      O => \ALUResult[13]_INST_0_i_1_n_0\
    );
\ALUResult[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_14_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[15]_INST_0_i_14_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[19]_INST_0_i_16_n_0\,
      O => \ALUResult[13]_INST_0_i_10_n_0\
    );
\ALUResult[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_24\,
      I2 => SrcB(3),
      I3 => \^clk_22\,
      I4 => SrcB(4),
      I5 => \^clk_23\,
      O => \ALUResult[13]_INST_0_i_12_n_0\
    );
\ALUResult[13]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(21),
      I1 => SrcB(3),
      I2 => rd10(29),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(13),
      O => \ALUResult[13]_INST_0_i_13_n_0\
    );
\ALUResult[13]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_40\,
      I1 => SrcB(2),
      I2 => \^clk_36\,
      I3 => SrcB(3),
      I4 => \^clk_34\,
      I5 => SrcB(4),
      O => \ALUResult[13]_INST_0_i_14_n_0\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(13),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(13),
      I5 => \^clk_23\,
      O => \ALUResult[13]_INST_0_i_2_n_0\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[13]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[14]_INST_0_i_8_n_0\,
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(13),
      I1 => \addressM[0]\,
      I2 => SrcB(13),
      I3 => \ALUControl__0\(0),
      I4 => sum(13),
      O => \ALUResult[13]_INST_0_i_4_n_0\
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_9_n_0\,
      I1 => \ALUResult[13]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[13]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[14]_INST_0_i_10_n_0\,
      O => \ALUResult[13]_INST_0_i_5_n_0\
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(13),
      I1 => \addressM[0]\,
      I2 => SrcB(13),
      I3 => \ALUControl__0\(0),
      I4 => sum(13),
      O => \ALUResult[13]_INST_0_i_6_n_0\
    );
\ALUResult[13]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(1),
      I1 => \rd21__3\,
      I2 => rd20_0(13),
      I3 => ALUSrc,
      O => SrcB(13)
    );
\ALUResult[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_13_n_0\,
      I1 => \ALUResult[15]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[17]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[13]_INST_0_i_12_n_0\,
      O => \ALUResult[13]_INST_0_i_8_n_0\
    );
\ALUResult[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_15_n_0\,
      I1 => \ALUResult[15]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[17]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[13]_INST_0_i_13_n_0\,
      O => \ALUResult[13]_INST_0_i_9_n_0\
    );
\ALUResult[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[14]_INST_0_i_1_n_0\,
      I1 => \ALUResult[14]_INST_0_i_2_n_0\,
      O => \^aluresult[14]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_3_n_0\,
      I1 => \ALUResult[14]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[14]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[14]_INST_0_i_6_n_0\,
      O => \ALUResult[14]_INST_0_i_1_n_0\
    );
\ALUResult[14]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_14_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[16]_INST_0_i_15_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[20]_INST_0_i_14_n_0\,
      O => \ALUResult[14]_INST_0_i_10_n_0\
    );
\ALUResult[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_39\,
      I2 => SrcB(3),
      I3 => \^clk_37\,
      I4 => SrcB(4),
      I5 => \^clk_38\,
      O => \ALUResult[14]_INST_0_i_12_n_0\
    );
\ALUResult[14]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(22),
      I1 => SrcB(3),
      I2 => rd10(30),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(14),
      O => \ALUResult[14]_INST_0_i_13_n_0\
    );
\ALUResult[14]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_32\,
      I1 => SrcB(2),
      I2 => \^clk_29\,
      I3 => SrcB(3),
      I4 => \^clk_27\,
      I5 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_14_n_0\
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(14),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(14),
      I5 => \^clk_38\,
      O => \ALUResult[14]_INST_0_i_2_n_0\
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[14]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[15]_INST_0_i_8_n_0\,
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(14),
      I1 => \addressM[0]\,
      I2 => SrcB(14),
      I3 => \ALUControl__0\(0),
      I4 => sum(14),
      O => \ALUResult[14]_INST_0_i_4_n_0\
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_9_n_0\,
      I1 => \ALUResult[14]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[14]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[15]_INST_0_i_10_n_0\,
      O => \ALUResult[14]_INST_0_i_5_n_0\
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(14),
      I1 => \addressM[0]\,
      I2 => SrcB(14),
      I3 => \ALUControl__0\(0),
      I4 => sum(14),
      O => \ALUResult[14]_INST_0_i_6_n_0\
    );
\ALUResult[14]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(2),
      I1 => \rd21__3\,
      I2 => rd20_0(14),
      I3 => ALUSrc,
      O => SrcB(14)
    );
\ALUResult[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_12_n_0\,
      I1 => \ALUResult[16]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[18]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_12_n_0\,
      O => \ALUResult[14]_INST_0_i_8_n_0\
    );
\ALUResult[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_13_n_0\,
      I1 => \ALUResult[16]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[18]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[14]_INST_0_i_13_n_0\,
      O => \ALUResult[14]_INST_0_i_9_n_0\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[15]_INST_0_i_1_n_0\,
      I1 => \ALUResult[15]_INST_0_i_2_n_0\,
      O => \^aluresult[15]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_3_n_0\,
      I1 => \ALUResult[15]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[15]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[15]_INST_0_i_6_n_0\,
      O => \ALUResult[15]_INST_0_i_1_n_0\
    );
\ALUResult[15]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_14_n_0\,
      I1 => \ALUResult[19]_INST_0_i_16_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[17]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[21]_INST_0_i_14_n_0\,
      O => \ALUResult[15]_INST_0_i_10_n_0\
    );
\ALUResult[15]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(23),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(15),
      O => \ALUResult[15]_INST_0_i_12_n_0\
    );
\ALUResult[15]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(23),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(15),
      O => \ALUResult[15]_INST_0_i_13_n_0\
    );
\ALUResult[15]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(0),
      I1 => SrcB(3),
      I2 => rd10(8),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_14_n_0\
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(15),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(15),
      I5 => \^clk_30\,
      O => \ALUResult[15]_INST_0_i_2_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[15]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[16]_INST_0_i_8_n_0\,
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(15),
      I1 => \addressM[0]\,
      I2 => SrcB(15),
      I3 => \ALUControl__0\(0),
      I4 => sum(15),
      O => \ALUResult[15]_INST_0_i_4_n_0\
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_9_n_0\,
      I1 => \ALUResult[15]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[15]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[16]_INST_0_i_10_n_0\,
      O => \ALUResult[15]_INST_0_i_5_n_0\
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(15),
      I1 => \addressM[0]\,
      I2 => SrcB(15),
      I3 => \ALUControl__0\(0),
      I4 => sum(15),
      O => \ALUResult[15]_INST_0_i_6_n_0\
    );
\ALUResult[15]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(3),
      I1 => \rd21__3\,
      I2 => rd20_0(15),
      I3 => ALUSrc,
      O => SrcB(15)
    );
\ALUResult[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_12_n_0\,
      I1 => \ALUResult[17]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[19]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_12_n_0\,
      O => \ALUResult[15]_INST_0_i_8_n_0\
    );
\ALUResult[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_13_n_0\,
      I1 => \ALUResult[17]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[19]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_13_n_0\,
      O => \ALUResult[15]_INST_0_i_9_n_0\
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[16]_INST_0_i_1_n_0\,
      I1 => \ALUResult[16]_INST_0_i_2_n_0\,
      O => \^aluresult[16]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_3_n_0\,
      I1 => \ALUResult[16]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[16]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[16]_INST_0_i_6_n_0\,
      O => \ALUResult[16]_INST_0_i_1_n_0\
    );
\ALUResult[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_15_n_0\,
      I1 => \ALUResult[20]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[18]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_14_n_0\,
      O => \ALUResult[16]_INST_0_i_10_n_0\
    );
\ALUResult[16]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(16),
      O => \ALUResult[16]_INST_0_i_12_n_0\
    );
\ALUResult[16]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(3),
      I2 => rd10(20),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_13_n_0\
    );
\ALUResult[16]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(3),
      I2 => rd10(16),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_14_n_0\
    );
\ALUResult[16]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(1),
      I1 => SrcB(3),
      I2 => rd10(9),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_15_n_0\
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(16),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(16),
      I5 => \^clk_45\,
      O => \ALUResult[16]_INST_0_i_2_n_0\
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[16]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[17]_INST_0_i_8_n_0\,
      O => \ALUResult[16]_INST_0_i_3_n_0\
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(16),
      I1 => \addressM[0]\,
      I2 => SrcB(16),
      I3 => \ALUControl__0\(0),
      I4 => sum(16),
      O => \ALUResult[16]_INST_0_i_4_n_0\
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_9_n_0\,
      I1 => \ALUResult[16]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[16]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[17]_INST_0_i_10_n_0\,
      O => \ALUResult[16]_INST_0_i_5_n_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(16),
      I1 => \addressM[0]\,
      I2 => SrcB(16),
      I3 => \ALUControl__0\(0),
      I4 => sum(16),
      O => \ALUResult[16]_INST_0_i_6_n_0\
    );
\ALUResult[16]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(4),
      I1 => \rd21__3\,
      I2 => rd20_0(16),
      I3 => ALUSrc,
      O => SrcB(16)
    );
\ALUResult[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_12_n_0\,
      I1 => \ALUResult[18]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[20]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_12_n_0\,
      O => \ALUResult[16]_INST_0_i_8_n_0\
    );
\ALUResult[16]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_13_n_0\,
      I1 => \ALUResult[18]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[16]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_14_n_0\,
      O => \ALUResult[16]_INST_0_i_9_n_0\
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[17]_INST_0_i_1_n_0\,
      I1 => \ALUResult[17]_INST_0_i_2_n_0\,
      O => \^aluresult[17]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_3_n_0\,
      I1 => \ALUResult[17]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[17]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[17]_INST_0_i_6_n_0\,
      O => \ALUResult[17]_INST_0_i_1_n_0\
    );
\ALUResult[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_15_n_0\,
      I1 => \ALUResult[21]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[19]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[23]_INST_0_i_12_n_0\,
      O => \ALUResult[17]_INST_0_i_10_n_0\
    );
\ALUResult[17]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(25),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(17),
      O => \ALUResult[17]_INST_0_i_12_n_0\
    );
\ALUResult[17]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(3),
      I2 => rd10(21),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_13_n_0\
    );
\ALUResult[17]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(25),
      I1 => SrcB(3),
      I2 => rd10(17),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_14_n_0\
    );
\ALUResult[17]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(2),
      I1 => SrcB(3),
      I2 => rd10(10),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_15_n_0\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(17),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(17),
      I5 => \^clk_20\,
      O => \ALUResult[17]_INST_0_i_2_n_0\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[17]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[18]_INST_0_i_8_n_0\,
      O => \ALUResult[17]_INST_0_i_3_n_0\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(17),
      I1 => \addressM[0]\,
      I2 => SrcB(17),
      I3 => \ALUControl__0\(0),
      I4 => sum(17),
      O => \ALUResult[17]_INST_0_i_4_n_0\
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_9_n_0\,
      I1 => \ALUResult[17]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[17]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[18]_INST_0_i_10_n_0\,
      O => \ALUResult[17]_INST_0_i_5_n_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(17),
      I1 => \addressM[0]\,
      I2 => SrcB(17),
      I3 => \ALUControl__0\(0),
      I4 => sum(17),
      O => \ALUResult[17]_INST_0_i_6_n_0\
    );
\ALUResult[17]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(5),
      I1 => \rd21__3\,
      I2 => rd20_0(17),
      I3 => ALUSrc,
      O => SrcB(17)
    );
\ALUResult[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_12_n_0\,
      I1 => \ALUResult[19]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[21]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_12_n_0\,
      O => \ALUResult[17]_INST_0_i_8_n_0\
    );
\ALUResult[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_14_n_0\,
      I1 => \ALUResult[19]_INST_0_i_15_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[17]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_14_n_0\,
      O => \ALUResult[17]_INST_0_i_9_n_0\
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[18]_INST_0_i_1_n_0\,
      I1 => \ALUResult[18]_INST_0_i_2_n_0\,
      O => \^aluresult[18]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_3_n_0\,
      I1 => \ALUResult[18]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[18]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[18]_INST_0_i_6_n_0\,
      O => \ALUResult[18]_INST_0_i_1_n_0\
    );
\ALUResult[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_15_n_0\,
      I1 => \ALUResult[22]_INST_0_i_14_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[20]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[24]_INST_0_i_13_n_0\,
      O => \ALUResult[18]_INST_0_i_10_n_0\
    );
\ALUResult[18]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(18),
      O => \ALUResult[18]_INST_0_i_12_n_0\
    );
\ALUResult[18]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(3),
      I2 => rd10(22),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_13_n_0\
    );
\ALUResult[18]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(3),
      I2 => rd10(18),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_14_n_0\
    );
\ALUResult[18]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(3),
      I1 => SrcB(3),
      I2 => rd10(11),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_15_n_0\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(18),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(18),
      I5 => \^clk_35\,
      O => \ALUResult[18]_INST_0_i_2_n_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[18]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[19]_INST_0_i_8_n_0\,
      O => \ALUResult[18]_INST_0_i_3_n_0\
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(18),
      I1 => \addressM[0]\,
      I2 => SrcB(18),
      I3 => \ALUControl__0\(0),
      I4 => sum(18),
      O => \ALUResult[18]_INST_0_i_4_n_0\
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_9_n_0\,
      I1 => \ALUResult[18]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[18]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[19]_INST_0_i_10_n_0\,
      O => \ALUResult[18]_INST_0_i_5_n_0\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(18),
      I1 => \addressM[0]\,
      I2 => SrcB(18),
      I3 => \ALUControl__0\(0),
      I4 => sum(18),
      O => \ALUResult[18]_INST_0_i_6_n_0\
    );
\ALUResult[18]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(6),
      I1 => \rd21__3\,
      I2 => rd20_0(18),
      I3 => ALUSrc,
      O => SrcB(18)
    );
\ALUResult[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_11_n_0\,
      I1 => \ALUResult[20]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[22]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[18]_INST_0_i_12_n_0\,
      O => \ALUResult[18]_INST_0_i_8_n_0\
    );
\ALUResult[18]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[18]_INST_0_i_13_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[18]_INST_0_i_14_n_0\,
      O => \ALUResult[18]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_3_n_0\,
      I1 => \ALUResult[19]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[19]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[19]_INST_0_i_6_n_0\,
      O => \ALUResult[19]_INST_0_i_6_0\
    );
\ALUResult[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_16_n_0\,
      I1 => \ALUResult[23]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[21]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[25]_INST_0_i_12_n_0\,
      O => \ALUResult[19]_INST_0_i_10_n_0\
    );
\ALUResult[19]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD00C800"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(23),
      O => \ALUResult[19]_INST_0_i_12_n_0\
    );
\ALUResult[19]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(27),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(19),
      O => \ALUResult[19]_INST_0_i_13_n_0\
    );
\ALUResult[19]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(3),
      I2 => rd10(23),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_14_n_0\
    );
\ALUResult[19]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(27),
      I1 => SrcB(3),
      I2 => rd10(19),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_15_n_0\
    );
\ALUResult[19]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(4),
      I1 => SrcB(3),
      I2 => rd10(12),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_16_n_0\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[19]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[20]_INST_0_i_8_n_0\,
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(19),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(1),
      I3 => \ALUControl__0\(0),
      I4 => sum(19),
      O => \ALUResult[19]_INST_0_i_4_n_0\
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_9_n_0\,
      I1 => \ALUResult[19]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[20]_INST_0_i_10_n_0\,
      O => \ALUResult[19]_INST_0_i_5_n_0\
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(19),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(1),
      I3 => \ALUControl__0\(0),
      I4 => sum(19),
      O => \ALUResult[19]_INST_0_i_6_n_0\
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ImmExt(7),
      I1 => \rd21__3\,
      I2 => rd20_0(19),
      I3 => ALUSrc,
      O => \^clk_2\(1)
    );
\ALUResult[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_11_n_0\,
      I1 => \ALUResult[21]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[19]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[19]_INST_0_i_13_n_0\,
      O => \ALUResult[19]_INST_0_i_8_n_0\
    );
\ALUResult[19]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[19]_INST_0_i_14_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[19]_INST_0_i_15_n_0\,
      O => \ALUResult[19]_INST_0_i_9_n_0\
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_3_n_0\,
      I1 => \ALUResult[1]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[1]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[1]_INST_0_i_6_n_0\,
      O => \ALUResult[1]_INST_0_i_6_0\
    );
\ALUResult[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_18\,
      I1 => \^clk_19\,
      I2 => SrcB(3),
      I3 => \^clk_20\,
      I4 => SrcB(4),
      I5 => \^clk_21\,
      O => \ALUResult[1]_INST_0_i_11_n_0\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[1]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[2]_INST_0_i_8_n_0\,
      O => \ALUResult[1]_INST_0_i_3_n_0\
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(1),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(0),
      I3 => \ALUControl__0\(0),
      I4 => sum(1),
      O => \ALUResult[1]_INST_0_i_4_n_0\
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_9_n_0\,
      I1 => \ALUResult[1]_INST_0_i_8_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[1]_INST_0_i_9_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[2]_INST_0_i_10_n_0\,
      O => \ALUResult[1]_INST_0_i_5_n_0\
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(1),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(0),
      I3 => \ALUControl__0\(0),
      I4 => sum(1),
      O => \ALUResult[1]_INST_0_i_6_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \ALUResult[1]_INST_0_i_2\,
      I1 => \rd21__3\,
      I2 => \^rd20\(1),
      I3 => ALUSrc,
      O => \^clk_2\(0)
    );
\ALUResult[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_11_n_0\,
      I1 => \ALUResult[3]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[5]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[1]_INST_0_i_11_n_0\,
      O => \ALUResult[1]_INST_0_i_8_n_0\
    );
\ALUResult[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \addressM[0]\,
      I3 => rd10(0),
      I4 => SrcB(3),
      I5 => \^clk_2\(0),
      O => \ALUResult[1]_INST_0_i_9_n_0\
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[20]_INST_0_i_1_n_0\,
      I1 => \ALUResult[20]_INST_0_i_2_n_0\,
      O => \^aluresult[20]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_3_n_0\,
      I1 => \ALUResult[20]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[20]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[20]_INST_0_i_6_n_0\,
      O => \ALUResult[20]_INST_0_i_1_n_0\
    );
\ALUResult[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_14_n_0\,
      I1 => \ALUResult[24]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[22]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[26]_INST_0_i_13_n_0\,
      O => \ALUResult[20]_INST_0_i_10_n_0\
    );
\ALUResult[20]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD00C800"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(24),
      O => \ALUResult[20]_INST_0_i_11_n_0\
    );
\ALUResult[20]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(20),
      O => \ALUResult[20]_INST_0_i_12_n_0\
    );
\ALUResult[20]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_46\,
      I1 => SrcB(2),
      I2 => \^clk_41\,
      I3 => SrcB(3),
      I4 => \^clk_43\,
      I5 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_13_n_0\
    );
\ALUResult[20]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(5),
      I1 => SrcB(3),
      I2 => rd10(13),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_14_n_0\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(20),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(20),
      I5 => \^clk_43\,
      O => \ALUResult[20]_INST_0_i_2_n_0\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[20]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[21]_INST_0_i_8_n_0\,
      O => \ALUResult[20]_INST_0_i_3_n_0\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(20),
      I1 => \addressM[0]\,
      I2 => SrcB(20),
      I3 => \ALUControl__0\(0),
      I4 => sum(20),
      O => \ALUResult[20]_INST_0_i_4_n_0\
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_9_n_0\,
      I1 => \ALUResult[20]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[20]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[21]_INST_0_i_10_n_0\,
      O => \ALUResult[20]_INST_0_i_5_n_0\
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(20),
      I1 => \addressM[0]\,
      I2 => SrcB(20),
      I3 => \ALUControl__0\(0),
      I4 => sum(20),
      O => \ALUResult[20]_INST_0_i_6_n_0\
    );
\ALUResult[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(17),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(20),
      I5 => ALUSrc,
      O => SrcB(20)
    );
\ALUResult[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_11_n_0\,
      I1 => \ALUResult[22]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[20]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[20]_INST_0_i_12_n_0\,
      O => \ALUResult[20]_INST_0_i_8_n_0\
    );
\ALUResult[20]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[20]_INST_0_i_13_n_0\,
      O => \ALUResult[20]_INST_0_i_9_n_0\
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[21]_INST_0_i_1_n_0\,
      I1 => \ALUResult[21]_INST_0_i_2_n_0\,
      O => \^aluresult[21]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_3_n_0\,
      I1 => \ALUResult[21]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[21]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[21]_INST_0_i_6_n_0\,
      O => \ALUResult[21]_INST_0_i_1_n_0\
    );
\ALUResult[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_14_n_0\,
      I1 => \ALUResult[25]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[23]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[27]_INST_0_i_12_n_0\,
      O => \ALUResult[21]_INST_0_i_10_n_0\
    );
\ALUResult[21]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD00C800"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(25),
      O => \ALUResult[21]_INST_0_i_11_n_0\
    );
\ALUResult[21]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(21),
      O => \ALUResult[21]_INST_0_i_12_n_0\
    );
\ALUResult[21]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_18\,
      I1 => SrcB(2),
      I2 => \^clk_22\,
      I3 => SrcB(3),
      I4 => \^clk_24\,
      I5 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_13_n_0\
    );
\ALUResult[21]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(6),
      I1 => SrcB(3),
      I2 => rd10(14),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_14_n_0\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(21),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(21),
      I5 => \^clk_24\,
      O => \ALUResult[21]_INST_0_i_2_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[21]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[22]_INST_0_i_8_n_0\,
      O => \ALUResult[21]_INST_0_i_3_n_0\
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(21),
      I1 => \addressM[0]\,
      I2 => SrcB(21),
      I3 => \ALUControl__0\(0),
      I4 => sum(21),
      O => \ALUResult[21]_INST_0_i_4_n_0\
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_9_n_0\,
      I1 => \ALUResult[21]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[21]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[22]_INST_0_i_10_n_0\,
      O => \ALUResult[21]_INST_0_i_5_n_0\
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(21),
      I1 => \addressM[0]\,
      I2 => SrcB(21),
      I3 => \ALUControl__0\(0),
      I4 => sum(21),
      O => \ALUResult[21]_INST_0_i_6_n_0\
    );
\ALUResult[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(18),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(21),
      I5 => ALUSrc,
      O => SrcB(21)
    );
\ALUResult[21]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[21]_INST_0_i_11_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[21]_INST_0_i_12_n_0\,
      O => \ALUResult[21]_INST_0_i_8_n_0\
    );
\ALUResult[21]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[21]_INST_0_i_13_n_0\,
      O => \ALUResult[21]_INST_0_i_9_n_0\
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[22]_INST_0_i_1_n_0\,
      I1 => \ALUResult[22]_INST_0_i_2_n_0\,
      O => \^aluresult[22]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_3_n_0\,
      I1 => \ALUResult[22]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[22]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[22]_INST_0_i_6_n_0\,
      O => \ALUResult[22]_INST_0_i_1_n_0\
    );
\ALUResult[22]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_14_n_0\,
      I1 => \ALUResult[26]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[24]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[28]_INST_0_i_12_n_0\,
      O => \ALUResult[22]_INST_0_i_10_n_0\
    );
\ALUResult[22]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD00C800"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd10(31),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(26),
      O => \ALUResult[22]_INST_0_i_11_n_0\
    );
\ALUResult[22]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB0000F0880000"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(22),
      O => \ALUResult[22]_INST_0_i_12_n_0\
    );
\ALUResult[22]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_33\,
      I1 => SrcB(2),
      I2 => \^clk_37\,
      I3 => SrcB(3),
      I4 => \^clk_39\,
      I5 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_13_n_0\
    );
\ALUResult[22]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => rd10(7),
      I1 => SrcB(3),
      I2 => rd10(15),
      I3 => \addressM[0]\,
      I4 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_14_n_0\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(22),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(22),
      I5 => \^clk_39\,
      O => \ALUResult[22]_INST_0_i_2_n_0\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[23]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => \ALUResult[22]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => \ALUResult[22]_INST_0_i_3_n_0\
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(22),
      I1 => \addressM[0]\,
      I2 => SrcB(22),
      I3 => \ALUControl__0\(0),
      I4 => sum(22),
      O => \ALUResult[22]_INST_0_i_4_n_0\
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_9_n_0\,
      I1 => \ALUResult[22]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[22]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[23]_INST_0_i_10_n_0\,
      O => \ALUResult[22]_INST_0_i_5_n_0\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(22),
      I1 => \addressM[0]\,
      I2 => SrcB(22),
      I3 => \ALUControl__0\(0),
      I4 => sum(22),
      O => \ALUResult[22]_INST_0_i_6_n_0\
    );
\ALUResult[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(19),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(22),
      I5 => ALUSrc,
      O => SrcB(22)
    );
\ALUResult[22]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[22]_INST_0_i_11_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[22]_INST_0_i_12_n_0\,
      O => \ALUResult[22]_INST_0_i_8_n_0\
    );
\ALUResult[22]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_12_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[22]_INST_0_i_13_n_0\,
      O => \ALUResult[22]_INST_0_i_9_n_0\
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[23]_INST_0_i_1_n_0\,
      I1 => \ALUResult[23]_INST_0_i_2_n_0\,
      O => \^aluresult[23]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_3_n_0\,
      I1 => \ALUResult[23]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[23]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[23]_INST_0_i_6_n_0\,
      O => \ALUResult[23]_INST_0_i_1_n_0\
    );
\ALUResult[23]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_12_n_0\,
      I1 => \ALUResult[27]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[25]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_11_n_0\,
      O => \ALUResult[23]_INST_0_i_10_n_0\
    );
\ALUResult[23]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^clk_26\,
      I1 => SrcB(2),
      I2 => \^clk_1\,
      I3 => SrcB(3),
      I4 => \^clk_31\,
      I5 => SrcB(4),
      O => \ALUResult[23]_INST_0_i_11_n_0\
    );
\ALUResult[23]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(8),
      I1 => SrcB(3),
      I2 => rd10(0),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(16),
      O => \ALUResult[23]_INST_0_i_12_n_0\
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(23),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(23),
      I5 => \^clk_31\,
      O => \ALUResult[23]_INST_0_i_2_n_0\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[23]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => SrcB(0),
      I5 => \ALUResult[24]_INST_0_i_8_n_0\,
      O => \ALUResult[23]_INST_0_i_3_n_0\
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(23),
      I1 => \addressM[0]\,
      I2 => SrcB(23),
      I3 => \ALUControl__0\(0),
      I4 => sum(23),
      O => \ALUResult[23]_INST_0_i_4_n_0\
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_9_n_0\,
      I1 => \ALUResult[23]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[23]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[24]_INST_0_i_10_n_0\,
      O => \ALUResult[23]_INST_0_i_5_n_0\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(23),
      I1 => \addressM[0]\,
      I2 => SrcB(23),
      I3 => \ALUControl__0\(0),
      I4 => sum(23),
      O => \ALUResult[23]_INST_0_i_6_n_0\
    );
\ALUResult[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(20),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(23),
      I5 => ALUSrc,
      O => SrcB(23)
    );
\ALUResult[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_26\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^clk_1\,
      I4 => SrcB(4),
      I5 => \^clk_31\,
      O => \ALUResult[23]_INST_0_i_8_n_0\
    );
\ALUResult[23]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[23]_INST_0_i_11_n_0\,
      O => \ALUResult[23]_INST_0_i_9_n_0\
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[24]_INST_0_i_1_n_0\,
      I1 => \ALUResult[24]_INST_0_i_2_n_0\,
      O => \^aluresult[24]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_3_n_0\,
      I1 => \ALUResult[24]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[24]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[24]_INST_0_i_6_n_0\,
      O => \ALUResult[24]_INST_0_i_1_n_0\
    );
\ALUResult[24]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_13_n_0\,
      I1 => \ALUResult[28]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[26]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[30]_INST_0_i_11_n_0\,
      O => \ALUResult[24]_INST_0_i_10_n_0\
    );
\ALUResult[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_41\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^clk_1\,
      I4 => SrcB(4),
      I5 => \^clk_46\,
      O => \ALUResult[24]_INST_0_i_11_n_0\
    );
\ALUResult[24]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(24),
      I5 => SrcB(3),
      O => \ALUResult[24]_INST_0_i_12_n_0\
    );
\ALUResult[24]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(9),
      I1 => SrcB(3),
      I2 => rd10(1),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(17),
      O => \ALUResult[24]_INST_0_i_13_n_0\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(24),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(24),
      I5 => \^clk_46\,
      O => \ALUResult[24]_INST_0_i_2_n_0\
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[25]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => \ALUResult[24]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(24),
      I1 => \addressM[0]\,
      I2 => SrcB(24),
      I3 => \ALUControl__0\(0),
      I4 => sum(24),
      O => \ALUResult[24]_INST_0_i_4_n_0\
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_9_n_0\,
      I1 => \ALUResult[24]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[24]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[25]_INST_0_i_10_n_0\,
      O => \ALUResult[24]_INST_0_i_5_n_0\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(24),
      I1 => \addressM[0]\,
      I2 => SrcB(24),
      I3 => \ALUControl__0\(0),
      I4 => sum(24),
      O => \ALUResult[24]_INST_0_i_6_n_0\
    );
\ALUResult[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(21),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(24),
      I5 => ALUSrc,
      O => SrcB(24)
    );
\ALUResult[24]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[24]_INST_0_i_11_n_0\,
      O => \ALUResult[24]_INST_0_i_8_n_0\
    );
\ALUResult[24]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_12_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[24]_INST_0_i_12_n_0\,
      O => \ALUResult[24]_INST_0_i_9_n_0\
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[25]_INST_0_i_1_n_0\,
      I1 => \ALUResult[25]_INST_0_i_2_n_0\,
      O => \^aluresult[25]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_3_n_0\,
      I1 => \ALUResult[25]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[25]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[25]_INST_0_i_6_n_0\,
      O => \ALUResult[25]_INST_0_i_1_n_0\
    );
\ALUResult[25]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_12_n_0\,
      I1 => \ALUResult[29]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[27]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_15_n_0\,
      O => \ALUResult[25]_INST_0_i_10_n_0\
    );
\ALUResult[25]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(25),
      I5 => SrcB(3),
      O => \ALUResult[25]_INST_0_i_11_n_0\
    );
\ALUResult[25]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(10),
      I1 => SrcB(3),
      I2 => rd10(2),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(18),
      O => \ALUResult[25]_INST_0_i_12_n_0\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(25),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(25),
      I5 => \^clk_18\,
      O => \ALUResult[25]_INST_0_i_2_n_0\
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[25]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => SrcB(0),
      I5 => \ALUResult[26]_INST_0_i_8_n_0\,
      O => \ALUResult[25]_INST_0_i_3_n_0\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(25),
      I1 => \addressM[0]\,
      I2 => SrcB(25),
      I3 => \ALUControl__0\(0),
      I4 => sum(25),
      O => \ALUResult[25]_INST_0_i_4_n_0\
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_9_n_0\,
      I1 => \ALUResult[25]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[25]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[26]_INST_0_i_10_n_0\,
      O => \ALUResult[25]_INST_0_i_5_n_0\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(25),
      I1 => \addressM[0]\,
      I2 => SrcB(25),
      I3 => \ALUControl__0\(0),
      I4 => sum(25),
      O => \ALUResult[25]_INST_0_i_6_n_0\
    );
\ALUResult[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(22),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(25),
      I5 => ALUSrc,
      O => SrcB(25)
    );
\ALUResult[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_22\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^clk_1\,
      I4 => SrcB(4),
      I5 => \^clk_18\,
      O => \ALUResult[25]_INST_0_i_8_n_0\
    );
\ALUResult[25]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[25]_INST_0_i_11_n_0\,
      O => \ALUResult[25]_INST_0_i_9_n_0\
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[26]_INST_0_i_1_n_0\,
      I1 => \ALUResult[26]_INST_0_i_2_n_0\,
      O => \^aluresult[26]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_3_n_0\,
      I1 => \ALUResult[26]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[26]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[26]_INST_0_i_6_n_0\,
      O => \ALUResult[26]_INST_0_i_1_n_0\
    );
\ALUResult[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_13_n_0\,
      I1 => \ALUResult[30]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[28]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_19_n_0\,
      O => \ALUResult[26]_INST_0_i_10_n_0\
    );
\ALUResult[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^clk_37\,
      I1 => SrcB(2),
      I2 => SrcB(3),
      I3 => \^clk_1\,
      I4 => SrcB(4),
      I5 => \^clk_33\,
      O => \ALUResult[26]_INST_0_i_11_n_0\
    );
\ALUResult[26]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(26),
      I5 => SrcB(3),
      O => \ALUResult[26]_INST_0_i_12_n_0\
    );
\ALUResult[26]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(11),
      I1 => SrcB(3),
      I2 => rd10(3),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(19),
      O => \ALUResult[26]_INST_0_i_13_n_0\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(26),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(26),
      I5 => \^clk_33\,
      O => \ALUResult[26]_INST_0_i_2_n_0\
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[27]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => \ALUResult[26]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(26),
      I1 => \addressM[0]\,
      I2 => SrcB(26),
      I3 => \ALUControl__0\(0),
      I4 => sum(26),
      O => \ALUResult[26]_INST_0_i_4_n_0\
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_9_n_0\,
      I1 => \ALUResult[26]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[26]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[27]_INST_0_i_10_n_0\,
      O => \ALUResult[26]_INST_0_i_5_n_0\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(26),
      I1 => \addressM[0]\,
      I2 => SrcB(26),
      I3 => \ALUControl__0\(0),
      I4 => sum(26),
      O => \ALUResult[26]_INST_0_i_6_n_0\
    );
\ALUResult[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(23),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(26),
      I5 => ALUSrc,
      O => SrcB(26)
    );
\ALUResult[26]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_11_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[26]_INST_0_i_11_n_0\,
      O => \ALUResult[26]_INST_0_i_8_n_0\
    );
\ALUResult[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_41\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => \^clk_2\(0),
      I5 => \ALUResult[26]_INST_0_i_12_n_0\,
      O => \ALUResult[26]_INST_0_i_9_n_0\
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[27]_INST_0_i_1_n_0\,
      I1 => \ALUResult[27]_INST_0_i_2_n_0\,
      O => \^aluresult[27]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_3_n_0\,
      I1 => \ALUResult[27]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[27]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[27]_INST_0_i_6_n_0\,
      O => \ALUResult[27]_INST_0_i_1_n_0\
    );
\ALUResult[27]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_12_n_0\,
      I1 => \ALUResult[31]_INST_0_i_15_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[29]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_17_n_0\,
      O => \ALUResult[27]_INST_0_i_10_n_0\
    );
\ALUResult[27]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(31),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(27),
      I5 => SrcB(3),
      O => \ALUResult[27]_INST_0_i_11_n_0\
    );
\ALUResult[27]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(12),
      I1 => SrcB(3),
      I2 => rd10(4),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(20),
      O => \ALUResult[27]_INST_0_i_12_n_0\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(27),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(27),
      I5 => \^clk_26\,
      O => \ALUResult[27]_INST_0_i_2_n_0\
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[27]_INST_0_i_8_n_0\,
      I3 => \ALUControl__0\(0),
      I4 => SrcB(0),
      I5 => \ALUResult[28]_INST_0_i_8_n_0\,
      O => \ALUResult[27]_INST_0_i_3_n_0\
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(27),
      I1 => \addressM[0]\,
      I2 => SrcB(27),
      I3 => \ALUControl__0\(0),
      I4 => sum(27),
      O => \ALUResult[27]_INST_0_i_4_n_0\
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_9_n_0\,
      I1 => \ALUResult[27]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[27]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[28]_INST_0_i_10_n_0\,
      O => \ALUResult[27]_INST_0_i_5_n_0\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(27),
      I1 => \addressM[0]\,
      I2 => SrcB(27),
      I3 => \ALUControl__0\(0),
      I4 => sum(27),
      O => \ALUResult[27]_INST_0_i_6_n_0\
    );
\ALUResult[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(24),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(27),
      I5 => ALUSrc,
      O => SrcB(27)
    );
\ALUResult[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10000F0E00000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(27),
      O => \ALUResult[27]_INST_0_i_8_n_0\
    );
\ALUResult[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_22\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => \^clk_2\(0),
      I5 => \ALUResult[27]_INST_0_i_11_n_0\,
      O => \ALUResult[27]_INST_0_i_9_n_0\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[28]_INST_0_i_1_n_0\,
      I1 => \ALUResult[28]_INST_0_i_2_n_0\,
      O => \^aluresult[28]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_3_n_0\,
      I1 => \ALUResult[28]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[28]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[28]_INST_0_i_6_n_0\,
      O => \ALUResult[28]_INST_0_i_1_n_0\
    );
\ALUResult[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_12_n_0\,
      I1 => \ALUResult[31]_INST_0_i_19_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[30]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_21_n_0\,
      O => \ALUResult[28]_INST_0_i_10_n_0\
    );
\ALUResult[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10000F0E00000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(28),
      O => \ALUResult[28]_INST_0_i_11_n_0\
    );
\ALUResult[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(13),
      I1 => SrcB(3),
      I2 => rd10(5),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(21),
      O => \ALUResult[28]_INST_0_i_12_n_0\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(28),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(28),
      I5 => \^clk_41\,
      O => \ALUResult[28]_INST_0_i_2_n_0\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[28]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[29]_INST_0_i_8_n_0\,
      I4 => \^clk_2\(0),
      I5 => \^clk_1\,
      O => \ALUResult[28]_INST_0_i_3_n_0\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(28),
      I1 => \addressM[0]\,
      I2 => SrcB(28),
      I3 => \ALUControl__0\(0),
      I4 => sum(28),
      O => \ALUResult[28]_INST_0_i_4_n_0\
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_9_n_0\,
      I1 => \ALUResult[28]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[28]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[29]_INST_0_i_10_n_0\,
      O => \ALUResult[28]_INST_0_i_5_n_0\
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(28),
      I1 => \addressM[0]\,
      I2 => SrcB(28),
      I3 => \ALUControl__0\(0),
      I4 => sum(28),
      O => \ALUResult[28]_INST_0_i_6_n_0\
    );
\ALUResult[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(25),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(28),
      I5 => ALUSrc,
      O => SrcB(28)
    );
\ALUResult[28]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_8_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[28]_INST_0_i_11_n_0\,
      O => \ALUResult[28]_INST_0_i_8_n_0\
    );
\ALUResult[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_37\,
      I1 => \^clk_2\(0),
      I2 => SrcB(3),
      I3 => \^clk_41\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[28]_INST_0_i_9_n_0\
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[29]_INST_0_i_1_n_0\,
      I1 => \ALUResult[29]_INST_0_i_2_n_0\,
      O => \^aluresult[29]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_3_n_0\,
      I1 => \ALUResult[29]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[29]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[29]_INST_0_i_6_n_0\,
      O => \ALUResult[29]_INST_0_i_1_n_0\
    );
\ALUResult[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_11_n_0\,
      I1 => \ALUResult[31]_INST_0_i_17_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[31]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_16_n_0\,
      O => \ALUResult[29]_INST_0_i_10_n_0\
    );
\ALUResult[29]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(14),
      I1 => SrcB(3),
      I2 => rd10(6),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(22),
      O => \ALUResult[29]_INST_0_i_11_n_0\
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(29),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(29),
      I5 => \^clk_22\,
      O => \ALUResult[29]_INST_0_i_2_n_0\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AA808A000A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[29]_INST_0_i_8_n_0\,
      I2 => \^clk_2\(0),
      I3 => \^clk_1\,
      I4 => SrcB(0),
      I5 => \ALUResult[30]_INST_0_i_8_n_0\,
      O => \ALUResult[29]_INST_0_i_3_n_0\
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(29),
      I1 => \addressM[0]\,
      I2 => SrcB(29),
      I3 => \ALUControl__0\(0),
      I4 => sum(29),
      O => \ALUResult[29]_INST_0_i_4_n_0\
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_9_n_0\,
      I1 => \ALUResult[29]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[29]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[30]_INST_0_i_10_n_0\,
      O => \ALUResult[29]_INST_0_i_5_n_0\
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(29),
      I1 => \addressM[0]\,
      I2 => SrcB(29),
      I3 => \ALUControl__0\(0),
      I4 => sum(29),
      O => \ALUResult[29]_INST_0_i_6_n_0\
    );
\ALUResult[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(26),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(29),
      I5 => ALUSrc,
      O => SrcB(29)
    );
\ALUResult[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10000F0E00000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(29),
      O => \ALUResult[29]_INST_0_i_8_n_0\
    );
\ALUResult[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_2\(0),
      I2 => SrcB(3),
      I3 => \^clk_22\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[29]_INST_0_i_9_n_0\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[2]_INST_0_i_1_n_0\,
      I1 => \ALUResult[2]_INST_0_i_2_n_0\,
      O => \^aluresult[2]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_3_n_0\,
      I1 => \ALUResult[2]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[2]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[2]_INST_0_i_6_n_0\,
      O => \ALUResult[2]_INST_0_i_1_n_0\
    );
\ALUResult[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \addressM[0]\,
      I3 => rd10(1),
      I4 => SrcB(3),
      I5 => \^clk_2\(0),
      O => \ALUResult[2]_INST_0_i_10_n_0\
    );
\ALUResult[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_33\,
      I1 => \^clk_34\,
      I2 => SrcB(3),
      I3 => \^clk_35\,
      I4 => SrcB(4),
      I5 => \^clk_36\,
      O => \ALUResult[2]_INST_0_i_13_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(2),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(2),
      I5 => \^clk_36\,
      O => \ALUResult[2]_INST_0_i_2_n_0\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[2]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[3]_INST_0_i_8_n_0\,
      O => \ALUResult[2]_INST_0_i_3_n_0\
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(2),
      I1 => \addressM[0]\,
      I2 => SrcB(2),
      I3 => \ALUControl__0\(0),
      I4 => sum(2),
      O => \ALUResult[2]_INST_0_i_4_n_0\
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_9_n_0\,
      I1 => \ALUResult[2]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[2]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[3]_INST_0_i_10_n_0\,
      O => \ALUResult[2]_INST_0_i_5_n_0\
    );
\ALUResult[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(2),
      I1 => \addressM[0]\,
      I2 => SrcB(2),
      I3 => \ALUControl__0\(0),
      I4 => sum(2),
      O => \ALUResult[2]_INST_0_i_6_n_0\
    );
\ALUResult[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E200E2FFFF0000"
    )
        port map (
      I0 => \sum__0_carry_i_7_1\,
      I1 => ImmSrc(0),
      I2 => \sum__0_carry_i_7_2\,
      I3 => \sum__0_carry_i_7_0\,
      I4 => \^clk_12\,
      I5 => ALUSrc,
      O => SrcB(2)
    );
\ALUResult[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_11_n_0\,
      I1 => \ALUResult[4]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[2]_INST_0_i_8_n_0\
    );
\ALUResult[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_12_n_0\,
      I1 => \ALUResult[4]_INST_0_i_13_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_13_n_0\,
      O => \ALUResult[2]_INST_0_i_9_n_0\
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[30]_INST_0_i_1_n_0\,
      I1 => \ALUResult[30]_INST_0_i_2_n_0\,
      O => \^aluresult[30]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_3_n_0\,
      I1 => \ALUResult[30]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[30]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[30]_INST_0_i_6_n_0\,
      O => \ALUResult[30]_INST_0_i_1_n_0\
    );
\ALUResult[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_11_n_0\,
      I1 => \ALUResult[31]_INST_0_i_21_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[31]_INST_0_i_19_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_20_n_0\,
      O => \ALUResult[30]_INST_0_i_10_n_0\
    );
\ALUResult[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(15),
      I1 => SrcB(3),
      I2 => rd10(7),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(23),
      O => \ALUResult[30]_INST_0_i_11_n_0\
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(30),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(30),
      I5 => \^clk_37\,
      O => \ALUResult[30]_INST_0_i_2_n_0\
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[30]_INST_0_i_8_n_0\,
      I2 => \^clk_2\(0),
      I3 => \^clk_1\,
      I4 => SrcB(0),
      O => \ALUResult[30]_INST_0_i_3_n_0\
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(30),
      I1 => \addressM[0]\,
      I2 => SrcB(30),
      I3 => \ALUControl__0\(0),
      I4 => sum(30),
      O => \ALUResult[30]_INST_0_i_4_n_0\
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_12_n_0\,
      I1 => \ALUResult[30]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[30]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[31]_INST_0_i_13_n_0\,
      O => \ALUResult[30]_INST_0_i_5_n_0\
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(30),
      I1 => \addressM[0]\,
      I2 => SrcB(30),
      I3 => \ALUControl__0\(0),
      I4 => sum(30),
      O => \ALUResult[30]_INST_0_i_6_n_0\
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF000000"
    )
        port map (
      I0 => Instr(27),
      I1 => \sum__0_carry_i_7_0\,
      I2 => Instr(28),
      I3 => \rd21__3\,
      I4 => rd20_0(30),
      I5 => ALUSrc,
      O => SrcB(30)
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F10000F0E00000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(3),
      I2 => rd10(31),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(30),
      O => \ALUResult[30]_INST_0_i_8_n_0\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \addressM[0]\,
      I3 => rd10(30),
      I4 => SrcB(3),
      I5 => \^clk_2\(0),
      O => \ALUResult[30]_INST_0_i_9_n_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[31]_INST_0_i_2_n_0\,
      I1 => \ALUResult[31]_INST_0_i_3_n_0\,
      O => \^aluresult[31]_inst_0_i_3_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => Instr(28),
      I1 => \rd21__3\,
      I2 => rd20_0(31),
      I3 => ALUSrc,
      O => SrcB(31)
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => SrcB(2),
      I1 => SrcB(4),
      I2 => \^clk_1\,
      I3 => SrcB(3),
      I4 => \^clk_2\(0),
      O => \ALUResult[31]_INST_0_i_12_n_0\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_15_n_0\,
      I1 => \ALUResult[31]_INST_0_i_16_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[31]_INST_0_i_17_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_18_n_0\,
      O => \ALUResult[31]_INST_0_i_13_n_0\
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_19_n_0\,
      I1 => \ALUResult[31]_INST_0_i_20_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[31]_INST_0_i_21_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_22_n_0\,
      O => \ALUResult[31]_INST_0_i_14_n_0\
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_48\,
      I1 => \^clk_45\,
      I2 => SrcB(3),
      I3 => \^clk_47\,
      I4 => SrcB(4),
      I5 => \^clk_46\,
      O => \ALUResult[31]_INST_0_i_15_n_0\
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_44\,
      I1 => \^clk_43\,
      I2 => SrcB(3),
      I3 => \^clk_42\,
      I4 => SrcB(4),
      I5 => \^clk_41\,
      O => \ALUResult[31]_INST_0_i_16_n_0\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_36\,
      I1 => \^clk_35\,
      I2 => SrcB(3),
      I3 => \^clk_34\,
      I4 => SrcB(4),
      I5 => \^clk_33\,
      O => \ALUResult[31]_INST_0_i_17_n_0\
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_40\,
      I1 => \^clk_39\,
      I2 => SrcB(3),
      I3 => \^clk_38\,
      I4 => SrcB(4),
      I5 => \^clk_37\,
      O => \ALUResult[31]_INST_0_i_18_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_21\,
      I1 => \^clk_20\,
      I2 => SrcB(3),
      I3 => \^clk_19\,
      I4 => SrcB(4),
      I5 => \^clk_18\,
      O => \ALUResult[31]_INST_0_i_19_n_0\
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_6_n_0\,
      I1 => ALUControl(0),
      I2 => \ALUResult[31]_INST_0_i_7_n_0\,
      I3 => \ALUControl__0\(1),
      I4 => \ALUResult[31]_INST_0_i_9_n_0\,
      O => \ALUResult[31]_INST_0_i_2_n_0\
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_25\,
      I1 => \^clk_24\,
      I2 => SrcB(3),
      I3 => \^clk_23\,
      I4 => SrcB(4),
      I5 => \^clk_22\,
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_29\,
      I1 => \^clk_28\,
      I2 => SrcB(3),
      I3 => \^clk_27\,
      I4 => SrcB(4),
      I5 => \^clk_26\,
      O => \ALUResult[31]_INST_0_i_21_n_0\
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_32\,
      I1 => \^clk_31\,
      I2 => SrcB(3),
      I3 => \^clk_30\,
      I4 => SrcB(4),
      I5 => \^clk_1\,
      O => \ALUResult[31]_INST_0_i_22_n_0\
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => O(0),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(31),
      I5 => \^clk_1\,
      O => \ALUResult[31]_INST_0_i_3_n_0\
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC55DC00"
    )
        port map (
      I0 => \ALUControl__0\(1),
      I1 => \^clk_1\,
      I2 => SrcB(31),
      I3 => \ALUControl__0\(0),
      I4 => O(0),
      O => \ALUResult[31]_INST_0_i_6_n_0\
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_12_n_0\,
      I1 => \ALUControl__0\(0),
      I2 => \ALUResult[31]_INST_0_i_13_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[31]_INST_0_i_14_n_0\,
      O => \ALUResult[31]_INST_0_i_7_n_0\
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \^clk_1\,
      I1 => SrcB(31),
      I2 => \ALUControl__0\(0),
      I3 => O(0),
      O => \ALUResult[31]_INST_0_i_9_n_0\
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[3]_INST_0_i_1_n_0\,
      I1 => \ALUResult[3]_INST_0_i_2_n_0\,
      O => \^aluresult[3]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_3_n_0\,
      I1 => \ALUResult[3]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[3]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[3]_INST_0_i_6_n_0\,
      O => \ALUResult[3]_INST_0_i_1_n_0\
    );
\ALUResult[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_48\,
      I1 => \^clk_2\(0),
      I2 => SrcB(3),
      I3 => \^clk_36\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[3]_INST_0_i_10_n_0\
    );
\ALUResult[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_26\,
      I1 => \^clk_27\,
      I2 => SrcB(3),
      I3 => \^clk_28\,
      I4 => SrcB(4),
      I5 => \^clk_29\,
      O => \ALUResult[3]_INST_0_i_13_n_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(3),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(3),
      I5 => \^clk_29\,
      O => \ALUResult[3]_INST_0_i_2_n_0\
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[3]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[4]_INST_0_i_8_n_0\,
      O => \ALUResult[3]_INST_0_i_3_n_0\
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(3),
      I1 => \addressM[0]\,
      I2 => SrcB(3),
      I3 => \ALUControl__0\(0),
      I4 => sum(3),
      O => \ALUResult[3]_INST_0_i_4_n_0\
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_9_n_0\,
      I1 => \ALUResult[3]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[3]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[4]_INST_0_i_10_n_0\,
      O => \ALUResult[3]_INST_0_i_5_n_0\
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(3),
      I1 => \addressM[0]\,
      I2 => SrcB(3),
      I3 => \ALUControl__0\(0),
      I4 => sum(3),
      O => \ALUResult[3]_INST_0_i_6_n_0\
    );
\ALUResult[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E200E2FFFF0000"
    )
        port map (
      I0 => \sum__0_carry_i_6_0\,
      I1 => ImmSrc(0),
      I2 => \sum__0_carry_i_6_1\,
      I3 => \sum__0_carry_i_7_0\,
      I4 => \^clk_13\,
      I5 => ALUSrc,
      O => SrcB(3)
    );
\ALUResult[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_11_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[7]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_8_n_0\
    );
\ALUResult[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_12_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[7]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_9_n_0\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[4]_INST_0_i_1_n_0\,
      I1 => \ALUResult[4]_INST_0_i_2_n_0\,
      O => \^aluresult[4]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_3_n_0\,
      I1 => \ALUResult[4]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[4]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[4]_INST_0_i_6_n_0\,
      O => \ALUResult[4]_INST_0_i_1_n_0\
    );
\ALUResult[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \^clk_21\,
      I1 => \^clk_2\(0),
      I2 => SrcB(3),
      I3 => \^clk_29\,
      I4 => SrcB(4),
      I5 => SrcB(2),
      O => \ALUResult[4]_INST_0_i_10_n_0\
    );
\ALUResult[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_41\,
      I1 => \^clk_42\,
      I2 => SrcB(3),
      I3 => \^clk_43\,
      I4 => SrcB(4),
      I5 => \^clk_44\,
      O => \ALUResult[4]_INST_0_i_13_n_0\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(4),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(4),
      I5 => \^clk_44\,
      O => \ALUResult[4]_INST_0_i_2_n_0\
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[4]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[5]_INST_0_i_8_n_0\,
      O => \ALUResult[4]_INST_0_i_3_n_0\
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(4),
      I1 => \addressM[0]\,
      I2 => SrcB(4),
      I3 => \ALUControl__0\(0),
      I4 => sum(4),
      O => \ALUResult[4]_INST_0_i_4_n_0\
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_9_n_0\,
      I1 => \ALUResult[4]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[4]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[5]_INST_0_i_10_n_0\,
      O => \ALUResult[4]_INST_0_i_5_n_0\
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(4),
      I1 => \addressM[0]\,
      I2 => SrcB(4),
      I3 => \ALUControl__0\(0),
      I4 => sum(4),
      O => \ALUResult[4]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E200E2FFFF0000"
    )
        port map (
      I0 => \sum__0_carry__0_i_8_0\,
      I1 => ImmSrc(0),
      I2 => \sum__0_carry__0_i_8_1\,
      I3 => \sum__0_carry_i_7_0\,
      I4 => \^clk_14\,
      I5 => ALUSrc,
      O => SrcB(4)
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_11_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[8]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_13_n_0\,
      O => \ALUResult[4]_INST_0_i_8_n_0\
    );
\ALUResult[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_12_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[8]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_13_n_0\,
      O => \ALUResult[4]_INST_0_i_9_n_0\
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[5]_INST_0_i_1_n_0\,
      I1 => \ALUResult[5]_INST_0_i_2_n_0\,
      O => \^aluresult[5]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_3_n_0\,
      I1 => \ALUResult[5]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[5]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[5]_INST_0_i_6_n_0\,
      O => \ALUResult[5]_INST_0_i_1_n_0\
    );
\ALUResult[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_36\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => \^clk_2\(0),
      I5 => \ALUResult[7]_INST_0_i_12_n_0\,
      O => \ALUResult[5]_INST_0_i_10_n_0\
    );
\ALUResult[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_22\,
      I1 => \^clk_23\,
      I2 => SrcB(3),
      I3 => \^clk_24\,
      I4 => SrcB(4),
      I5 => \^clk_25\,
      O => \ALUResult[5]_INST_0_i_11_n_0\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(5),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(5),
      I5 => \^clk_25\,
      O => \ALUResult[5]_INST_0_i_2_n_0\
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[5]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[6]_INST_0_i_8_n_0\,
      O => \ALUResult[5]_INST_0_i_3_n_0\
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(5),
      I1 => \addressM[0]\,
      I2 => SrcB(5),
      I3 => \ALUControl__0\(0),
      I4 => sum(5),
      O => \ALUResult[5]_INST_0_i_4_n_0\
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_9_n_0\,
      I1 => \ALUResult[5]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[5]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[6]_INST_0_i_10_n_0\,
      O => \ALUResult[5]_INST_0_i_5_n_0\
    );
\ALUResult[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(5),
      I1 => \addressM[0]\,
      I2 => SrcB(5),
      I3 => \ALUControl__0\(0),
      I4 => sum(5),
      O => \ALUResult[5]_INST_0_i_6_n_0\
    );
\ALUResult[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => \^rd20\(5),
      I5 => ALUSrc,
      O => SrcB(5)
    );
\ALUResult[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_11_n_0\,
      I1 => \ALUResult[7]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[9]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_8_n_0\
    );
\ALUResult[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_12_n_0\,
      I1 => \ALUResult[7]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[9]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_9_n_0\
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[6]_INST_0_i_1_n_0\,
      I1 => \ALUResult[6]_INST_0_i_2_n_0\,
      O => \^aluresult[6]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_3_n_0\,
      I1 => \ALUResult[6]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[6]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[6]_INST_0_i_6_n_0\,
      O => \ALUResult[6]_INST_0_i_1_n_0\
    );
\ALUResult[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => SrcB(3),
      I1 => \^clk_29\,
      I2 => SrcB(4),
      I3 => SrcB(2),
      I4 => \^clk_2\(0),
      I5 => \ALUResult[8]_INST_0_i_13_n_0\,
      O => \ALUResult[6]_INST_0_i_10_n_0\
    );
\ALUResult[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_37\,
      I1 => \^clk_38\,
      I2 => SrcB(3),
      I3 => \^clk_39\,
      I4 => SrcB(4),
      I5 => \^clk_40\,
      O => \ALUResult[6]_INST_0_i_11_n_0\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(6),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(6),
      I5 => \^clk_40\,
      O => \ALUResult[6]_INST_0_i_2_n_0\
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[6]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[7]_INST_0_i_8_n_0\,
      O => \ALUResult[6]_INST_0_i_3_n_0\
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(6),
      I1 => \addressM[0]\,
      I2 => SrcB(6),
      I3 => \ALUControl__0\(0),
      I4 => sum(6),
      O => \ALUResult[6]_INST_0_i_4_n_0\
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_9_n_0\,
      I1 => \ALUResult[6]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[6]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[7]_INST_0_i_10_n_0\,
      O => \ALUResult[6]_INST_0_i_5_n_0\
    );
\ALUResult[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(6),
      I1 => \addressM[0]\,
      I2 => SrcB(6),
      I3 => \ALUControl__0\(0),
      I4 => sum(6),
      O => \ALUResult[6]_INST_0_i_6_n_0\
    );
\ALUResult[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => \^rd20\(6),
      I5 => ALUSrc,
      O => SrcB(6)
    );
\ALUResult[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_12_n_0\,
      I1 => \ALUResult[8]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[10]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_8_n_0\
    );
\ALUResult[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_13_n_0\,
      I1 => \ALUResult[8]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[10]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_9_n_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[7]_INST_0_i_1_n_0\,
      I1 => \ALUResult[7]_INST_0_i_2_n_0\,
      O => \^aluresult[7]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_3_n_0\,
      I1 => \ALUResult[7]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[7]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[7]_INST_0_i_6_n_0\,
      O => \ALUResult[7]_INST_0_i_1_n_0\
    );
\ALUResult[7]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_12_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[9]_INST_0_i_13_n_0\,
      O => \ALUResult[7]_INST_0_i_10_n_0\
    );
\ALUResult[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_30\,
      I2 => SrcB(3),
      I3 => \^clk_31\,
      I4 => SrcB(4),
      I5 => \^clk_32\,
      O => \ALUResult[7]_INST_0_i_11_n_0\
    );
\ALUResult[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(0),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(4),
      I5 => SrcB(3),
      O => \ALUResult[7]_INST_0_i_12_n_0\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(7),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(7),
      I5 => \^clk_32\,
      O => \ALUResult[7]_INST_0_i_2_n_0\
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[7]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[8]_INST_0_i_8_n_0\,
      O => \ALUResult[7]_INST_0_i_3_n_0\
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(7),
      I1 => \addressM[0]\,
      I2 => SrcB(7),
      I3 => \ALUControl__0\(0),
      I4 => sum(7),
      O => \ALUResult[7]_INST_0_i_4_n_0\
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_9_n_0\,
      I1 => \ALUResult[7]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[7]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[8]_INST_0_i_10_n_0\,
      O => \ALUResult[7]_INST_0_i_5_n_0\
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(7),
      I1 => \addressM[0]\,
      I2 => SrcB(7),
      I3 => \ALUControl__0\(0),
      I4 => sum(7),
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => \^rd20\(7),
      I5 => ALUSrc,
      O => SrcB(7)
    );
\ALUResult[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_12_n_0\,
      I1 => \ALUResult[9]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[11]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_11_n_0\,
      O => \ALUResult[7]_INST_0_i_8_n_0\
    );
\ALUResult[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_13_n_0\,
      I1 => \ALUResult[9]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[11]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_11_n_0\,
      O => \ALUResult[7]_INST_0_i_9_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[8]_INST_0_i_1_n_0\,
      I1 => \ALUResult[8]_INST_0_i_2_n_0\,
      O => \^aluresult[8]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_3_n_0\,
      I1 => \ALUResult[8]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[8]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[8]_INST_0_i_6_n_0\,
      O => \ALUResult[8]_INST_0_i_1_n_0\
    );
\ALUResult[8]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[10]_INST_0_i_13_n_0\,
      O => \ALUResult[8]_INST_0_i_10_n_0\
    );
\ALUResult[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_45\,
      I2 => SrcB(3),
      I3 => \^clk_46\,
      I4 => SrcB(4),
      I5 => \^clk_47\,
      O => \ALUResult[8]_INST_0_i_11_n_0\
    );
\ALUResult[8]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(16),
      I1 => SrcB(3),
      I2 => rd10(24),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(8),
      O => \ALUResult[8]_INST_0_i_12_n_0\
    );
\ALUResult[8]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(1),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(5),
      I5 => SrcB(3),
      O => \ALUResult[8]_INST_0_i_13_n_0\
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(8),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(8),
      I5 => \^clk_47\,
      O => \ALUResult[8]_INST_0_i_2_n_0\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[8]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[9]_INST_0_i_8_n_0\,
      O => \ALUResult[8]_INST_0_i_3_n_0\
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(8),
      I1 => \addressM[0]\,
      I2 => SrcB(8),
      I3 => \ALUControl__0\(0),
      I4 => sum(8),
      O => \ALUResult[8]_INST_0_i_4_n_0\
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_9_n_0\,
      I1 => \ALUResult[8]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[8]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[9]_INST_0_i_10_n_0\,
      O => \ALUResult[8]_INST_0_i_5_n_0\
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(8),
      I1 => \addressM[0]\,
      I2 => SrcB(8),
      I3 => \ALUControl__0\(0),
      I4 => sum(8),
      O => \ALUResult[8]_INST_0_i_6_n_0\
    );
\ALUResult[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => rd20_0(8),
      I5 => ALUSrc,
      O => SrcB(8)
    );
\ALUResult[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_12_n_0\,
      I1 => \ALUResult[10]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[12]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_11_n_0\,
      O => \ALUResult[8]_INST_0_i_8_n_0\
    );
\ALUResult[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_13_n_0\,
      I1 => \ALUResult[10]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[12]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_12_n_0\,
      O => \ALUResult[8]_INST_0_i_9_n_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALUResult[9]_INST_0_i_1_n_0\,
      I1 => \ALUResult[9]_INST_0_i_2_n_0\,
      O => \^aluresult[9]_inst_0_i_2_0\,
      S => \ALUControl__0\(2)
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_3_n_0\,
      I1 => \ALUResult[9]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \ALUResult[9]_INST_0_i_5_n_0\,
      I4 => \ALUControl__0\(1),
      I5 => \ALUResult[9]_INST_0_i_6_n_0\,
      O => \ALUResult[9]_INST_0_i_1_n_0\
    );
\ALUResult[9]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_13_n_0\,
      I1 => \^clk_2\(0),
      I2 => \ALUResult[11]_INST_0_i_13_n_0\,
      O => \ALUResult[9]_INST_0_i_10_n_0\
    );
\ALUResult[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^clk_1\,
      I1 => \^clk_20\,
      I2 => SrcB(3),
      I3 => \^clk_18\,
      I4 => SrcB(4),
      I5 => \^clk_19\,
      O => \ALUResult[9]_INST_0_i_11_n_0\
    );
\ALUResult[9]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => rd10(17),
      I1 => SrcB(3),
      I2 => rd10(25),
      I3 => SrcB(4),
      I4 => \addressM[0]\,
      I5 => rd10(9),
      O => \ALUResult[9]_INST_0_i_12_n_0\
    );
\ALUResult[9]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => rd10(2),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => \addressM[0]\,
      I4 => rd10(6),
      I5 => SrcB(3),
      O => \ALUResult[9]_INST_0_i_13_n_0\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF80C08FCF8FC080"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => sum(9),
      I2 => ALUControl(0),
      I3 => \ALUControl__0\(1),
      I4 => SrcB(9),
      I5 => \^clk_19\,
      O => \ALUResult[9]_INST_0_i_2_n_0\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \ALUControl__0\(0),
      I1 => \ALUResult[9]_INST_0_i_8_n_0\,
      I2 => SrcB(0),
      I3 => \ALUResult[10]_INST_0_i_8_n_0\,
      O => \ALUResult[9]_INST_0_i_3_n_0\
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => rd10(9),
      I1 => \addressM[0]\,
      I2 => SrcB(9),
      I3 => \ALUControl__0\(0),
      I4 => sum(9),
      O => \ALUResult[9]_INST_0_i_4_n_0\
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_9_n_0\,
      I1 => \ALUResult[9]_INST_0_i_9_n_0\,
      I2 => \ALUControl__0\(0),
      I3 => \ALUResult[9]_INST_0_i_10_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[10]_INST_0_i_10_n_0\,
      O => \ALUResult[9]_INST_0_i_5_n_0\
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => rd10(9),
      I1 => \addressM[0]\,
      I2 => SrcB(9),
      I3 => \ALUControl__0\(0),
      I4 => sum(9),
      O => \ALUResult[9]_INST_0_i_6_n_0\
    );
\ALUResult[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8AFF000000"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(3),
      I2 => Instr(0),
      I3 => \rd21__3\,
      I4 => rd20_0(9),
      I5 => ALUSrc,
      O => SrcB(9)
    );
\ALUResult[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_12_n_0\,
      I1 => \ALUResult[11]_INST_0_i_11_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[13]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_11_n_0\,
      O => \ALUResult[9]_INST_0_i_8_n_0\
    );
\ALUResult[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_13_n_0\,
      I1 => \ALUResult[11]_INST_0_i_12_n_0\,
      I2 => \^clk_2\(0),
      I3 => \ALUResult[13]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[9]_INST_0_i_12_n_0\,
      O => \ALUResult[9]_INST_0_i_9_n_0\
    );
\WriteData[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(0),
      O => \^clk_10\
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[10]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(2),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[10]_INST_0_i_2_n_0\,
      O => WriteData(2)
    );
\WriteData[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(10),
      O => \WriteData[10]_INST_0_i_1_n_0\
    );
\WriteData[10]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(2),
      I2 => \writeDataM[8]\,
      I3 => ReadData(2),
      O => \WriteData[10]_INST_0_i_2_n_0\
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[11]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(3),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[11]_INST_0_i_2_n_0\,
      O => WriteData(3)
    );
\WriteData[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(11),
      O => \WriteData[11]_INST_0_i_1_n_0\
    );
\WriteData[11]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(3),
      I2 => \writeDataM[8]\,
      I3 => ReadData(3),
      O => \WriteData[11]_INST_0_i_2_n_0\
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[12]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(4),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[12]_INST_0_i_2_n_0\,
      O => WriteData(4)
    );
\WriteData[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(12),
      O => \WriteData[12]_INST_0_i_1_n_0\
    );
\WriteData[12]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(4),
      I2 => \writeDataM[8]\,
      I3 => ReadData(4),
      O => \WriteData[12]_INST_0_i_2_n_0\
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[13]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(5),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[13]_INST_0_i_2_n_0\,
      O => WriteData(5)
    );
\WriteData[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(13),
      O => \WriteData[13]_INST_0_i_1_n_0\
    );
\WriteData[13]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(5),
      I2 => \writeDataM[8]\,
      I3 => ReadData(5),
      O => \WriteData[13]_INST_0_i_2_n_0\
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[14]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(6),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[14]_INST_0_i_2_n_0\,
      O => WriteData(6)
    );
\WriteData[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(14),
      O => \WriteData[14]_INST_0_i_1_n_0\
    );
\WriteData[14]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(6),
      I2 => \writeDataM[8]\,
      I3 => ReadData(6),
      O => \WriteData[14]_INST_0_i_2_n_0\
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[15]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(7),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[15]_INST_0_i_2_n_0\,
      O => WriteData(7)
    );
\WriteData[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(15),
      O => \WriteData[15]_INST_0_i_1_n_0\
    );
\WriteData[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(7),
      I2 => \writeDataM[8]\,
      I3 => ReadData(7),
      O => \WriteData[15]_INST_0_i_2_n_0\
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(16),
      I2 => Instr(10),
      I3 => \writeDataM[16]\,
      O => WriteData(8)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(17),
      I2 => Instr(10),
      I3 => \writeDataM[17]\,
      O => WriteData(9)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(18),
      I2 => Instr(10),
      I3 => \writeDataM[18]\,
      O => WriteData(10)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(19),
      I2 => Instr(10),
      I3 => \writeDataM[19]\,
      O => WriteData(11)
    );
\WriteData[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(1),
      O => \^clk_11\
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(20),
      I2 => Instr(10),
      I3 => \writeDataM[20]\,
      O => WriteData(12)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(21),
      I2 => Instr(10),
      I3 => \writeDataM[21]\,
      O => WriteData(13)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(22),
      I2 => Instr(10),
      I3 => \writeDataM[22]\,
      O => WriteData(14)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(23),
      I2 => Instr(10),
      I3 => \writeDataM[23]\,
      O => WriteData(15)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(24),
      I2 => Instr(10),
      I3 => \WriteData[24]_INST_0_i_1_n_0\,
      O => WriteData(16)
    );
\WriteData[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[8]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_10\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(8),
      O => \WriteData[24]_INST_0_i_1_n_0\
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(25),
      I2 => Instr(10),
      I3 => \WriteData[25]_INST_0_i_1_n_0\,
      O => WriteData(17)
    );
\WriteData[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[9]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_11\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(9),
      O => \WriteData[25]_INST_0_i_1_n_0\
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(26),
      I2 => Instr(10),
      I3 => \WriteData[26]_INST_0_i_1_n_0\,
      O => WriteData(18)
    );
\WriteData[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[10]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_12\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(10),
      O => \WriteData[26]_INST_0_i_1_n_0\
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(27),
      I2 => Instr(10),
      I3 => \WriteData[27]_INST_0_i_1_n_0\,
      O => WriteData(19)
    );
\WriteData[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[11]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_13\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(11),
      O => \WriteData[27]_INST_0_i_1_n_0\
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(28),
      I2 => Instr(10),
      I3 => \WriteData[28]_INST_0_i_1_n_0\,
      O => WriteData(20)
    );
\WriteData[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[12]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_14\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(12),
      O => \WriteData[28]_INST_0_i_1_n_0\
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(29),
      I2 => Instr(10),
      I3 => \WriteData[29]_INST_0_i_1_n_0\,
      O => WriteData(21)
    );
\WriteData[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[13]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_15\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(13),
      O => \WriteData[29]_INST_0_i_1_n_0\
    );
\WriteData[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(2),
      O => \^clk_12\
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(30),
      I2 => Instr(10),
      I3 => \WriteData[30]_INST_0_i_1_n_0\,
      O => WriteData(22)
    );
\WriteData[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[14]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_16\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(14),
      O => \WriteData[30]_INST_0_i_1_n_0\
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => rd20_0(31),
      I2 => Instr(10),
      I3 => \WriteData[31]_INST_0_i_2_n_0\,
      O => WriteData(23)
    );
\WriteData[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8880000"
    )
        port map (
      I0 => \WriteData[15]_INST_0_i_1_n_0\,
      I1 => Instr(9),
      I2 => \^clk_17\,
      I3 => \writeDataM[8]\,
      I4 => \writeDataM[15]\,
      I5 => ReadData(15),
      O => \WriteData[31]_INST_0_i_2_n_0\
    );
\WriteData[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(3),
      O => \^clk_13\
    );
\WriteData[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(4),
      O => \^clk_14\
    );
\WriteData[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(5),
      O => \^clk_15\
    );
\WriteData[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(6),
      O => \^clk_16\
    );
\WriteData[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => \^rd20\(7),
      O => \^clk_17\
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[8]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(0),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[8]_INST_0_i_2_n_0\,
      O => WriteData(0)
    );
\WriteData[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(8),
      O => \WriteData[8]_INST_0_i_1_n_0\
    );
\WriteData[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(0),
      I2 => \writeDataM[8]\,
      I3 => ReadData(0),
      O => \WriteData[8]_INST_0_i_2_n_0\
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88CDCDDD88C8C8"
    )
        port map (
      I0 => Instr(10),
      I1 => \WriteData[9]_INST_0_i_1_n_0\,
      I2 => Instr(9),
      I3 => ReadData(1),
      I4 => \writeDataM[15]\,
      I5 => \WriteData[9]_INST_0_i_2_n_0\,
      O => WriteData(1)
    );
\WriteData[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(18),
      I3 => Instr(17),
      I4 => Instr(19),
      I5 => rd20_0(9),
      O => \WriteData[9]_INST_0_i_1_n_0\
    );
\WriteData[9]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \rd21__3\,
      I1 => \^rd20\(1),
      I2 => \writeDataM[8]\,
      I3 => ReadData(1),
      O => \WriteData[9]_INST_0_i_2_n_0\
    );
\carried_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_32\,
      I1 => ALUSrc,
      I2 => \^rd20\(7),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(24),
      O => clk_62(3)
    );
\carried_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_40\,
      I1 => ALUSrc,
      I2 => \^rd20\(6),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(23),
      O => clk_62(2)
    );
\carried_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_25\,
      I1 => ALUSrc,
      I2 => \^rd20\(5),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(22),
      O => clk_62(1)
    );
\carried_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(4),
      I1 => \rd11__3\,
      I2 => SrcB(4),
      O => clk_62(0)
    );
\carried_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(11),
      I1 => \rd11__3\,
      I2 => SrcB(11),
      O => clk_61(3)
    );
\carried_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_34\,
      I1 => ALUSrc,
      I2 => rd20_0(10),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(27),
      O => clk_61(2)
    );
\carried_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_19\,
      I1 => ALUSrc,
      I2 => rd20_0(9),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(26),
      O => clk_61(1)
    );
\carried_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A99965556555"
    )
        port map (
      I0 => \^clk_47\,
      I1 => ALUSrc,
      I2 => rd20_0(8),
      I3 => \rd21__3\,
      I4 => \sum__0_carry_i_7_0\,
      I5 => Instr(25),
      O => clk_61(0)
    );
\carried_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(15),
      I1 => \rd11__3\,
      I2 => SrcB(15),
      O => clk_60(3)
    );
\carried_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(14),
      I1 => \rd11__3\,
      I2 => SrcB(14),
      O => clk_60(2)
    );
\carried_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(13),
      I1 => \rd11__3\,
      I2 => SrcB(13),
      O => clk_60(1)
    );
\carried_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(12),
      I1 => \rd11__3\,
      I2 => SrcB(12),
      O => clk_60(0)
    );
\carried_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(19),
      I1 => \rd11__3\,
      I2 => \^clk_2\(1),
      O => clk_59(3)
    );
\carried_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(18),
      I1 => \rd11__3\,
      I2 => SrcB(18),
      O => clk_59(2)
    );
\carried_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(17),
      I1 => \rd11__3\,
      I2 => SrcB(17),
      O => clk_59(1)
    );
\carried_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(16),
      I1 => \rd11__3\,
      I2 => SrcB(16),
      O => clk_59(0)
    );
\carried_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(23),
      I1 => \rd11__3\,
      I2 => SrcB(23),
      O => clk_58(3)
    );
\carried_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(22),
      I1 => \rd11__3\,
      I2 => SrcB(22),
      O => clk_58(2)
    );
\carried_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(21),
      I1 => \rd11__3\,
      I2 => SrcB(21),
      O => clk_58(1)
    );
\carried_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(20),
      I1 => \rd11__3\,
      I2 => SrcB(20),
      O => clk_58(0)
    );
\carried_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(27),
      I1 => \rd11__3\,
      I2 => SrcB(27),
      O => clk_57(3)
    );
\carried_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(26),
      I1 => \rd11__3\,
      I2 => SrcB(26),
      O => clk_57(2)
    );
\carried_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(25),
      I1 => \rd11__3\,
      I2 => SrcB(25),
      O => clk_57(1)
    );
\carried_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(24),
      I1 => \rd11__3\,
      I2 => SrcB(24),
      O => clk_57(0)
    );
\carried_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(31),
      O => \^clk_1\
    );
\carried_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9996555"
    )
        port map (
      I0 => \^clk_1\,
      I1 => ALUSrc,
      I2 => rd20_0(31),
      I3 => \rd21__3\,
      I4 => Instr(28),
      O => clk_56(3)
    );
\carried_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(30),
      I1 => \rd11__3\,
      I2 => SrcB(30),
      O => clk_56(2)
    );
\carried_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(29),
      I1 => \rd11__3\,
      I2 => SrcB(29),
      O => clk_56(1)
    );
\carried_carry__6_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(28),
      I1 => \rd11__3\,
      I2 => SrcB(28),
      O => clk_56(0)
    );
carried_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(3),
      I1 => \rd11__3\,
      I2 => SrcB(3),
      O => clk_63(3)
    );
carried_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => rd10(2),
      I1 => \rd11__3\,
      I2 => SrcB(2),
      O => clk_63(2)
    );
carried_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \rd11__3\,
      I1 => rd10(1),
      I2 => \^clk_2\(0),
      O => clk_63(1)
    );
carried_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \rd11__3\,
      I1 => rd10(0),
      I2 => SrcB(0),
      O => clk_63(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(14),
      I1 => rd10(14),
      I2 => \addressM[0]\,
      I3 => rd10(15),
      I4 => SrcB(15),
      O => clk_4(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd10(12),
      I2 => \addressM[0]\,
      I3 => rd10(13),
      I4 => SrcB(13),
      O => clk_4(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(10),
      I1 => rd10(10),
      I2 => \addressM[0]\,
      I3 => rd10(11),
      I4 => SrcB(11),
      O => clk_4(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(8),
      I1 => rd10(8),
      I2 => \addressM[0]\,
      I3 => rd10(9),
      I4 => SrcB(9),
      O => clk_4(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(14),
      I1 => rd10(14),
      I2 => SrcB(15),
      I3 => \addressM[0]\,
      I4 => rd10(15),
      O => clk_5(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd10(12),
      I2 => SrcB(13),
      I3 => \addressM[0]\,
      I4 => rd10(13),
      O => clk_5(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(10),
      I1 => rd10(10),
      I2 => SrcB(11),
      I3 => \addressM[0]\,
      I4 => rd10(11),
      O => clk_5(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(8),
      I1 => rd10(8),
      I2 => SrcB(9),
      I3 => \addressM[0]\,
      I4 => rd10(9),
      O => clk_5(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(22),
      I1 => rd10(22),
      I2 => \addressM[0]\,
      I3 => rd10(23),
      I4 => SrcB(23),
      O => clk_6(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd10(20),
      I2 => \addressM[0]\,
      I3 => rd10(21),
      I4 => SrcB(21),
      O => clk_6(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(18),
      I1 => rd10(18),
      I2 => \addressM[0]\,
      I3 => rd10(19),
      I4 => \^clk_2\(1),
      O => clk_6(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(16),
      I1 => rd10(16),
      I2 => \addressM[0]\,
      I3 => rd10(17),
      I4 => SrcB(17),
      O => clk_6(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(22),
      I1 => rd10(22),
      I2 => SrcB(23),
      I3 => \addressM[0]\,
      I4 => rd10(23),
      O => clk_7(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd10(20),
      I2 => SrcB(21),
      I3 => \addressM[0]\,
      I4 => rd10(21),
      O => clk_7(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(18),
      I1 => rd10(18),
      I2 => \^clk_2\(1),
      I3 => \addressM[0]\,
      I4 => rd10(19),
      O => clk_7(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(16),
      I1 => rd10(16),
      I2 => SrcB(17),
      I3 => \addressM[0]\,
      I4 => rd10(17),
      O => clk_7(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => \addressM[0]\,
      I3 => rd10(31),
      I4 => SrcB(31),
      O => clk_8(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(28),
      I1 => rd10(28),
      I2 => \addressM[0]\,
      I3 => rd10(29),
      I4 => SrcB(29),
      O => clk_8(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(26),
      I1 => rd10(26),
      I2 => \addressM[0]\,
      I3 => rd10(27),
      I4 => SrcB(27),
      O => clk_8(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(24),
      I1 => rd10(24),
      I2 => \addressM[0]\,
      I3 => rd10(25),
      I4 => SrcB(25),
      O => clk_8(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(30),
      I1 => rd10(30),
      I2 => SrcB(31),
      I3 => \addressM[0]\,
      I4 => rd10(31),
      O => clk_9(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(28),
      I1 => rd10(28),
      I2 => SrcB(29),
      I3 => \addressM[0]\,
      I4 => rd10(29),
      O => clk_9(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(26),
      I1 => rd10(26),
      I2 => SrcB(27),
      I3 => \addressM[0]\,
      I4 => rd10(27),
      O => clk_9(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(24),
      I1 => rd10(24),
      I2 => SrcB(25),
      I3 => \addressM[0]\,
      I4 => rd10(25),
      O => clk_9(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(6),
      I1 => rd10(6),
      I2 => \addressM[0]\,
      I3 => rd10(7),
      I4 => SrcB(7),
      O => DI(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd10(4),
      I2 => \addressM[0]\,
      I3 => rd10(5),
      I4 => SrcB(5),
      O => DI(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(2),
      I1 => rd10(2),
      I2 => \addressM[0]\,
      I3 => rd10(3),
      I4 => SrcB(3),
      O => DI(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF0A2A"
    )
        port map (
      I0 => SrcB(0),
      I1 => rd10(0),
      I2 => \addressM[0]\,
      I3 => rd10(1),
      I4 => \^clk_2\(0),
      O => DI(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(6),
      I1 => rd10(6),
      I2 => SrcB(7),
      I3 => \addressM[0]\,
      I4 => rd10(7),
      O => clk_3(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd10(4),
      I2 => SrcB(5),
      I3 => \addressM[0]\,
      I4 => rd10(5),
      O => clk_3(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90050905"
    )
        port map (
      I0 => SrcB(2),
      I1 => rd10(2),
      I2 => SrcB(3),
      I3 => \addressM[0]\,
      I4 => rd10(3),
      O => clk_3(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => rd10(0),
      I1 => SrcB(0),
      I2 => \addressM[0]\,
      I3 => rd10(1),
      I4 => \^clk_2\(0),
      O => clk_3(0)
    );
\q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(10),
      I1 => PCPlus4(7),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(8)
    );
\q[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[10]_inst_0_i_2_0\,
      I1 => PCTargetI(8),
      I2 => ALUSrc,
      O => PCTarget(10)
    );
\q[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(11),
      I1 => PCPlus4(8),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(9)
    );
\q[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[11]_inst_0_i_2_0\,
      I1 => PCTargetI(9),
      I2 => ALUSrc,
      O => PCTarget(11)
    );
\q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(12),
      I1 => PCPlus4(9),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(10)
    );
\q[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[12]_inst_0_i_2_0\,
      I1 => PCTargetI(10),
      I2 => ALUSrc,
      O => PCTarget(12)
    );
\q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(13),
      I1 => PCPlus4(10),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(11)
    );
\q[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[13]_inst_0_i_2_0\,
      I1 => PCTargetI(11),
      I2 => ALUSrc,
      O => PCTarget(13)
    );
\q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(14),
      I1 => PCPlus4(11),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(12)
    );
\q[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[14]_inst_0_i_2_0\,
      I1 => PCTargetI(12),
      I2 => ALUSrc,
      O => PCTarget(14)
    );
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(15),
      I1 => PCPlus4(12),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(13)
    );
\q[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[15]_inst_0_i_2_0\,
      I1 => PCTargetI(13),
      I2 => ALUSrc,
      O => PCTarget(15)
    );
\q[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(16),
      I1 => PCPlus4(13),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(14)
    );
\q[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[16]_inst_0_i_2_0\,
      I1 => PCTargetI(14),
      I2 => ALUSrc,
      O => PCTarget(16)
    );
\q[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(17),
      I1 => PCPlus4(14),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(15)
    );
\q[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[17]_inst_0_i_2_0\,
      I1 => PCTargetI(15),
      I2 => ALUSrc,
      O => PCTarget(17)
    );
\q[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(18),
      I1 => PCPlus4(15),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(16)
    );
\q[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[18]_inst_0_i_2_0\,
      I1 => PCTargetI(16),
      I2 => ALUSrc,
      O => PCTarget(18)
    );
\q[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(20),
      I1 => PCPlus4(16),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(17)
    );
\q[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[20]_inst_0_i_2_0\,
      I1 => PCTargetI(17),
      I2 => ALUSrc,
      O => PCTarget(20)
    );
\q[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(21),
      I1 => PCPlus4(17),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(18)
    );
\q[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[21]_inst_0_i_2_0\,
      I1 => PCTargetI(18),
      I2 => ALUSrc,
      O => PCTarget(21)
    );
\q[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(22),
      I1 => PCPlus4(18),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(19)
    );
\q[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[22]_inst_0_i_2_0\,
      I1 => PCTargetI(19),
      I2 => ALUSrc,
      O => PCTarget(22)
    );
\q[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(23),
      I1 => PCPlus4(19),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(20)
    );
\q[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[23]_inst_0_i_2_0\,
      I1 => PCTargetI(20),
      I2 => ALUSrc,
      O => PCTarget(23)
    );
\q[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(24),
      I1 => PCPlus4(20),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(21)
    );
\q[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[24]_inst_0_i_2_0\,
      I1 => PCTargetI(21),
      I2 => ALUSrc,
      O => PCTarget(24)
    );
\q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(25),
      I1 => PCPlus4(21),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(22)
    );
\q[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[25]_inst_0_i_2_0\,
      I1 => PCTargetI(22),
      I2 => ALUSrc,
      O => PCTarget(25)
    );
\q[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(26),
      I1 => PCPlus4(22),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(23)
    );
\q[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[26]_inst_0_i_2_0\,
      I1 => PCTargetI(23),
      I2 => ALUSrc,
      O => PCTarget(26)
    );
\q[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(27),
      I1 => PCPlus4(23),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(24)
    );
\q[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[27]_inst_0_i_2_0\,
      I1 => PCTargetI(24),
      I2 => ALUSrc,
      O => PCTarget(27)
    );
\q[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(28),
      I1 => PCPlus4(24),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(25)
    );
\q[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[28]_inst_0_i_2_0\,
      I1 => PCTargetI(25),
      I2 => ALUSrc,
      O => PCTarget(28)
    );
\q[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(29),
      I1 => PCPlus4(25),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(26)
    );
\q[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[29]_inst_0_i_2_0\,
      I1 => PCTargetI(26),
      I2 => ALUSrc,
      O => PCTarget(29)
    );
\q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA33A333"
    )
        port map (
      I0 => PCTarget(2),
      I1 => Q(0),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(0)
    );
\q[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[2]_inst_0_i_2_0\,
      I1 => PCTargetI(0),
      I2 => ALUSrc,
      O => PCTarget(2)
    );
\q[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(30),
      I1 => PCPlus4(26),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(27)
    );
\q[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_2_0\,
      I1 => PCTargetI(27),
      I2 => ALUSrc,
      O => PCTarget(30)
    );
\q[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(31),
      I1 => PCPlus4(27),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(28)
    );
\q[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[15]_inst_0_i_2_0\,
      I1 => \^aluresult[14]_inst_0_i_2_0\,
      I2 => \^aluresult[13]_inst_0_i_2_0\,
      I3 => \^aluresult[12]_inst_0_i_2_0\,
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^aluresult[25]_inst_0_i_2_0\,
      I1 => \^aluresult[24]_inst_0_i_2_0\,
      I2 => \^aluresult[27]_inst_0_i_2_0\,
      I3 => \^aluresult[26]_inst_0_i_2_0\,
      O => \q[31]_i_11_n_0\
    );
\q[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[30]_inst_0_i_2_0\,
      I1 => \^aluresult[31]_inst_0_i_3_0\,
      I2 => \^aluresult[29]_inst_0_i_2_0\,
      I3 => \^aluresult[28]_inst_0_i_2_0\,
      O => \q[31]_i_12_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[23]_inst_0_i_2_0\,
      I1 => \^aluresult[22]_inst_0_i_2_0\,
      I2 => \^aluresult[21]_inst_0_i_2_0\,
      I3 => \^aluresult[20]_inst_0_i_2_0\,
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \q[31]_i_6_0\,
      I1 => \^aluresult[18]_inst_0_i_2_0\,
      I2 => \^aluresult[17]_inst_0_i_2_0\,
      I3 => \^aluresult[16]_inst_0_i_2_0\,
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_3_0\,
      I1 => PCTargetI(28),
      I2 => ALUSrc,
      O => PCTarget(31)
    );
\q[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8A8ABABA8ABA8"
    )
        port map (
      I0 => \q[31]_i_4_n_0\,
      I1 => Instr(10),
      I2 => Instr(11),
      I3 => Instr(9),
      I4 => \q[31]_i_5_n_0\,
      I5 => \q[31]_i_6_n_0\,
      O => \^bcontrol__8\
    );
\q[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0380A38"
    )
        port map (
      I0 => Instr(11),
      I1 => \alu/result00_out\(0),
      I2 => Instr(9),
      I3 => Instr(10),
      I4 => CO(0),
      O => \q[31]_i_4_n_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \q[31]_i_3_0\,
      I1 => \q[31]_i_8_n_0\,
      I2 => \q[31]_i_9_n_0\,
      I3 => \q[31]_i_10_n_0\,
      O => \q[31]_i_5_n_0\
    );
\q[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \q[31]_i_11_n_0\,
      I1 => \q[31]_i_12_n_0\,
      I2 => \q[31]_i_13_n_0\,
      I3 => \q[31]_i_14_n_0\,
      O => \q[31]_i_6_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^aluresult[7]_inst_0_i_2_0\,
      I1 => \^aluresult[6]_inst_0_i_2_0\,
      I2 => \^aluresult[5]_inst_0_i_2_0\,
      I3 => \^aluresult[4]_inst_0_i_2_0\,
      O => \q[31]_i_8_n_0\
    );
\q[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^aluresult[9]_inst_0_i_2_0\,
      I1 => \^aluresult[8]_inst_0_i_2_0\,
      I2 => \^aluresult[11]_inst_0_i_2_0\,
      I3 => \^aluresult[10]_inst_0_i_2_0\,
      O => \q[31]_i_9_n_0\
    );
\q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(3),
      I1 => PCPlus4(0),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(1)
    );
\q[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[3]_inst_0_i_2_0\,
      I1 => PCTargetI(1),
      I2 => ALUSrc,
      O => PCTarget(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(4),
      I1 => PCPlus4(1),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(2)
    );
\q[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[4]_inst_0_i_2_0\,
      I1 => PCTargetI(2),
      I2 => ALUSrc,
      O => PCTarget(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(5),
      I1 => PCPlus4(2),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(3)
    );
\q[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[5]_inst_0_i_2_0\,
      I1 => PCTargetI(3),
      I2 => ALUSrc,
      O => PCTarget(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(6),
      I1 => PCPlus4(3),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(4)
    );
\q[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[6]_inst_0_i_2_0\,
      I1 => PCTargetI(4),
      I2 => ALUSrc,
      O => PCTarget(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(7),
      I1 => PCPlus4(4),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(5)
    );
\q[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[7]_inst_0_i_2_0\,
      I1 => PCTargetI(5),
      I2 => ALUSrc,
      O => PCTarget(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(8),
      I1 => PCPlus4(5),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(6)
    );
\q[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[8]_inst_0_i_2_0\,
      I1 => PCTargetI(6),
      I2 => ALUSrc,
      O => PCTarget(8)
    );
\q[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCACCC"
    )
        port map (
      I0 => PCTarget(9),
      I1 => PCPlus4(6),
      I2 => \^bcontrol__8\,
      I3 => Instr(3),
      I4 => Instr(0),
      O => D(7)
    );
\q[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^aluresult[9]_inst_0_i_2_0\,
      I1 => PCTargetI(7),
      I2 => ALUSrc,
      O => PCTarget(9)
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(16 downto 12),
      ADDRB(4 downto 0) => Instr(16 downto 12),
      ADDRC(4 downto 0) => Instr(16 downto 12),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(1 downto 0),
      DIB(1 downto 0) => Result(3 downto 2),
      DIC(1 downto 0) => Result(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(1),
      O => RegWrite
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(16 downto 12),
      ADDRB(4 downto 0) => Instr(16 downto 12),
      ADDRC(4 downto 0) => Instr(16 downto 12),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(13 downto 12),
      DIB(1 downto 0) => Result(15 downto 14),
      DIC(1 downto 0) => Result(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(16 downto 12),
      ADDRB(4 downto 0) => Instr(16 downto 12),
      ADDRC(4 downto 0) => Instr(16 downto 12),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(19 downto 18),
      DIB(1 downto 0) => Result(21 downto 20),
      DIC(1 downto 0) => Result(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(16 downto 12),
      ADDRB(4 downto 0) => Instr(16 downto 12),
      ADDRC(4 downto 0) => Instr(16 downto 12),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(25 downto 24),
      DIB(1 downto 0) => Result(27 downto 26),
      DIC(1 downto 0) => Result(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => Result(30),
      DPO => rd10(30),
      DPRA0 => Instr(12),
      DPRA1 => Instr(13),
      DPRA2 => Instr(14),
      DPRA3 => Instr(15),
      DPRA4 => Instr(16),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWrite
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => Result(31),
      DPO => rd10(31),
      DPRA0 => Instr(12),
      DPRA1 => Instr(13),
      DPRA2 => Instr(14),
      DPRA3 => Instr(15),
      DPRA4 => Instr(16),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(16 downto 12),
      ADDRB(4 downto 0) => Instr(16 downto 12),
      ADDRC(4 downto 0) => Instr(16 downto 12),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(7 downto 6),
      DIB(1 downto 0) => Result(9 downto 8),
      DIC(1 downto 0) => Result(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(1),
      O => ResultSrc(0)
    );
rf_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(1),
      O => rf_reg_r1_0_31_6_11_i_9_0
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(21 downto 17),
      ADDRB(4 downto 0) => Instr(21 downto 17),
      ADDRC(4 downto 0) => Instr(21 downto 17),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(1 downto 0),
      DIB(1 downto 0) => Result(3 downto 2),
      DIC(1 downto 0) => Result(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(1 downto 0),
      DOB(1 downto 0) => \^rd20\(3 downto 2),
      DOC(1 downto 0) => \^rd20\(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(21 downto 17),
      ADDRB(4 downto 0) => Instr(21 downto 17),
      ADDRC(4 downto 0) => Instr(21 downto 17),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(13 downto 12),
      DIB(1 downto 0) => Result(15 downto 14),
      DIC(1 downto 0) => Result(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(13 downto 12),
      DOB(1 downto 0) => rd20_0(15 downto 14),
      DOC(1 downto 0) => rd20_0(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(21 downto 17),
      ADDRB(4 downto 0) => Instr(21 downto 17),
      ADDRC(4 downto 0) => Instr(21 downto 17),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(19 downto 18),
      DIB(1 downto 0) => Result(21 downto 20),
      DIC(1 downto 0) => Result(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(19 downto 18),
      DOB(1 downto 0) => rd20_0(21 downto 20),
      DOC(1 downto 0) => rd20_0(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(21 downto 17),
      ADDRB(4 downto 0) => Instr(21 downto 17),
      ADDRC(4 downto 0) => Instr(21 downto 17),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(25 downto 24),
      DIB(1 downto 0) => Result(27 downto 26),
      DIC(1 downto 0) => Result(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20_0(25 downto 24),
      DOB(1 downto 0) => rd20_0(27 downto 26),
      DOC(1 downto 0) => rd20_0(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => Result(30),
      DPO => rd20_0(30),
      DPRA0 => Instr(17),
      DPRA1 => Instr(18),
      DPRA2 => Instr(19),
      DPRA3 => Instr(20),
      DPRA4 => Instr(21),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWrite
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      A4 => Instr(8),
      D => Result(31),
      DPO => rd20_0(31),
      DPRA0 => Instr(17),
      DPRA1 => Instr(18),
      DPRA2 => Instr(19),
      DPRA3 => Instr(20),
      DPRA4 => Instr(21),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(21 downto 17),
      ADDRB(4 downto 0) => Instr(21 downto 17),
      ADDRC(4 downto 0) => Instr(21 downto 17),
      ADDRD(4 downto 0) => Instr(8 downto 4),
      DIA(1 downto 0) => Result(7 downto 6),
      DIB(1 downto 0) => Result(9 downto 8),
      DIC(1 downto 0) => Result(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd20\(7 downto 6),
      DOB(1 downto 0) => rd20_0(9 downto 8),
      DOC(1 downto 0) => rd20_0(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
\sum__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(7),
      O => \^clk_32\
    );
\sum__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(6),
      O => \^clk_40\
    );
\sum__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(5),
      O => \^clk_25\
    );
\sum__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(4),
      O => \^clk_44\
    );
\sum__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(7),
      I1 => \addressM[0]\,
      I2 => SrcB(7),
      I3 => ALUControl(0),
      O => clk_50(3)
    );
\sum__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(6),
      I1 => \addressM[0]\,
      I2 => SrcB(6),
      I3 => ALUControl(0),
      O => clk_50(2)
    );
\sum__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(5),
      I1 => \addressM[0]\,
      I2 => SrcB(5),
      I3 => ALUControl(0),
      O => clk_50(1)
    );
\sum__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(4),
      I1 => \addressM[0]\,
      I2 => SrcB(4),
      I3 => ALUControl(0),
      O => clk_50(0)
    );
\sum__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(11),
      O => \^clk_27\
    );
\sum__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(10),
      O => \^clk_34\
    );
\sum__0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(9),
      O => \^clk_19\
    );
\sum__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(8),
      O => \^clk_47\
    );
\sum__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(11),
      I1 => \addressM[0]\,
      I2 => SrcB(11),
      I3 => ALUControl(0),
      O => clk_51(3)
    );
\sum__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(10),
      I1 => \addressM[0]\,
      I2 => SrcB(10),
      I3 => ALUControl(0),
      O => clk_51(2)
    );
\sum__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(9),
      I1 => \addressM[0]\,
      I2 => SrcB(9),
      I3 => ALUControl(0),
      O => clk_51(1)
    );
\sum__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(8),
      I1 => \addressM[0]\,
      I2 => SrcB(8),
      I3 => ALUControl(0),
      O => clk_51(0)
    );
\sum__0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(15),
      O => \^clk_30\
    );
\sum__0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(14),
      O => \^clk_38\
    );
\sum__0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(13),
      O => \^clk_23\
    );
\sum__0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(12),
      O => \^clk_42\
    );
\sum__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(15),
      I1 => \addressM[0]\,
      I2 => SrcB(15),
      I3 => ALUControl(0),
      O => clk_52(3)
    );
\sum__0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(14),
      I1 => \addressM[0]\,
      I2 => SrcB(14),
      I3 => ALUControl(0),
      O => clk_52(2)
    );
\sum__0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(13),
      I1 => \addressM[0]\,
      I2 => SrcB(13),
      I3 => ALUControl(0),
      O => clk_52(1)
    );
\sum__0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(12),
      I1 => \addressM[0]\,
      I2 => SrcB(12),
      I3 => ALUControl(0),
      O => clk_52(0)
    );
\sum__0_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(19),
      O => \^clk_28\
    );
\sum__0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(18),
      O => \^clk_35\
    );
\sum__0_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(17),
      O => \^clk_20\
    );
\sum__0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(16),
      O => \^clk_45\
    );
\sum__0_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(19),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(1),
      I3 => ALUControl(0),
      O => clk_53(3)
    );
\sum__0_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(18),
      I1 => \addressM[0]\,
      I2 => SrcB(18),
      I3 => ALUControl(0),
      O => clk_53(2)
    );
\sum__0_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(17),
      I1 => \addressM[0]\,
      I2 => SrcB(17),
      I3 => ALUControl(0),
      O => clk_53(1)
    );
\sum__0_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(16),
      I1 => \addressM[0]\,
      I2 => SrcB(16),
      I3 => ALUControl(0),
      O => clk_53(0)
    );
\sum__0_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(23),
      O => \^clk_31\
    );
\sum__0_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(22),
      O => \^clk_39\
    );
\sum__0_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(21),
      O => \^clk_24\
    );
\sum__0_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(20),
      O => \^clk_43\
    );
\sum__0_carry__4_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(23),
      I1 => \addressM[0]\,
      I2 => SrcB(23),
      I3 => ALUControl(0),
      O => clk_54(3)
    );
\sum__0_carry__4_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(22),
      I1 => \addressM[0]\,
      I2 => SrcB(22),
      I3 => ALUControl(0),
      O => clk_54(2)
    );
\sum__0_carry__4_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(21),
      I1 => \addressM[0]\,
      I2 => SrcB(21),
      I3 => ALUControl(0),
      O => clk_54(1)
    );
\sum__0_carry__4_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(20),
      I1 => \addressM[0]\,
      I2 => SrcB(20),
      I3 => ALUControl(0),
      O => clk_54(0)
    );
\sum__0_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(27),
      O => \^clk_26\
    );
\sum__0_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(26),
      O => \^clk_33\
    );
\sum__0_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(25),
      O => \^clk_18\
    );
\sum__0_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(24),
      O => \^clk_46\
    );
\sum__0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(27),
      I1 => \addressM[0]\,
      I2 => SrcB(27),
      I3 => ALUControl(0),
      O => clk_55(3)
    );
\sum__0_carry__5_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(26),
      I1 => \addressM[0]\,
      I2 => SrcB(26),
      I3 => ALUControl(0),
      O => clk_55(2)
    );
\sum__0_carry__5_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(25),
      I1 => \addressM[0]\,
      I2 => SrcB(25),
      I3 => ALUControl(0),
      O => clk_55(1)
    );
\sum__0_carry__5_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(24),
      I1 => \addressM[0]\,
      I2 => SrcB(24),
      I3 => ALUControl(0),
      O => clk_55(0)
    );
\sum__0_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(30),
      O => \^clk_37\
    );
\sum__0_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(29),
      O => \^clk_22\
    );
\sum__0_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(28),
      O => \^clk_41\
    );
\sum__0_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999A55566665AAA"
    )
        port map (
      I0 => \^clk_1\,
      I1 => Instr(28),
      I2 => \rd21__3\,
      I3 => rd20_0(31),
      I4 => ALUSrc,
      I5 => ALUControl(0),
      O => clk_0(3)
    );
\sum__0_carry__6_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(30),
      I1 => \addressM[0]\,
      I2 => SrcB(30),
      I3 => ALUControl(0),
      O => clk_0(2)
    );
\sum__0_carry__6_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(29),
      I1 => \addressM[0]\,
      I2 => SrcB(29),
      I3 => ALUControl(0),
      O => clk_0(1)
    );
\sum__0_carry__6_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(28),
      I1 => \addressM[0]\,
      I2 => SrcB(28),
      I3 => ALUControl(0),
      O => clk_0(0)
    );
\sum__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ALUControl(0),
      I1 => SrcB(0),
      O => \ALUResult[0]_INST_0_i_6_0\
    );
\sum__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(3),
      O => \^clk_29\
    );
\sum__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(2),
      O => \^clk_36\
    );
\sum__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(1),
      O => \^clk_21\
    );
\sum__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(15),
      I2 => Instr(13),
      I3 => Instr(12),
      I4 => Instr(14),
      I5 => rd10(0),
      O => \^clk_48\
    );
\sum__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(3),
      I1 => \addressM[0]\,
      I2 => SrcB(3),
      I3 => ALUControl(0),
      O => S(3)
    );
\sum__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(2),
      I1 => \addressM[0]\,
      I2 => SrcB(2),
      I3 => ALUControl(0),
      O => S(2)
    );
\sum__0_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(1),
      I1 => \addressM[0]\,
      I2 => \^clk_2\(0),
      I3 => ALUControl(0),
      O => S(1)
    );
\sum__0_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd10(0),
      I1 => \addressM[0]\,
      I2 => ALUControl(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ALUResult[0]_INST_0_i_5\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[2]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[3]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[4]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[5]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[6]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[13]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[12]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3\ : out STD_LOGIC;
    \ALUResult[22]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[23]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[20]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[21]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[18]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[28]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[29]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[26]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[27]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[24]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[25]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[16]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[17]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[15]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[14]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[7]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[9]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[8]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[11]_INST_0_i_2\ : out STD_LOGIC;
    \ALUResult[10]_INST_0_i_2\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_datapath : entity is "datapath";
end design_1_top_0_0_datapath;

architecture STRUCTURE of design_1_top_0_0_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^aluresult[0]_inst_0_i_5\ : STD_LOGIC;
  signal \^aluresult[10]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[11]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[12]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[13]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[14]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[15]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[16]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[17]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[18]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[1]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[20]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[21]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[22]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[23]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[24]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[25]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[26]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[27]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[28]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[29]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[2]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3\ : STD_LOGIC;
  signal \^aluresult[3]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[4]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[5]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[6]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[7]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[8]_inst_0_i_2\ : STD_LOGIC;
  signal \^aluresult[9]_inst_0_i_2\ : STD_LOGIC;
  signal ALUSrc : STD_LOGIC;
  signal ImmExt : STD_LOGIC_VECTOR ( 19 downto 12 );
  signal ImmSrc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Negative : STD_LOGIC;
  signal PCNext : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCTargetI : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ReadDataOut : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ResultSrc : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SrcB : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal alu_n_32 : STD_LOGIC;
  signal alu_n_33 : STD_LOGIC;
  signal alu_n_36 : STD_LOGIC;
  signal alu_n_37 : STD_LOGIC;
  signal alu_n_38 : STD_LOGIC;
  signal alu_n_39 : STD_LOGIC;
  signal alu_n_40 : STD_LOGIC;
  signal alu_n_41 : STD_LOGIC;
  signal alu_n_50 : STD_LOGIC;
  signal alu_n_51 : STD_LOGIC;
  signal alu_n_52 : STD_LOGIC;
  signal alu_n_53 : STD_LOGIC;
  signal alu_n_54 : STD_LOGIC;
  signal alu_n_55 : STD_LOGIC;
  signal alu_n_56 : STD_LOGIC;
  signal alu_n_57 : STD_LOGIC;
  signal alu_n_59 : STD_LOGIC;
  signal alu_n_60 : STD_LOGIC;
  signal alu_n_61 : STD_LOGIC;
  signal alu_n_62 : STD_LOGIC;
  signal alu_n_63 : STD_LOGIC;
  signal alu_n_64 : STD_LOGIC;
  signal alu_n_65 : STD_LOGIC;
  signal alu_n_66 : STD_LOGIC;
  signal alu_n_67 : STD_LOGIC;
  signal alu_n_76 : STD_LOGIC;
  signal alu_n_78 : STD_LOGIC;
  signal alu_n_79 : STD_LOGIC;
  signal alu_n_80 : STD_LOGIC;
  signal alu_n_81 : STD_LOGIC;
  signal alu_n_82 : STD_LOGIC;
  signal alu_n_83 : STD_LOGIC;
  signal alu_n_84 : STD_LOGIC;
  signal alu_n_88 : STD_LOGIC;
  signal alu_n_98 : STD_LOGIC;
  signal alu_n_99 : STD_LOGIC;
  signal \c/BControl__8\ : STD_LOGIC;
  signal \d30_carry__0_n_0\ : STD_LOGIC;
  signal \d30_carry__0_n_1\ : STD_LOGIC;
  signal \d30_carry__0_n_2\ : STD_LOGIC;
  signal \d30_carry__0_n_3\ : STD_LOGIC;
  signal \d30_carry__0_n_4\ : STD_LOGIC;
  signal \d30_carry__0_n_5\ : STD_LOGIC;
  signal \d30_carry__0_n_6\ : STD_LOGIC;
  signal \d30_carry__0_n_7\ : STD_LOGIC;
  signal \d30_carry__1_n_0\ : STD_LOGIC;
  signal \d30_carry__1_n_1\ : STD_LOGIC;
  signal \d30_carry__1_n_2\ : STD_LOGIC;
  signal \d30_carry__1_n_3\ : STD_LOGIC;
  signal \d30_carry__1_n_4\ : STD_LOGIC;
  signal \d30_carry__1_n_5\ : STD_LOGIC;
  signal \d30_carry__1_n_6\ : STD_LOGIC;
  signal \d30_carry__1_n_7\ : STD_LOGIC;
  signal \d30_carry__2_n_0\ : STD_LOGIC;
  signal \d30_carry__2_n_1\ : STD_LOGIC;
  signal \d30_carry__2_n_2\ : STD_LOGIC;
  signal \d30_carry__2_n_3\ : STD_LOGIC;
  signal \d30_carry__2_n_4\ : STD_LOGIC;
  signal \d30_carry__2_n_5\ : STD_LOGIC;
  signal \d30_carry__2_n_6\ : STD_LOGIC;
  signal \d30_carry__2_n_7\ : STD_LOGIC;
  signal \d30_carry__3_n_0\ : STD_LOGIC;
  signal \d30_carry__3_n_1\ : STD_LOGIC;
  signal \d30_carry__3_n_2\ : STD_LOGIC;
  signal \d30_carry__3_n_3\ : STD_LOGIC;
  signal \d30_carry__3_n_4\ : STD_LOGIC;
  signal \d30_carry__3_n_5\ : STD_LOGIC;
  signal \d30_carry__3_n_6\ : STD_LOGIC;
  signal \d30_carry__3_n_7\ : STD_LOGIC;
  signal \d30_carry__4_n_0\ : STD_LOGIC;
  signal \d30_carry__4_n_1\ : STD_LOGIC;
  signal \d30_carry__4_n_2\ : STD_LOGIC;
  signal \d30_carry__4_n_3\ : STD_LOGIC;
  signal \d30_carry__4_n_4\ : STD_LOGIC;
  signal \d30_carry__4_n_5\ : STD_LOGIC;
  signal \d30_carry__4_n_6\ : STD_LOGIC;
  signal \d30_carry__4_n_7\ : STD_LOGIC;
  signal \d30_carry__5_n_0\ : STD_LOGIC;
  signal \d30_carry__5_n_1\ : STD_LOGIC;
  signal \d30_carry__5_n_2\ : STD_LOGIC;
  signal \d30_carry__5_n_3\ : STD_LOGIC;
  signal \d30_carry__5_n_4\ : STD_LOGIC;
  signal \d30_carry__5_n_5\ : STD_LOGIC;
  signal \d30_carry__5_n_6\ : STD_LOGIC;
  signal \d30_carry__5_n_7\ : STD_LOGIC;
  signal \d30_carry__6_n_1\ : STD_LOGIC;
  signal \d30_carry__6_n_2\ : STD_LOGIC;
  signal \d30_carry__6_n_3\ : STD_LOGIC;
  signal \d30_carry__6_n_4\ : STD_LOGIC;
  signal \d30_carry__6_n_5\ : STD_LOGIC;
  signal \d30_carry__6_n_6\ : STD_LOGIC;
  signal \d30_carry__6_n_7\ : STD_LOGIC;
  signal d30_carry_n_0 : STD_LOGIC;
  signal d30_carry_n_1 : STD_LOGIC;
  signal d30_carry_n_2 : STD_LOGIC;
  signal d30_carry_n_3 : STD_LOGIC;
  signal d30_carry_n_4 : STD_LOGIC;
  signal d30_carry_n_5 : STD_LOGIC;
  signal d30_carry_n_6 : STD_LOGIC;
  signal d30_carry_n_7 : STD_LOGIC;
  signal pcreg_n_100 : STD_LOGIC;
  signal pcreg_n_101 : STD_LOGIC;
  signal pcreg_n_102 : STD_LOGIC;
  signal pcreg_n_103 : STD_LOGIC;
  signal pcreg_n_104 : STD_LOGIC;
  signal pcreg_n_105 : STD_LOGIC;
  signal pcreg_n_106 : STD_LOGIC;
  signal pcreg_n_107 : STD_LOGIC;
  signal pcreg_n_108 : STD_LOGIC;
  signal pcreg_n_109 : STD_LOGIC;
  signal pcreg_n_110 : STD_LOGIC;
  signal pcreg_n_111 : STD_LOGIC;
  signal pcreg_n_112 : STD_LOGIC;
  signal pcreg_n_113 : STD_LOGIC;
  signal pcreg_n_114 : STD_LOGIC;
  signal pcreg_n_115 : STD_LOGIC;
  signal pcreg_n_116 : STD_LOGIC;
  signal pcreg_n_39 : STD_LOGIC;
  signal pcreg_n_40 : STD_LOGIC;
  signal pcreg_n_41 : STD_LOGIC;
  signal pcreg_n_42 : STD_LOGIC;
  signal pcreg_n_43 : STD_LOGIC;
  signal pcreg_n_44 : STD_LOGIC;
  signal pcreg_n_45 : STD_LOGIC;
  signal pcreg_n_46 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_48 : STD_LOGIC;
  signal pcreg_n_49 : STD_LOGIC;
  signal pcreg_n_50 : STD_LOGIC;
  signal pcreg_n_51 : STD_LOGIC;
  signal pcreg_n_52 : STD_LOGIC;
  signal pcreg_n_58 : STD_LOGIC;
  signal pcreg_n_59 : STD_LOGIC;
  signal pcreg_n_60 : STD_LOGIC;
  signal pcreg_n_61 : STD_LOGIC;
  signal pcreg_n_62 : STD_LOGIC;
  signal pcreg_n_63 : STD_LOGIC;
  signal pcreg_n_64 : STD_LOGIC;
  signal pcreg_n_65 : STD_LOGIC;
  signal pcreg_n_66 : STD_LOGIC;
  signal pcreg_n_67 : STD_LOGIC;
  signal pcreg_n_68 : STD_LOGIC;
  signal pcreg_n_69 : STD_LOGIC;
  signal pcreg_n_70 : STD_LOGIC;
  signal pcreg_n_71 : STD_LOGIC;
  signal pcreg_n_72 : STD_LOGIC;
  signal pcreg_n_73 : STD_LOGIC;
  signal pcreg_n_74 : STD_LOGIC;
  signal pcreg_n_75 : STD_LOGIC;
  signal pcreg_n_76 : STD_LOGIC;
  signal pcreg_n_77 : STD_LOGIC;
  signal pcreg_n_78 : STD_LOGIC;
  signal pcreg_n_79 : STD_LOGIC;
  signal pcreg_n_80 : STD_LOGIC;
  signal pcreg_n_81 : STD_LOGIC;
  signal pcreg_n_82 : STD_LOGIC;
  signal pcreg_n_83 : STD_LOGIC;
  signal pcreg_n_84 : STD_LOGIC;
  signal pcreg_n_85 : STD_LOGIC;
  signal pcreg_n_86 : STD_LOGIC;
  signal pcreg_n_87 : STD_LOGIC;
  signal pcreg_n_88 : STD_LOGIC;
  signal pcreg_n_89 : STD_LOGIC;
  signal pcreg_n_90 : STD_LOGIC;
  signal pcreg_n_91 : STD_LOGIC;
  signal pcreg_n_92 : STD_LOGIC;
  signal pcreg_n_93 : STD_LOGIC;
  signal pcreg_n_94 : STD_LOGIC;
  signal pcreg_n_95 : STD_LOGIC;
  signal pcreg_n_96 : STD_LOGIC;
  signal pcreg_n_97 : STD_LOGIC;
  signal pcreg_n_98 : STD_LOGIC;
  signal pcreg_n_99 : STD_LOGIC;
  signal \rd11__3\ : STD_LOGIC;
  signal rd20 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd21__3\ : STD_LOGIC;
  signal rf_n_10 : STD_LOGIC;
  signal rf_n_109 : STD_LOGIC;
  signal rf_n_11 : STD_LOGIC;
  signal rf_n_110 : STD_LOGIC;
  signal rf_n_111 : STD_LOGIC;
  signal rf_n_112 : STD_LOGIC;
  signal rf_n_113 : STD_LOGIC;
  signal rf_n_114 : STD_LOGIC;
  signal rf_n_115 : STD_LOGIC;
  signal rf_n_12 : STD_LOGIC;
  signal rf_n_126 : STD_LOGIC;
  signal rf_n_127 : STD_LOGIC;
  signal rf_n_128 : STD_LOGIC;
  signal rf_n_129 : STD_LOGIC;
  signal rf_n_13 : STD_LOGIC;
  signal rf_n_134 : STD_LOGIC;
  signal rf_n_135 : STD_LOGIC;
  signal rf_n_136 : STD_LOGIC;
  signal rf_n_137 : STD_LOGIC;
  signal rf_n_138 : STD_LOGIC;
  signal rf_n_139 : STD_LOGIC;
  signal rf_n_14 : STD_LOGIC;
  signal rf_n_140 : STD_LOGIC;
  signal rf_n_141 : STD_LOGIC;
  signal rf_n_142 : STD_LOGIC;
  signal rf_n_143 : STD_LOGIC;
  signal rf_n_144 : STD_LOGIC;
  signal rf_n_145 : STD_LOGIC;
  signal rf_n_146 : STD_LOGIC;
  signal rf_n_147 : STD_LOGIC;
  signal rf_n_148 : STD_LOGIC;
  signal rf_n_149 : STD_LOGIC;
  signal rf_n_15 : STD_LOGIC;
  signal rf_n_150 : STD_LOGIC;
  signal rf_n_151 : STD_LOGIC;
  signal rf_n_152 : STD_LOGIC;
  signal rf_n_153 : STD_LOGIC;
  signal rf_n_154 : STD_LOGIC;
  signal rf_n_155 : STD_LOGIC;
  signal rf_n_156 : STD_LOGIC;
  signal rf_n_16 : STD_LOGIC;
  signal rf_n_172 : STD_LOGIC;
  signal rf_n_173 : STD_LOGIC;
  signal rf_n_175 : STD_LOGIC;
  signal rf_n_176 : STD_LOGIC;
  signal rf_n_177 : STD_LOGIC;
  signal rf_n_178 : STD_LOGIC;
  signal rf_n_179 : STD_LOGIC;
  signal rf_n_180 : STD_LOGIC;
  signal rf_n_181 : STD_LOGIC;
  signal rf_n_182 : STD_LOGIC;
  signal rf_n_183 : STD_LOGIC;
  signal rf_n_184 : STD_LOGIC;
  signal rf_n_185 : STD_LOGIC;
  signal rf_n_186 : STD_LOGIC;
  signal rf_n_187 : STD_LOGIC;
  signal rf_n_188 : STD_LOGIC;
  signal rf_n_189 : STD_LOGIC;
  signal rf_n_19 : STD_LOGIC;
  signal rf_n_190 : STD_LOGIC;
  signal rf_n_191 : STD_LOGIC;
  signal rf_n_192 : STD_LOGIC;
  signal rf_n_193 : STD_LOGIC;
  signal rf_n_194 : STD_LOGIC;
  signal rf_n_195 : STD_LOGIC;
  signal rf_n_196 : STD_LOGIC;
  signal rf_n_197 : STD_LOGIC;
  signal rf_n_198 : STD_LOGIC;
  signal rf_n_199 : STD_LOGIC;
  signal rf_n_20 : STD_LOGIC;
  signal rf_n_200 : STD_LOGIC;
  signal rf_n_201 : STD_LOGIC;
  signal rf_n_202 : STD_LOGIC;
  signal rf_n_203 : STD_LOGIC;
  signal rf_n_204 : STD_LOGIC;
  signal rf_n_205 : STD_LOGIC;
  signal rf_n_206 : STD_LOGIC;
  signal rf_n_207 : STD_LOGIC;
  signal rf_n_208 : STD_LOGIC;
  signal rf_n_209 : STD_LOGIC;
  signal rf_n_21 : STD_LOGIC;
  signal rf_n_210 : STD_LOGIC;
  signal rf_n_211 : STD_LOGIC;
  signal rf_n_212 : STD_LOGIC;
  signal rf_n_213 : STD_LOGIC;
  signal rf_n_214 : STD_LOGIC;
  signal rf_n_215 : STD_LOGIC;
  signal rf_n_216 : STD_LOGIC;
  signal rf_n_217 : STD_LOGIC;
  signal rf_n_218 : STD_LOGIC;
  signal rf_n_219 : STD_LOGIC;
  signal rf_n_22 : STD_LOGIC;
  signal rf_n_220 : STD_LOGIC;
  signal rf_n_221 : STD_LOGIC;
  signal rf_n_222 : STD_LOGIC;
  signal rf_n_223 : STD_LOGIC;
  signal rf_n_224 : STD_LOGIC;
  signal rf_n_225 : STD_LOGIC;
  signal rf_n_226 : STD_LOGIC;
  signal rf_n_227 : STD_LOGIC;
  signal rf_n_228 : STD_LOGIC;
  signal rf_n_229 : STD_LOGIC;
  signal rf_n_23 : STD_LOGIC;
  signal rf_n_230 : STD_LOGIC;
  signal rf_n_231 : STD_LOGIC;
  signal rf_n_232 : STD_LOGIC;
  signal rf_n_233 : STD_LOGIC;
  signal rf_n_234 : STD_LOGIC;
  signal rf_n_235 : STD_LOGIC;
  signal rf_n_236 : STD_LOGIC;
  signal rf_n_24 : STD_LOGIC;
  signal rf_n_25 : STD_LOGIC;
  signal rf_n_26 : STD_LOGIC;
  signal rf_n_27 : STD_LOGIC;
  signal rf_n_28 : STD_LOGIC;
  signal rf_n_29 : STD_LOGIC;
  signal rf_n_30 : STD_LOGIC;
  signal rf_n_31 : STD_LOGIC;
  signal rf_n_32 : STD_LOGIC;
  signal rf_n_33 : STD_LOGIC;
  signal rf_n_34 : STD_LOGIC;
  signal rf_n_35 : STD_LOGIC;
  signal rf_n_36 : STD_LOGIC;
  signal rf_n_37 : STD_LOGIC;
  signal rf_n_38 : STD_LOGIC;
  signal rf_n_39 : STD_LOGIC;
  signal rf_n_40 : STD_LOGIC;
  signal rf_n_41 : STD_LOGIC;
  signal rf_n_42 : STD_LOGIC;
  signal rf_n_43 : STD_LOGIC;
  signal rf_n_44 : STD_LOGIC;
  signal rf_n_45 : STD_LOGIC;
  signal rf_n_46 : STD_LOGIC;
  signal rf_n_71 : STD_LOGIC;
  signal rf_n_72 : STD_LOGIC;
  signal rf_n_73 : STD_LOGIC;
  signal rf_n_74 : STD_LOGIC;
  signal rf_n_75 : STD_LOGIC;
  signal rf_n_76 : STD_LOGIC;
  signal rf_n_77 : STD_LOGIC;
  signal rf_n_78 : STD_LOGIC;
  signal rf_n_8 : STD_LOGIC;
  signal rf_n_9 : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \NLW_d30_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of d30_carry : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \d30_carry__6\ : label is 35;
begin
  \ALUResult[0]_INST_0_i_5\ <= \^aluresult[0]_inst_0_i_5\;
  \ALUResult[10]_INST_0_i_2\ <= \^aluresult[10]_inst_0_i_2\;
  \ALUResult[11]_INST_0_i_2\ <= \^aluresult[11]_inst_0_i_2\;
  \ALUResult[12]_INST_0_i_2\ <= \^aluresult[12]_inst_0_i_2\;
  \ALUResult[13]_INST_0_i_2\ <= \^aluresult[13]_inst_0_i_2\;
  \ALUResult[14]_INST_0_i_2\ <= \^aluresult[14]_inst_0_i_2\;
  \ALUResult[15]_INST_0_i_2\ <= \^aluresult[15]_inst_0_i_2\;
  \ALUResult[16]_INST_0_i_2\ <= \^aluresult[16]_inst_0_i_2\;
  \ALUResult[17]_INST_0_i_2\ <= \^aluresult[17]_inst_0_i_2\;
  \ALUResult[18]_INST_0_i_2\ <= \^aluresult[18]_inst_0_i_2\;
  \ALUResult[19]_INST_0_i_2\ <= \^aluresult[19]_inst_0_i_2\;
  \ALUResult[1]_INST_0_i_2\ <= \^aluresult[1]_inst_0_i_2\;
  \ALUResult[20]_INST_0_i_2\ <= \^aluresult[20]_inst_0_i_2\;
  \ALUResult[21]_INST_0_i_2\ <= \^aluresult[21]_inst_0_i_2\;
  \ALUResult[22]_INST_0_i_2\ <= \^aluresult[22]_inst_0_i_2\;
  \ALUResult[23]_INST_0_i_2\ <= \^aluresult[23]_inst_0_i_2\;
  \ALUResult[24]_INST_0_i_2\ <= \^aluresult[24]_inst_0_i_2\;
  \ALUResult[25]_INST_0_i_2\ <= \^aluresult[25]_inst_0_i_2\;
  \ALUResult[26]_INST_0_i_2\ <= \^aluresult[26]_inst_0_i_2\;
  \ALUResult[27]_INST_0_i_2\ <= \^aluresult[27]_inst_0_i_2\;
  \ALUResult[28]_INST_0_i_2\ <= \^aluresult[28]_inst_0_i_2\;
  \ALUResult[29]_INST_0_i_2\ <= \^aluresult[29]_inst_0_i_2\;
  \ALUResult[2]_INST_0_i_2\ <= \^aluresult[2]_inst_0_i_2\;
  \ALUResult[30]_INST_0_i_2\ <= \^aluresult[30]_inst_0_i_2\;
  \ALUResult[31]_INST_0_i_3\ <= \^aluresult[31]_inst_0_i_3\;
  \ALUResult[3]_INST_0_i_2\ <= \^aluresult[3]_inst_0_i_2\;
  \ALUResult[4]_INST_0_i_2\ <= \^aluresult[4]_inst_0_i_2\;
  \ALUResult[5]_INST_0_i_2\ <= \^aluresult[5]_inst_0_i_2\;
  \ALUResult[6]_INST_0_i_2\ <= \^aluresult[6]_inst_0_i_2\;
  \ALUResult[7]_INST_0_i_2\ <= \^aluresult[7]_inst_0_i_2\;
  \ALUResult[8]_INST_0_i_2\ <= \^aluresult[8]_inst_0_i_2\;
  \ALUResult[9]_INST_0_i_2\ <= \^aluresult[9]_inst_0_i_2\;
  Q(31 downto 0) <= \^q\(31 downto 0);
alu: entity work.design_1_top_0_0_alu
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(2 downto 0) => \ALUControl__0\(3 downto 1),
      \ALUResult[0]_INST_0_i_11\ => rf_n_235,
      \ALUResult[0]_INST_0_i_11_0\ => rf_n_137,
      \ALUResult[0]_INST_0_i_11_1\ => rf_n_144,
      \ALUResult[0]_INST_0_i_11_2\ => rf_n_156,
      \ALUResult[0]_INST_0_i_1_0\(3) => rf_n_39,
      \ALUResult[0]_INST_0_i_1_0\(2) => rf_n_40,
      \ALUResult[0]_INST_0_i_1_0\(1) => rf_n_41,
      \ALUResult[0]_INST_0_i_1_0\(0) => rf_n_42,
      \ALUResult[0]_INST_0_i_1_1\(3) => rf_n_43,
      \ALUResult[0]_INST_0_i_1_1\(2) => rf_n_44,
      \ALUResult[0]_INST_0_i_1_1\(1) => rf_n_45,
      \ALUResult[0]_INST_0_i_1_1\(0) => rf_n_46,
      \ALUResult[0]_INST_0_i_5\ => \^aluresult[0]_inst_0_i_5\,
      \ALUResult[12]_INST_0_i_6\ => rf_n_138,
      \ALUResult[12]_INST_0_i_6_0\ => rf_n_146,
      \ALUResult[12]_INST_0_i_6_1\ => rf_n_127,
      \ALUResult[12]_INST_0_i_6_2\ => rf_n_150,
      \ALUResult[12]_INST_0_i_6_3\(3) => rf_n_187,
      \ALUResult[12]_INST_0_i_6_3\(2) => rf_n_188,
      \ALUResult[12]_INST_0_i_6_3\(1) => rf_n_189,
      \ALUResult[12]_INST_0_i_6_3\(0) => rf_n_190,
      \ALUResult[16]_INST_0_i_6\ => rf_n_143,
      \ALUResult[16]_INST_0_i_6_0\ => rf_n_114,
      \ALUResult[16]_INST_0_i_6_1\ => rf_n_153,
      \ALUResult[16]_INST_0_i_6_2\(3) => rf_n_191,
      \ALUResult[16]_INST_0_i_6_2\(2) => rf_n_192,
      \ALUResult[16]_INST_0_i_6_2\(1) => rf_n_193,
      \ALUResult[16]_INST_0_i_6_2\(0) => rf_n_194,
      \ALUResult[19]_INST_0_i_2_0\ => \^aluresult[19]_inst_0_i_2\,
      \ALUResult[1]_INST_0_i_2_0\ => \^aluresult[1]_inst_0_i_2\,
      \ALUResult[20]_INST_0_i_6\ => rf_n_139,
      \ALUResult[20]_INST_0_i_6_0\ => rf_n_147,
      \ALUResult[20]_INST_0_i_6_1\ => rf_n_128,
      \ALUResult[20]_INST_0_i_6_2\ => rf_n_151,
      \ALUResult[20]_INST_0_i_6_3\(3) => rf_n_195,
      \ALUResult[20]_INST_0_i_6_3\(2) => rf_n_196,
      \ALUResult[20]_INST_0_i_6_3\(1) => rf_n_197,
      \ALUResult[20]_INST_0_i_6_3\(0) => rf_n_198,
      \ALUResult[24]_INST_0_i_6\ => rf_n_134,
      \ALUResult[24]_INST_0_i_6_0\ => rf_n_141,
      \ALUResult[24]_INST_0_i_6_1\ => rf_n_112,
      \ALUResult[24]_INST_0_i_6_2\ => rf_n_154,
      \ALUResult[24]_INST_0_i_6_3\(3) => rf_n_199,
      \ALUResult[24]_INST_0_i_6_3\(2) => rf_n_200,
      \ALUResult[24]_INST_0_i_6_3\(1) => rf_n_201,
      \ALUResult[24]_INST_0_i_6_3\(0) => rf_n_202,
      \ALUResult[28]_INST_0_i_6\ => rf_n_145,
      \ALUResult[28]_INST_0_i_6_0\ => rf_n_126,
      \ALUResult[28]_INST_0_i_6_1\ => rf_n_149,
      \ALUResult[28]_INST_0_i_6_2\(3) => rf_n_8,
      \ALUResult[28]_INST_0_i_6_2\(2) => rf_n_9,
      \ALUResult[28]_INST_0_i_6_2\(1) => rf_n_10,
      \ALUResult[28]_INST_0_i_6_2\(0) => rf_n_11,
      \ALUResult[2]_INST_0\ => alu_n_88,
      \ALUResult[4]_INST_0_i_6\ => rf_n_140,
      \ALUResult[4]_INST_0_i_6_0\ => rf_n_148,
      \ALUResult[4]_INST_0_i_6_1\ => rf_n_129,
      \ALUResult[4]_INST_0_i_6_2\ => rf_n_152,
      \ALUResult[4]_INST_0_i_6_3\(3) => rf_n_179,
      \ALUResult[4]_INST_0_i_6_3\(2) => rf_n_180,
      \ALUResult[4]_INST_0_i_6_3\(1) => rf_n_181,
      \ALUResult[4]_INST_0_i_6_3\(0) => rf_n_182,
      \ALUResult[8]_INST_0_i_6\ => rf_n_135,
      \ALUResult[8]_INST_0_i_6_0\ => rf_n_142,
      \ALUResult[8]_INST_0_i_6_1\ => rf_n_113,
      \ALUResult[8]_INST_0_i_6_2\ => rf_n_155,
      \ALUResult[8]_INST_0_i_6_3\(3) => rf_n_183,
      \ALUResult[8]_INST_0_i_6_3\(2) => rf_n_184,
      \ALUResult[8]_INST_0_i_6_3\(1) => rf_n_185,
      \ALUResult[8]_INST_0_i_6_3\(0) => rf_n_186,
      ALUSrc => ALUSrc,
      \BControl__8\ => \c/BControl__8\,
      CO(0) => alu_n_32,
      D(2) => PCNext(19),
      D(1 downto 0) => PCNext(1 downto 0),
      DI(3) => rf_n_13,
      DI(2) => rf_n_14,
      DI(1) => rf_n_15,
      DI(0) => rf_n_16,
      ImmExt(7 downto 0) => ImmExt(19 downto 12),
      ImmSrc(1 downto 0) => ImmSrc(1 downto 0),
      Instr(17) => Instr(29),
      Instr(16 downto 4) => Instr(22 downto 10),
      Instr(3 downto 2) => Instr(5 downto 4),
      Instr(1 downto 0) => Instr(1 downto 0),
      O(0) => Negative,
      PCTargetI(2) => PCTargetI(19),
      PCTargetI(1 downto 0) => PCTargetI(1 downto 0),
      Q(1 downto 0) => \^q\(1 downto 0),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      ReadDataOut(7 downto 0) => ReadDataOut(15 downto 8),
      ResultSrc(0) => ResultSrc(0),
      S(3) => rf_n_175,
      S(2) => rf_n_176,
      S(1) => rf_n_177,
      S(0) => rf_n_178,
      SrcB(1) => SrcB(19),
      SrcB(0) => SrcB(1),
      WriteData(7 downto 0) => WriteData(7 downto 0),
      \addressM[0]\ => rf_n_173,
      \addressM[0]_0\ => rf_n_110,
      \addressM[0]_1\ => rf_n_111,
      \addressM[19]\ => rf_n_136,
      \addressM[19]_0\ => rf_n_172,
      \addressM[1]\ => rf_n_115,
      \addressM[1]_0\ => rf_n_109,
      \carried_carry__0_0\(3) => rf_n_231,
      \carried_carry__0_0\(2) => rf_n_232,
      \carried_carry__0_0\(1) => rf_n_233,
      \carried_carry__0_0\(0) => rf_n_234,
      \carried_carry__1_0\(3) => rf_n_227,
      \carried_carry__1_0\(2) => rf_n_228,
      \carried_carry__1_0\(1) => rf_n_229,
      \carried_carry__1_0\(0) => rf_n_230,
      \carried_carry__2_0\(3) => rf_n_223,
      \carried_carry__2_0\(2) => rf_n_224,
      \carried_carry__2_0\(1) => rf_n_225,
      \carried_carry__2_0\(0) => rf_n_226,
      \carried_carry__3_0\(3) => rf_n_219,
      \carried_carry__3_0\(2) => rf_n_220,
      \carried_carry__3_0\(1) => rf_n_221,
      \carried_carry__3_0\(0) => rf_n_222,
      \carried_carry__4_0\(3) => rf_n_215,
      \carried_carry__4_0\(2) => rf_n_216,
      \carried_carry__4_0\(1) => rf_n_217,
      \carried_carry__4_0\(0) => rf_n_218,
      \carried_carry__5_0\(3) => rf_n_211,
      \carried_carry__5_0\(2) => rf_n_212,
      \carried_carry__5_0\(1) => rf_n_213,
      \carried_carry__5_0\(0) => rf_n_214,
      \carried_carry__6_0\(3) => rf_n_207,
      \carried_carry__6_0\(2) => rf_n_208,
      \carried_carry__6_0\(1) => rf_n_209,
      \carried_carry__6_0\(0) => rf_n_210,
      \q[31]_i_4\ => rf_n_12,
      \q[31]_i_4_0\(3) => rf_n_203,
      \q[31]_i_4_0\(2) => rf_n_204,
      \q[31]_i_4_0\(1) => rf_n_205,
      \q[31]_i_4_0\(0) => rf_n_206,
      \q_reg[19]\(0) => PCPlus4(19),
      \rd11__3\ => \rd11__3\,
      rd20(7 downto 0) => rd20(7 downto 0),
      \rd21__3\ => \rd21__3\,
      \readDataM[0]\ => alu_n_33,
      \readDataM[16]\ => alu_n_65,
      \readDataM[16]_0\ => alu_n_76,
      \readDataM[17]\ => alu_n_66,
      \readDataM[17]_0\ => alu_n_78,
      \readDataM[18]\ => alu_n_56,
      \readDataM[18]_0\ => alu_n_79,
      \readDataM[19]\ => alu_n_57,
      \readDataM[19]_0\ => alu_n_80,
      \readDataM[1]\ => alu_n_36,
      \readDataM[20]\ => alu_n_54,
      \readDataM[20]_0\ => alu_n_81,
      \readDataM[21]\ => alu_n_55,
      \readDataM[21]_0\ => alu_n_82,
      \readDataM[22]\ => alu_n_52,
      \readDataM[22]_0\ => alu_n_83,
      \readDataM[23]\ => alu_n_53,
      \readDataM[23]_0\ => alu_n_84,
      \readDataM[24]\ => alu_n_63,
      \readDataM[25]\ => alu_n_64,
      \readDataM[26]\ => alu_n_61,
      \readDataM[27]\ => alu_n_62,
      \readDataM[28]\ => alu_n_59,
      \readDataM[29]\ => alu_n_60,
      \readDataM[2]\ => alu_n_37,
      \readDataM[30]\ => alu_n_50,
      \readDataM[31]\ => alu_n_51,
      \readDataM[3]\ => alu_n_38,
      \readDataM[4]\ => alu_n_39,
      \readDataM[5]\ => alu_n_40,
      \readDataM[6]\ => alu_n_41,
      \readDataM[7]\ => alu_n_67,
      \result0_inferred__6/i__carry__0_0\(3) => rf_n_19,
      \result0_inferred__6/i__carry__0_0\(2) => rf_n_20,
      \result0_inferred__6/i__carry__0_0\(1) => rf_n_21,
      \result0_inferred__6/i__carry__0_0\(0) => rf_n_22,
      \result0_inferred__6/i__carry__1_0\(3) => rf_n_23,
      \result0_inferred__6/i__carry__1_0\(2) => rf_n_24,
      \result0_inferred__6/i__carry__1_0\(1) => rf_n_25,
      \result0_inferred__6/i__carry__1_0\(0) => rf_n_26,
      \result0_inferred__6/i__carry__1_1\(3) => rf_n_27,
      \result0_inferred__6/i__carry__1_1\(2) => rf_n_28,
      \result0_inferred__6/i__carry__1_1\(1) => rf_n_29,
      \result0_inferred__6/i__carry__1_1\(0) => rf_n_30,
      \result0_inferred__6/i__carry__2_0\(3) => rf_n_31,
      \result0_inferred__6/i__carry__2_0\(2) => rf_n_32,
      \result0_inferred__6/i__carry__2_0\(1) => rf_n_33,
      \result0_inferred__6/i__carry__2_0\(0) => rf_n_34,
      \result0_inferred__6/i__carry__2_1\(3) => rf_n_35,
      \result0_inferred__6/i__carry__2_1\(2) => rf_n_36,
      \result0_inferred__6/i__carry__2_1\(1) => rf_n_37,
      \result0_inferred__6/i__carry__2_1\(0) => rf_n_38,
      rf_reg_r1_0_31_0_5_i_4 => \^aluresult[3]_inst_0_i_2\,
      rf_reg_r1_0_31_0_5_i_5 => \^aluresult[2]_inst_0_i_2\,
      rf_reg_r1_0_31_0_5_i_6 => \^aluresult[5]_inst_0_i_2\,
      rf_reg_r1_0_31_0_5_i_7 => \^aluresult[4]_inst_0_i_2\,
      rf_reg_r1_0_31_12_17_i_5 => \^aluresult[17]_inst_0_i_2\,
      rf_reg_r1_0_31_12_17_i_6 => \^aluresult[16]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23_i_2 => \^aluresult[18]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23_i_3 => \^aluresult[21]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23_i_4 => \^aluresult[20]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23_i_5 => \^aluresult[23]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23_i_6 => \^aluresult[22]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_1 => \^aluresult[25]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_2 => \^aluresult[24]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_3 => \^aluresult[27]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_4 => \^aluresult[26]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_5 => \^aluresult[29]_inst_0_i_2\,
      rf_reg_r1_0_31_24_29_i_6 => \^aluresult[28]_inst_0_i_2\,
      rf_reg_r1_0_31_30_31_i_1 => \^aluresult[30]_inst_0_i_2\,
      \rf_reg_r1_0_31_30_31_i_1__0\ => \^aluresult[31]_inst_0_i_3\,
      rf_reg_r1_0_31_6_11_i_1 => \^aluresult[7]_inst_0_i_2\,
      rf_reg_r1_0_31_6_11_i_2 => \^aluresult[6]_inst_0_i_2\,
      sum(30 downto 0) => sum(30 downto 0),
      \writeDataM[0]\ => rf_n_71,
      \writeDataM[1]\ => rf_n_72,
      \writeDataM[2]\ => rf_n_73,
      \writeDataM[3]\ => rf_n_74,
      \writeDataM[4]\ => rf_n_75,
      \writeDataM[5]\ => rf_n_76,
      \writeDataM[6]\ => rf_n_77,
      \writeDataM[7]\ => rf_n_78,
      y_carry_i_5_0 => alu_n_98,
      y_carry_i_5_1 => alu_n_99
    );
d30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => d30_carry_n_0,
      CO(2) => d30_carry_n_1,
      CO(1) => d30_carry_n_2,
      CO(0) => d30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => d30_carry_n_4,
      O(2) => d30_carry_n_5,
      O(1) => d30_carry_n_6,
      O(0) => d30_carry_n_7,
      S(3) => pcreg_n_87,
      S(2) => pcreg_n_88,
      S(1) => pcreg_n_89,
      S(0) => pcreg_n_90
    );
\d30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => d30_carry_n_0,
      CO(3) => \d30_carry__0_n_0\,
      CO(2) => \d30_carry__0_n_1\,
      CO(1) => \d30_carry__0_n_2\,
      CO(0) => \d30_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3) => \d30_carry__0_n_4\,
      O(2) => \d30_carry__0_n_5\,
      O(1) => \d30_carry__0_n_6\,
      O(0) => \d30_carry__0_n_7\,
      S(3) => pcreg_n_91,
      S(2) => pcreg_n_92,
      S(1) => pcreg_n_93,
      S(0) => pcreg_n_94
    );
\d30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__0_n_0\,
      CO(3) => \d30_carry__1_n_0\,
      CO(2) => \d30_carry__1_n_1\,
      CO(1) => \d30_carry__1_n_2\,
      CO(0) => \d30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3) => \d30_carry__1_n_4\,
      O(2) => \d30_carry__1_n_5\,
      O(1) => \d30_carry__1_n_6\,
      O(0) => \d30_carry__1_n_7\,
      S(3) => pcreg_n_95,
      S(2) => pcreg_n_96,
      S(1) => pcreg_n_97,
      S(0) => pcreg_n_98
    );
\d30_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__1_n_0\,
      CO(3) => \d30_carry__2_n_0\,
      CO(2) => \d30_carry__2_n_1\,
      CO(1) => \d30_carry__2_n_2\,
      CO(0) => \d30_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3) => \d30_carry__2_n_4\,
      O(2) => \d30_carry__2_n_5\,
      O(1) => \d30_carry__2_n_6\,
      O(0) => \d30_carry__2_n_7\,
      S(3) => pcreg_n_99,
      S(2) => pcreg_n_100,
      S(1) => pcreg_n_101,
      S(0) => pcreg_n_102
    );
\d30_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__2_n_0\,
      CO(3) => \d30_carry__3_n_0\,
      CO(2) => \d30_carry__3_n_1\,
      CO(1) => \d30_carry__3_n_2\,
      CO(0) => \d30_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(19 downto 16),
      O(3) => \d30_carry__3_n_4\,
      O(2) => \d30_carry__3_n_5\,
      O(1) => \d30_carry__3_n_6\,
      O(0) => \d30_carry__3_n_7\,
      S(3) => pcreg_n_103,
      S(2) => pcreg_n_104,
      S(1) => pcreg_n_105,
      S(0) => pcreg_n_106
    );
\d30_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__3_n_0\,
      CO(3) => \d30_carry__4_n_0\,
      CO(2) => \d30_carry__4_n_1\,
      CO(1) => \d30_carry__4_n_2\,
      CO(0) => \d30_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(23 downto 20),
      O(3) => \d30_carry__4_n_4\,
      O(2) => \d30_carry__4_n_5\,
      O(1) => \d30_carry__4_n_6\,
      O(0) => \d30_carry__4_n_7\,
      S(3) => pcreg_n_107,
      S(2) => pcreg_n_108,
      S(1) => pcreg_n_109,
      S(0) => pcreg_n_110
    );
\d30_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__4_n_0\,
      CO(3) => \d30_carry__5_n_0\,
      CO(2) => \d30_carry__5_n_1\,
      CO(1) => \d30_carry__5_n_2\,
      CO(0) => \d30_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(27 downto 24),
      O(3) => \d30_carry__5_n_4\,
      O(2) => \d30_carry__5_n_5\,
      O(1) => \d30_carry__5_n_6\,
      O(0) => \d30_carry__5_n_7\,
      S(3) => pcreg_n_111,
      S(2) => pcreg_n_112,
      S(1) => pcreg_n_113,
      S(0) => pcreg_n_114
    );
\d30_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \d30_carry__5_n_0\,
      CO(3) => \NLW_d30_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \d30_carry__6_n_1\,
      CO(1) => \d30_carry__6_n_2\,
      CO(0) => \d30_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(30 downto 28),
      O(3) => \d30_carry__6_n_4\,
      O(2) => \d30_carry__6_n_5\,
      O(1) => \d30_carry__6_n_6\,
      O(0) => \d30_carry__6_n_7\,
      S(3) => pcreg_n_43,
      S(2) => pcreg_n_44,
      S(1) => pcreg_n_45,
      S(0) => pcreg_n_46
    );
pcadd4: entity work.design_1_top_0_0_adder
     port map (
      Instr(2 downto 1) => Instr(3 downto 2),
      Instr(0) => Instr(0),
      O(0) => d30_carry_n_4,
      PCPlus4(28 downto 0) => PCPlus4(31 downto 3),
      Q(29 downto 0) => \^q\(31 downto 2),
      ReadDataOut(7 downto 0) => ReadDataOut(15 downto 8),
      ResultSrc(0) => ResultSrc(0),
      rf_reg_r1_0_31_0_5 => alu_n_38,
      rf_reg_r1_0_31_0_5_0 => alu_n_39,
      rf_reg_r1_0_31_0_5_1 => alu_n_40,
      rf_reg_r1_0_31_12_17(3) => \d30_carry__2_n_4\,
      rf_reg_r1_0_31_12_17(2) => \d30_carry__2_n_5\,
      rf_reg_r1_0_31_12_17(1) => \d30_carry__2_n_6\,
      rf_reg_r1_0_31_12_17(0) => \d30_carry__2_n_7\,
      rf_reg_r1_0_31_12_17_0 => \^aluresult[13]_inst_0_i_2\,
      rf_reg_r1_0_31_12_17_1 => \^aluresult[12]_inst_0_i_2\,
      rf_reg_r1_0_31_12_17_2 => alu_n_65,
      rf_reg_r1_0_31_12_17_3 => alu_n_66,
      rf_reg_r1_0_31_12_17_4 => \^aluresult[15]_inst_0_i_2\,
      rf_reg_r1_0_31_12_17_5 => \^aluresult[14]_inst_0_i_2\,
      rf_reg_r1_0_31_18_23(3) => \d30_carry__4_n_4\,
      rf_reg_r1_0_31_18_23(2) => \d30_carry__4_n_5\,
      rf_reg_r1_0_31_18_23(1) => \d30_carry__4_n_6\,
      rf_reg_r1_0_31_18_23(0) => \d30_carry__4_n_7\,
      rf_reg_r1_0_31_18_23_0 => alu_n_52,
      rf_reg_r1_0_31_18_23_1 => alu_n_53,
      rf_reg_r1_0_31_18_23_2 => alu_n_54,
      rf_reg_r1_0_31_18_23_3 => alu_n_55,
      rf_reg_r1_0_31_18_23_4(3) => \d30_carry__3_n_4\,
      rf_reg_r1_0_31_18_23_4(2) => \d30_carry__3_n_5\,
      rf_reg_r1_0_31_18_23_4(1) => \d30_carry__3_n_6\,
      rf_reg_r1_0_31_18_23_4(0) => \d30_carry__3_n_7\,
      rf_reg_r1_0_31_18_23_5 => alu_n_56,
      rf_reg_r1_0_31_18_23_6 => alu_n_57,
      rf_reg_r1_0_31_24_29(3) => \d30_carry__5_n_4\,
      rf_reg_r1_0_31_24_29(2) => \d30_carry__5_n_5\,
      rf_reg_r1_0_31_24_29(1) => \d30_carry__5_n_6\,
      rf_reg_r1_0_31_24_29(0) => \d30_carry__5_n_7\,
      rf_reg_r1_0_31_24_29_0 => alu_n_61,
      rf_reg_r1_0_31_24_29_1 => alu_n_62,
      rf_reg_r1_0_31_24_29_2 => alu_n_63,
      rf_reg_r1_0_31_24_29_3 => alu_n_64,
      rf_reg_r1_0_31_6_11(3) => \d30_carry__0_n_4\,
      rf_reg_r1_0_31_6_11(2) => \d30_carry__0_n_5\,
      rf_reg_r1_0_31_6_11(1) => \d30_carry__0_n_6\,
      rf_reg_r1_0_31_6_11(0) => \d30_carry__0_n_7\,
      rf_reg_r1_0_31_6_11_0 => alu_n_41,
      rf_reg_r1_0_31_6_11_1 => rf_n_236,
      rf_reg_r1_0_31_6_11_2 => alu_n_67,
      rf_reg_r1_0_31_6_11_3(3) => \d30_carry__1_n_4\,
      rf_reg_r1_0_31_6_11_3(2) => \d30_carry__1_n_5\,
      rf_reg_r1_0_31_6_11_3(1) => \d30_carry__1_n_6\,
      rf_reg_r1_0_31_6_11_3(0) => \d30_carry__1_n_7\,
      rf_reg_r1_0_31_6_11_4 => \^aluresult[9]_inst_0_i_2\,
      rf_reg_r1_0_31_6_11_5 => \^aluresult[8]_inst_0_i_2\,
      rf_reg_r1_0_31_6_11_6 => \^aluresult[11]_inst_0_i_2\,
      rf_reg_r1_0_31_6_11_7 => \^aluresult[10]_inst_0_i_2\,
      wd3(24 downto 0) => Result(27 downto 3)
    );
pcaddbranch: entity work.design_1_top_0_0_adder_0
     port map (
      ImmSrc(1 downto 0) => ImmSrc(1 downto 0),
      Instr(4 downto 0) => Instr(4 downto 0),
      PCTargetI(31 downto 0) => PCTargetI(31 downto 0),
      Q(30 downto 0) => \^q\(30 downto 0),
      S(3) => pcreg_n_59,
      S(2) => pcreg_n_60,
      S(1) => pcreg_n_61,
      S(0) => pcreg_n_62,
      \q[12]_i_2\(3) => pcreg_n_71,
      \q[12]_i_2\(2) => pcreg_n_72,
      \q[12]_i_2\(1) => pcreg_n_73,
      \q[12]_i_2\(0) => pcreg_n_74,
      \q[16]_i_2\(3) => pcreg_n_75,
      \q[16]_i_2\(2) => pcreg_n_76,
      \q[16]_i_2\(1) => pcreg_n_77,
      \q[16]_i_2\(0) => pcreg_n_78,
      \q[20]_i_2\(3) => pcreg_n_79,
      \q[20]_i_2\(2) => pcreg_n_80,
      \q[20]_i_2\(1) => pcreg_n_81,
      \q[20]_i_2\(0) => pcreg_n_82,
      \q[24]_i_2\(3) => pcreg_n_83,
      \q[24]_i_2\(2) => pcreg_n_84,
      \q[24]_i_2\(1) => pcreg_n_85,
      \q[24]_i_2\(0) => pcreg_n_86,
      \q[28]_i_2\(3) => pcreg_n_39,
      \q[28]_i_2\(2) => pcreg_n_40,
      \q[28]_i_2\(1) => pcreg_n_41,
      \q[28]_i_2\(0) => pcreg_n_42,
      \q[4]_i_2\(3) => pcreg_n_63,
      \q[4]_i_2\(2) => pcreg_n_64,
      \q[4]_i_2\(1) => pcreg_n_65,
      \q[4]_i_2\(0) => pcreg_n_66,
      \q[8]_i_2\(3) => pcreg_n_67,
      \q[8]_i_2\(2) => pcreg_n_68,
      \q[8]_i_2\(1) => pcreg_n_69,
      \q[8]_i_2\(0) => pcreg_n_70
    );
pcreg: entity work.design_1_top_0_0_flopenr
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(2 downto 0) => \ALUControl__0\(3 downto 1),
      \ALUResult[0]_INST_0_i_7_0\ => pcreg_n_58,
      \ALUResult[2]_INST_0_i_11_0\ => pcreg_n_47,
      \ALUResult[2]_INST_0_i_12_0\ => pcreg_n_48,
      \ALUResult[3]_INST_0_i_11_0\ => pcreg_n_49,
      \ALUResult[3]_INST_0_i_12_0\ => pcreg_n_50,
      \ALUResult[4]_INST_0_i_11_0\ => pcreg_n_51,
      \ALUResult[4]_INST_0_i_12_0\ => pcreg_n_52,
      ALUSrc => ALUSrc,
      D(31 downto 0) => PCNext(31 downto 0),
      ImmSrc(1 downto 0) => ImmSrc(1 downto 0),
      Instr(29 downto 0) => Instr(29 downto 0),
      O(2) => d30_carry_n_5,
      O(1) => d30_carry_n_6,
      O(0) => d30_carry_n_7,
      PCPlus4(3 downto 0) => PCPlus4(31 downto 28),
      PCReady => PCReady,
      Q(31 downto 0) => \^q\(31 downto 0),
      Result(6 downto 3) => Result(31 downto 28),
      Result(2 downto 0) => Result(2 downto 0),
      S(3) => pcreg_n_43,
      S(2) => pcreg_n_44,
      S(1) => pcreg_n_45,
      S(0) => pcreg_n_46,
      clk => clk,
      \d30_carry__1\ => alu_n_98,
      \d30_carry__3\ => alu_n_99,
      \q_reg[11]_0\(3) => pcreg_n_67,
      \q_reg[11]_0\(2) => pcreg_n_68,
      \q_reg[11]_0\(1) => pcreg_n_69,
      \q_reg[11]_0\(0) => pcreg_n_70,
      \q_reg[11]_1\(3) => pcreg_n_95,
      \q_reg[11]_1\(2) => pcreg_n_96,
      \q_reg[11]_1\(1) => pcreg_n_97,
      \q_reg[11]_1\(0) => pcreg_n_98,
      \q_reg[15]_0\(3) => pcreg_n_71,
      \q_reg[15]_0\(2) => pcreg_n_72,
      \q_reg[15]_0\(1) => pcreg_n_73,
      \q_reg[15]_0\(0) => pcreg_n_74,
      \q_reg[15]_1\(3) => pcreg_n_99,
      \q_reg[15]_1\(2) => pcreg_n_100,
      \q_reg[15]_1\(1) => pcreg_n_101,
      \q_reg[15]_1\(0) => pcreg_n_102,
      \q_reg[19]_0\(3) => pcreg_n_75,
      \q_reg[19]_0\(2) => pcreg_n_76,
      \q_reg[19]_0\(1) => pcreg_n_77,
      \q_reg[19]_0\(0) => pcreg_n_78,
      \q_reg[19]_1\(3) => pcreg_n_103,
      \q_reg[19]_1\(2) => pcreg_n_104,
      \q_reg[19]_1\(1) => pcreg_n_105,
      \q_reg[19]_1\(0) => pcreg_n_106,
      \q_reg[23]_0\(3) => pcreg_n_79,
      \q_reg[23]_0\(2) => pcreg_n_80,
      \q_reg[23]_0\(1) => pcreg_n_81,
      \q_reg[23]_0\(0) => pcreg_n_82,
      \q_reg[23]_1\(3) => pcreg_n_107,
      \q_reg[23]_1\(2) => pcreg_n_108,
      \q_reg[23]_1\(1) => pcreg_n_109,
      \q_reg[23]_1\(0) => pcreg_n_110,
      \q_reg[27]_0\(3) => pcreg_n_83,
      \q_reg[27]_0\(2) => pcreg_n_84,
      \q_reg[27]_0\(1) => pcreg_n_85,
      \q_reg[27]_0\(0) => pcreg_n_86,
      \q_reg[27]_1\(3) => pcreg_n_111,
      \q_reg[27]_1\(2) => pcreg_n_112,
      \q_reg[27]_1\(1) => pcreg_n_113,
      \q_reg[27]_1\(0) => pcreg_n_114,
      \q_reg[31]_0\(3) => pcreg_n_39,
      \q_reg[31]_0\(2) => pcreg_n_40,
      \q_reg[31]_0\(1) => pcreg_n_41,
      \q_reg[31]_0\(0) => pcreg_n_42,
      \q_reg[3]_0\(3) => pcreg_n_59,
      \q_reg[3]_0\(2) => pcreg_n_60,
      \q_reg[3]_0\(1) => pcreg_n_61,
      \q_reg[3]_0\(0) => pcreg_n_62,
      \q_reg[3]_1\(3) => pcreg_n_87,
      \q_reg[3]_1\(2) => pcreg_n_88,
      \q_reg[3]_1\(1) => pcreg_n_89,
      \q_reg[3]_1\(0) => pcreg_n_90,
      \q_reg[7]_0\(3) => pcreg_n_63,
      \q_reg[7]_0\(2) => pcreg_n_64,
      \q_reg[7]_0\(1) => pcreg_n_65,
      \q_reg[7]_0\(0) => pcreg_n_66,
      \q_reg[7]_1\(3) => pcreg_n_91,
      \q_reg[7]_1\(2) => pcreg_n_92,
      \q_reg[7]_1\(1) => pcreg_n_93,
      \q_reg[7]_1\(0) => pcreg_n_94,
      reset => reset,
      rf_reg_r1_0_31_0_5 => alu_n_37,
      rf_reg_r1_0_31_0_5_0 => alu_n_33,
      rf_reg_r1_0_31_0_5_1 => alu_n_36,
      rf_reg_r1_0_31_24_29 => alu_n_59,
      rf_reg_r1_0_31_24_29_0 => alu_n_60,
      rf_reg_r2_0_31_30_31 => alu_n_50,
      \rf_reg_r2_0_31_30_31__0\(3) => \d30_carry__6_n_4\,
      \rf_reg_r2_0_31_30_31__0\(2) => \d30_carry__6_n_5\,
      \rf_reg_r2_0_31_30_31__0\(1) => \d30_carry__6_n_6\,
      \rf_reg_r2_0_31_30_31__0\(0) => \d30_carry__6_n_7\,
      \rf_reg_r2_0_31_30_31__0_0\ => alu_n_51,
      y_carry_i_7 => pcreg_n_115,
      y_carry_i_7_0 => pcreg_n_116
    );
rf: entity work.design_1_top_0_0_regfile
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(2 downto 0) => \ALUControl__0\(3 downto 1),
      \ALUResult[0]_INST_0_i_12_0\ => rf_n_111,
      \ALUResult[0]_INST_0_i_6_0\ => rf_n_235,
      \ALUResult[0]_INST_0_i_9_0\ => rf_n_110,
      \ALUResult[10]_INST_0_i_2_0\ => \^aluresult[10]_inst_0_i_2\,
      \ALUResult[11]_INST_0_i_2_0\ => \^aluresult[11]_inst_0_i_2\,
      \ALUResult[12]_INST_0_i_2_0\ => \^aluresult[12]_inst_0_i_2\,
      \ALUResult[13]_INST_0_i_2_0\ => \^aluresult[13]_inst_0_i_2\,
      \ALUResult[14]_INST_0_i_2_0\ => \^aluresult[14]_inst_0_i_2\,
      \ALUResult[15]_INST_0_i_2_0\ => \^aluresult[15]_inst_0_i_2\,
      \ALUResult[16]_INST_0_i_2_0\ => \^aluresult[16]_inst_0_i_2\,
      \ALUResult[17]_INST_0_i_2_0\ => \^aluresult[17]_inst_0_i_2\,
      \ALUResult[18]_INST_0_i_2_0\ => \^aluresult[18]_inst_0_i_2\,
      \ALUResult[19]_INST_0_i_6_0\ => rf_n_172,
      \ALUResult[1]_INST_0_i_2\ => pcreg_n_116,
      \ALUResult[1]_INST_0_i_6_0\ => rf_n_109,
      \ALUResult[20]_INST_0_i_2_0\ => \^aluresult[20]_inst_0_i_2\,
      \ALUResult[21]_INST_0_i_2_0\ => \^aluresult[21]_inst_0_i_2\,
      \ALUResult[22]_INST_0_i_2_0\ => \^aluresult[22]_inst_0_i_2\,
      \ALUResult[23]_INST_0_i_2_0\ => \^aluresult[23]_inst_0_i_2\,
      \ALUResult[24]_INST_0_i_2_0\ => \^aluresult[24]_inst_0_i_2\,
      \ALUResult[25]_INST_0_i_2_0\ => \^aluresult[25]_inst_0_i_2\,
      \ALUResult[26]_INST_0_i_2_0\ => \^aluresult[26]_inst_0_i_2\,
      \ALUResult[27]_INST_0_i_2_0\ => \^aluresult[27]_inst_0_i_2\,
      \ALUResult[28]_INST_0_i_2_0\ => \^aluresult[28]_inst_0_i_2\,
      \ALUResult[29]_INST_0_i_2_0\ => \^aluresult[29]_inst_0_i_2\,
      \ALUResult[2]_INST_0_i_2_0\ => \^aluresult[2]_inst_0_i_2\,
      \ALUResult[30]_INST_0_i_2_0\ => \^aluresult[30]_inst_0_i_2\,
      \ALUResult[31]_INST_0_i_3_0\ => \^aluresult[31]_inst_0_i_3\,
      \ALUResult[3]_INST_0_i_2_0\ => \^aluresult[3]_inst_0_i_2\,
      \ALUResult[4]_INST_0_i_2_0\ => \^aluresult[4]_inst_0_i_2\,
      \ALUResult[5]_INST_0_i_2_0\ => \^aluresult[5]_inst_0_i_2\,
      \ALUResult[6]_INST_0_i_2_0\ => \^aluresult[6]_inst_0_i_2\,
      \ALUResult[7]_INST_0_i_2_0\ => \^aluresult[7]_inst_0_i_2\,
      \ALUResult[8]_INST_0_i_2_0\ => \^aluresult[8]_inst_0_i_2\,
      \ALUResult[9]_INST_0_i_2_0\ => \^aluresult[9]_inst_0_i_2\,
      ALUSrc => ALUSrc,
      \BControl__8\ => \c/BControl__8\,
      CO(0) => alu_n_32,
      D(28 downto 17) => PCNext(31 downto 20),
      D(16 downto 0) => PCNext(18 downto 2),
      DI(3) => rf_n_13,
      DI(2) => rf_n_14,
      DI(1) => rf_n_15,
      DI(0) => rf_n_16,
      ImmExt(7 downto 0) => ImmExt(19 downto 12),
      ImmSrc(0) => ImmSrc(1),
      Instr(28 downto 1) => Instr(29 downto 2),
      Instr(0) => Instr(0),
      O(0) => Negative,
      PCPlus4(27 downto 16) => PCPlus4(31 downto 20),
      PCPlus4(15 downto 0) => PCPlus4(18 downto 3),
      PCTargetI(28 downto 17) => PCTargetI(31 downto 20),
      PCTargetI(16 downto 0) => PCTargetI(18 downto 2),
      Q(0) => \^q\(2),
      ReadData(15 downto 8) => ReadData(31 downto 24),
      ReadData(7 downto 0) => ReadData(15 downto 8),
      Result(31 downto 0) => Result(31 downto 0),
      ResultSrc(0) => ResultSrc(0),
      S(3) => rf_n_175,
      S(2) => rf_n_176,
      S(1) => rf_n_177,
      S(0) => rf_n_178,
      WriteData(23 downto 0) => WriteData(31 downto 8),
      \addressM[0]\ => pcreg_n_58,
      clk => clk,
      clk_0(3) => rf_n_8,
      clk_0(2) => rf_n_9,
      clk_0(1) => rf_n_10,
      clk_0(0) => rf_n_11,
      clk_1 => rf_n_12,
      clk_10 => rf_n_71,
      clk_11 => rf_n_72,
      clk_12 => rf_n_73,
      clk_13 => rf_n_74,
      clk_14 => rf_n_75,
      clk_15 => rf_n_76,
      clk_16 => rf_n_77,
      clk_17 => rf_n_78,
      clk_18 => rf_n_112,
      clk_19 => rf_n_113,
      clk_2(1) => SrcB(19),
      clk_2(0) => SrcB(1),
      clk_20 => rf_n_114,
      clk_21 => rf_n_115,
      clk_22 => rf_n_126,
      clk_23 => rf_n_127,
      clk_24 => rf_n_128,
      clk_25 => rf_n_129,
      clk_26 => rf_n_134,
      clk_27 => rf_n_135,
      clk_28 => rf_n_136,
      clk_29 => rf_n_137,
      clk_3(3) => rf_n_19,
      clk_3(2) => rf_n_20,
      clk_3(1) => rf_n_21,
      clk_3(0) => rf_n_22,
      clk_30 => rf_n_138,
      clk_31 => rf_n_139,
      clk_32 => rf_n_140,
      clk_33 => rf_n_141,
      clk_34 => rf_n_142,
      clk_35 => rf_n_143,
      clk_36 => rf_n_144,
      clk_37 => rf_n_145,
      clk_38 => rf_n_146,
      clk_39 => rf_n_147,
      clk_4(3) => rf_n_23,
      clk_4(2) => rf_n_24,
      clk_4(1) => rf_n_25,
      clk_4(0) => rf_n_26,
      clk_40 => rf_n_148,
      clk_41 => rf_n_149,
      clk_42 => rf_n_150,
      clk_43 => rf_n_151,
      clk_44 => rf_n_152,
      clk_45 => rf_n_153,
      clk_46 => rf_n_154,
      clk_47 => rf_n_155,
      clk_48 => rf_n_156,
      clk_49 => rf_n_173,
      clk_5(3) => rf_n_27,
      clk_5(2) => rf_n_28,
      clk_5(1) => rf_n_29,
      clk_5(0) => rf_n_30,
      clk_50(3) => rf_n_179,
      clk_50(2) => rf_n_180,
      clk_50(1) => rf_n_181,
      clk_50(0) => rf_n_182,
      clk_51(3) => rf_n_183,
      clk_51(2) => rf_n_184,
      clk_51(1) => rf_n_185,
      clk_51(0) => rf_n_186,
      clk_52(3) => rf_n_187,
      clk_52(2) => rf_n_188,
      clk_52(1) => rf_n_189,
      clk_52(0) => rf_n_190,
      clk_53(3) => rf_n_191,
      clk_53(2) => rf_n_192,
      clk_53(1) => rf_n_193,
      clk_53(0) => rf_n_194,
      clk_54(3) => rf_n_195,
      clk_54(2) => rf_n_196,
      clk_54(1) => rf_n_197,
      clk_54(0) => rf_n_198,
      clk_55(3) => rf_n_199,
      clk_55(2) => rf_n_200,
      clk_55(1) => rf_n_201,
      clk_55(0) => rf_n_202,
      clk_56(3) => rf_n_203,
      clk_56(2) => rf_n_204,
      clk_56(1) => rf_n_205,
      clk_56(0) => rf_n_206,
      clk_57(3) => rf_n_207,
      clk_57(2) => rf_n_208,
      clk_57(1) => rf_n_209,
      clk_57(0) => rf_n_210,
      clk_58(3) => rf_n_211,
      clk_58(2) => rf_n_212,
      clk_58(1) => rf_n_213,
      clk_58(0) => rf_n_214,
      clk_59(3) => rf_n_215,
      clk_59(2) => rf_n_216,
      clk_59(1) => rf_n_217,
      clk_59(0) => rf_n_218,
      clk_6(3) => rf_n_31,
      clk_6(2) => rf_n_32,
      clk_6(1) => rf_n_33,
      clk_6(0) => rf_n_34,
      clk_60(3) => rf_n_219,
      clk_60(2) => rf_n_220,
      clk_60(1) => rf_n_221,
      clk_60(0) => rf_n_222,
      clk_61(3) => rf_n_223,
      clk_61(2) => rf_n_224,
      clk_61(1) => rf_n_225,
      clk_61(0) => rf_n_226,
      clk_62(3) => rf_n_227,
      clk_62(2) => rf_n_228,
      clk_62(1) => rf_n_229,
      clk_62(0) => rf_n_230,
      clk_63(3) => rf_n_231,
      clk_63(2) => rf_n_232,
      clk_63(1) => rf_n_233,
      clk_63(0) => rf_n_234,
      clk_7(3) => rf_n_35,
      clk_7(2) => rf_n_36,
      clk_7(1) => rf_n_37,
      clk_7(0) => rf_n_38,
      clk_8(3) => rf_n_39,
      clk_8(2) => rf_n_40,
      clk_8(1) => rf_n_41,
      clk_8(0) => rf_n_42,
      clk_9(3) => rf_n_43,
      clk_9(2) => rf_n_44,
      clk_9(1) => rf_n_45,
      clk_9(0) => rf_n_46,
      \i__carry_i_4_0\ => pcreg_n_115,
      \q[31]_i_3_0\ => alu_n_88,
      \q[31]_i_6_0\ => \^aluresult[19]_inst_0_i_2\,
      \rd11__3\ => \rd11__3\,
      rd20(7 downto 0) => rd20(7 downto 0),
      \rd21__3\ => \rd21__3\,
      rf_reg_r1_0_31_6_11_i_9_0 => rf_n_236,
      sum(30 downto 0) => sum(30 downto 0),
      \sum__0_carry__0_i_8_0\ => pcreg_n_51,
      \sum__0_carry__0_i_8_1\ => pcreg_n_52,
      \sum__0_carry__1_i_5_0\ => alu_n_98,
      \sum__0_carry_i_6_0\ => pcreg_n_49,
      \sum__0_carry_i_6_1\ => pcreg_n_50,
      \sum__0_carry_i_7_0\ => alu_n_99,
      \sum__0_carry_i_7_1\ => pcreg_n_47,
      \sum__0_carry_i_7_2\ => pcreg_n_48,
      \writeDataM[15]\ => \^aluresult[1]_inst_0_i_2\,
      \writeDataM[16]\ => alu_n_76,
      \writeDataM[17]\ => alu_n_78,
      \writeDataM[18]\ => alu_n_79,
      \writeDataM[19]\ => alu_n_80,
      \writeDataM[20]\ => alu_n_81,
      \writeDataM[21]\ => alu_n_82,
      \writeDataM[22]\ => alu_n_83,
      \writeDataM[23]\ => alu_n_84,
      \writeDataM[8]\ => \^aluresult[0]_inst_0_i_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_riscvsingle is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobe : out STD_LOGIC;
    PCReady : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_riscvsingle : entity is "riscvsingle";
end design_1_top_0_0_riscvsingle;

architecture STRUCTURE of design_1_top_0_0_riscvsingle is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MemStrobe_INST_0 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of MemWrite_INST_0 : label is "soft_lutpair74";
begin
MemStrobe_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(6),
      O => MemStrobe
    );
MemWrite_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(6),
      I2 => Instr(4),
      O => MemWrite
    );
dp: entity work.design_1_top_0_0_datapath
     port map (
      \ALUResult[0]_INST_0_i_5\ => ALUResult(0),
      \ALUResult[10]_INST_0_i_2\ => ALUResult(10),
      \ALUResult[11]_INST_0_i_2\ => ALUResult(11),
      \ALUResult[12]_INST_0_i_2\ => ALUResult(12),
      \ALUResult[13]_INST_0_i_2\ => ALUResult(13),
      \ALUResult[14]_INST_0_i_2\ => ALUResult(14),
      \ALUResult[15]_INST_0_i_2\ => ALUResult(15),
      \ALUResult[16]_INST_0_i_2\ => ALUResult(16),
      \ALUResult[17]_INST_0_i_2\ => ALUResult(17),
      \ALUResult[18]_INST_0_i_2\ => ALUResult(18),
      \ALUResult[19]_INST_0_i_2\ => ALUResult(19),
      \ALUResult[1]_INST_0_i_2\ => ALUResult(1),
      \ALUResult[20]_INST_0_i_2\ => ALUResult(20),
      \ALUResult[21]_INST_0_i_2\ => ALUResult(21),
      \ALUResult[22]_INST_0_i_2\ => ALUResult(22),
      \ALUResult[23]_INST_0_i_2\ => ALUResult(23),
      \ALUResult[24]_INST_0_i_2\ => ALUResult(24),
      \ALUResult[25]_INST_0_i_2\ => ALUResult(25),
      \ALUResult[26]_INST_0_i_2\ => ALUResult(26),
      \ALUResult[27]_INST_0_i_2\ => ALUResult(27),
      \ALUResult[28]_INST_0_i_2\ => ALUResult(28),
      \ALUResult[29]_INST_0_i_2\ => ALUResult(29),
      \ALUResult[2]_INST_0_i_2\ => ALUResult(2),
      \ALUResult[30]_INST_0_i_2\ => ALUResult(30),
      \ALUResult[31]_INST_0_i_3\ => ALUResult(31),
      \ALUResult[3]_INST_0_i_2\ => ALUResult(3),
      \ALUResult[4]_INST_0_i_2\ => ALUResult(4),
      \ALUResult[5]_INST_0_i_2\ => ALUResult(5),
      \ALUResult[6]_INST_0_i_2\ => ALUResult(6),
      \ALUResult[7]_INST_0_i_2\ => ALUResult(7),
      \ALUResult[8]_INST_0_i_2\ => ALUResult(8),
      \ALUResult[9]_INST_0_i_2\ => ALUResult(9),
      Instr(29 downto 0) => Instr(31 downto 2),
      PCReady => PCReady,
      Q(31 downto 0) => PC(31 downto 0),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_top_0_0_top : entity is "soft";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal PCReady : STD_LOGIC;
  attribute MARK_DEBUG of PCReady : signal is std.standard.true;
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscvsingle : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(8)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(7)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(6)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(5)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(4)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(3)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(28)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(22)
    );
memcontrol: entity work.design_1_top_0_0_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => PCReady,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscvsingle: entity work.design_1_top_0_0_riscvsingle
     port map (
      ALUResult(31 downto 0) => addressM(31 downto 0),
      Instr(31 downto 2) => Instr(31 downto 2),
      Instr(1 downto 0) => B"00",
      MemStrobe => MStrobe,
      MemWrite => MemWrite,
      PC(31 downto 0) => PC(31 downto 0),
      PCReady => PCReady,
      ReadData(31 downto 0) => readDataM(31 downto 0),
      WriteData(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2023.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_top_0_0_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
