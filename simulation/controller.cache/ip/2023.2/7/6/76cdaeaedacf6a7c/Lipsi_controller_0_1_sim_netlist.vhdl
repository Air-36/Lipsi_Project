-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:43 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lipsi_controller_0_1_sim_netlist.vhdl
-- Design      : Lipsi_controller_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  port (
    alu_select : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : out STD_LOGIC;
    PC_en : out STD_LOGIC;
    A_en : out STD_LOGIC;
    data_mux : out STD_LOGIC;
    PC_mux : out STD_LOGIC_VECTOR ( 1 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    accumulator : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  signal A_en_reg_i_1_n_0 : STD_LOGIC;
  signal PC_en_reg_i_1_n_0 : STD_LOGIC;
  signal \PC_mux_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \PC_mux_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \alu_select_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \alu_select_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \alu_select_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal data_mux0_out : STD_LOGIC;
  signal ins_store_en : STD_LOGIC;
  signal ins_store_en_reg_i_1_n_0 : STD_LOGIC;
  signal \ins_store_reg_n_0_[0]\ : STD_LOGIC;
  signal \ins_store_reg_n_0_[1]\ : STD_LOGIC;
  signal \ins_store_reg_n_0_[4]\ : STD_LOGIC;
  signal \ins_store_reg_n_0_[5]\ : STD_LOGIC;
  signal \ins_store_reg_n_0_[6]\ : STD_LOGIC;
  signal ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ns_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ns_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ns_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \ns_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \ns_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \ns_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wr_en1_out : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of A_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of A_en_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of PC_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of PC_en_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \PC_mux_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \PC_mux_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \PC_mux_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \PC_mux_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \PC_mux_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \PC_mux_reg[1]_i_3\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \alu_select_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \alu_select_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \alu_select_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \alu_select_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \alu_select_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \alu_select_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \alu_select_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \alu_select_reg[2]_i_5\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of data_mux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of data_mux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of data_mux_reg_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of ins_store_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ins_store_en_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ns_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ns_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ns_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ns_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ns_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ns_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ns_reg[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ns_reg[1]_i_5\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of wr_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of wr_en_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of wr_en_reg_i_1 : label is "soft_lutpair0";
begin
A_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => A_en_reg_i_1_n_0,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => A_en
    );
A_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFA0A8A0A8A0A8A"
    )
        port map (
      I0 => state(0),
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => state(1),
      I5 => \ins_store_reg_n_0_[5]\,
      O => A_en_reg_i_1_n_0
    );
PC_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => PC_en_reg_i_1_n_0,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => PC_en
    );
PC_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFDFF55005D00"
    )
        port map (
      I0 => \ins_store_reg_n_0_[5]\,
      I1 => state(1),
      I2 => \ins_store_reg_n_0_[4]\,
      I3 => p_1_in,
      I4 => \ins_store_reg_n_0_[6]\,
      I5 => state(0),
      O => PC_en_reg_i_1_n_0
    );
\PC_mux_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \PC_mux_reg[0]_i_1_n_0\,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => PC_mux(0)
    );
\PC_mux_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => \ins_store_reg_n_0_[5]\,
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      O => \PC_mux_reg[0]_i_1_n_0\
    );
\PC_mux_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \PC_mux_reg[1]_i_1_n_0\,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => PC_mux(1)
    );
\PC_mux_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEFFFEEEEE"
    )
        port map (
      I0 => \PC_mux_reg[1]_i_2_n_0\,
      I1 => \PC_mux_reg[1]_i_3_n_0\,
      I2 => \PC_mux_reg[1]_i_4_n_0\,
      I3 => \PC_mux_reg[1]_i_5_n_0\,
      I4 => \PC_mux_reg[1]_i_6_n_0\,
      I5 => \ins_store_reg_n_0_[0]\,
      O => \PC_mux_reg[1]_i_1_n_0\
    );
\PC_mux_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF04AAAAAAAA"
    )
        port map (
      I0 => state(0),
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => \ins_store_reg_n_0_[5]\,
      I3 => state(1),
      I4 => \ins_store_reg_n_0_[4]\,
      I5 => p_1_in,
      O => \PC_mux_reg[1]_i_2_n_0\
    );
\PC_mux_reg[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_1_in,
      I1 => \ins_store_reg_n_0_[4]\,
      I2 => \ins_store_reg_n_0_[5]\,
      O => \PC_mux_reg[1]_i_3_n_0\
    );
\PC_mux_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => accumulator(1),
      I1 => accumulator(0),
      I2 => accumulator(3),
      I3 => accumulator(2),
      O => \PC_mux_reg[1]_i_4_n_0\
    );
\PC_mux_reg[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => accumulator(5),
      I1 => accumulator(4),
      I2 => accumulator(7),
      I3 => accumulator(6),
      O => \PC_mux_reg[1]_i_5_n_0\
    );
\PC_mux_reg[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \ins_store_reg_n_0_[1]\,
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => \ins_store_reg_n_0_[5]\,
      I3 => state(0),
      O => \PC_mux_reg[1]_i_6_n_0\
    );
\alu_select_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \alu_select_reg[0]_i_1_n_0\,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => alu_select(0)
    );
\alu_select_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C202020"
    )
        port map (
      I0 => state(0),
      I1 => p_1_in,
      I2 => \ins_store_reg_n_0_[4]\,
      I3 => state(1),
      I4 => \ins_store_reg_n_0_[5]\,
      O => \alu_select_reg[0]_i_1_n_0\
    );
\alu_select_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \alu_select_reg[1]_i_1_n_0\,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => alu_select(1)
    );
\alu_select_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C8C00000000"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => state(0),
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => state(1),
      I5 => \ins_store_reg_n_0_[5]\,
      O => \alu_select_reg[1]_i_1_n_0\
    );
\alu_select_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \alu_select_reg[2]_i_1_n_0\,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => alu_select(2)
    );
\alu_select_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F8088808880888"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => state(0),
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => state(1),
      I5 => \ins_store_reg_n_0_[5]\,
      O => \alu_select_reg[2]_i_1_n_0\
    );
\alu_select_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => \alu_select_reg[2]_i_3_n_0\,
      I1 => \alu_select_reg[2]_i_4_n_0\,
      I2 => \alu_select_reg[2]_i_5_n_0\,
      I3 => \ins_store_reg_n_0_[5]\,
      I4 => \ins_store_reg_n_0_[6]\,
      I5 => \alu_select_reg[2]_i_6_n_0\,
      O => \alu_select_reg[2]_i_2_n_0\
    );
\alu_select_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1113000033333333"
    )
        port map (
      I0 => \ins_store_reg_n_0_[5]\,
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => state(0),
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => p_1_in,
      I5 => state(1),
      O => \alu_select_reg[2]_i_3_n_0\
    );
\alu_select_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B0BF"
    )
        port map (
      I0 => \ins_store_reg_n_0_[1]\,
      I1 => \ins_store_reg_n_0_[0]\,
      I2 => \ins_store_reg_n_0_[4]\,
      I3 => \ins_store_reg_n_0_[5]\,
      I4 => state(1),
      O => \alu_select_reg[2]_i_4_n_0\
    );
\alu_select_reg[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ins_store_reg_n_0_[4]\,
      I1 => p_1_in,
      O => \alu_select_reg[2]_i_5_n_0\
    );
\alu_select_reg[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      I1 => state(1),
      O => \alu_select_reg[2]_i_6_n_0\
    );
data_mux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_mux0_out,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => data_mux
    );
data_mux_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000300"
    )
        port map (
      I0 => state(0),
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => \ins_store_reg_n_0_[5]\,
      I3 => p_1_in,
      I4 => \ins_store_reg_n_0_[4]\,
      O => data_mux0_out
    );
ins_store_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ins_store_en_reg_i_1_n_0,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => ins_store_en
    );
ins_store_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFAEACABABABABA"
    )
        port map (
      I0 => state(0),
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => state(1),
      I5 => \ins_store_reg_n_0_[5]\,
      O => ins_store_en_reg_i_1_n_0
    );
\ins_store_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(0),
      Q => \ins_store_reg_n_0_[0]\,
      R => '0'
    );
\ins_store_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(1),
      Q => \ins_store_reg_n_0_[1]\,
      R => '0'
    );
\ins_store_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(2),
      Q => \ins_store_reg_n_0_[4]\,
      R => '0'
    );
\ins_store_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(3),
      Q => \ins_store_reg_n_0_[5]\,
      R => '0'
    );
\ins_store_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(4),
      Q => \ins_store_reg_n_0_[6]\,
      R => '0'
    );
\ins_store_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ins_store_en,
      D => instruction(5),
      Q => p_1_in,
      R => '0'
    );
\ns_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ns_reg[0]_i_1_n_0\,
      G => \ns_reg[1]_i_2_n_0\,
      GE => '1',
      Q => ns(0)
    );
\ns_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => p_1_in,
      I2 => \ins_store_reg_n_0_[4]\,
      I3 => state(1),
      I4 => state(0),
      O => \ns_reg[0]_i_1_n_0\
    );
\ns_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ns_reg[1]_i_1_n_0\,
      G => \ns_reg[1]_i_2_n_0\,
      GE => '1',
      Q => ns(1)
    );
\ns_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => state(0),
      I2 => p_1_in,
      I3 => \ins_store_reg_n_0_[4]\,
      O => \ns_reg[1]_i_1_n_0\
    );
\ns_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEEFEEEFEEEF"
    )
        port map (
      I0 => \ns_reg[1]_i_3_n_0\,
      I1 => \ns_reg[1]_i_4_n_0\,
      I2 => p_1_in,
      I3 => state(1),
      I4 => \ns_reg[1]_i_5_n_0\,
      I5 => \ins_store_reg_n_0_[1]\,
      O => \ns_reg[1]_i_2_n_0\
    );
\ns_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => state(1),
      I1 => \ins_store_reg_n_0_[6]\,
      I2 => \ins_store_reg_n_0_[5]\,
      I3 => \ins_store_reg_n_0_[4]\,
      I4 => \ins_store_reg_n_0_[0]\,
      O => \ns_reg[1]_i_3_n_0\
    );
\ns_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404044404"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => \ins_store_reg_n_0_[5]\,
      I2 => state(1),
      I3 => p_1_in,
      I4 => \ins_store_reg_n_0_[4]\,
      I5 => state(0),
      O => \ns_reg[1]_i_4_n_0\
    );
\ns_reg[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ins_store_reg_n_0_[6]\,
      I1 => \ins_store_reg_n_0_[5]\,
      O => \ns_reg[1]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ns(0),
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ns(1),
      Q => state(1),
      R => '0'
    );
wr_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wr_en1_out,
      G => \alu_select_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wr_en
    );
wr_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D050"
    )
        port map (
      I0 => \ins_store_reg_n_0_[5]\,
      I1 => \ins_store_reg_n_0_[4]\,
      I2 => p_1_in,
      I3 => state(0),
      I4 => \ins_store_reg_n_0_[6]\,
      O => wr_en1_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accumulator : in STD_LOGIC_VECTOR ( 7 downto 0 );
    alu_select : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : out STD_LOGIC;
    PC_en : out STD_LOGIC;
    A_en : out STD_LOGIC;
    addr_mux : out STD_LOGIC;
    data_mux : out STD_LOGIC;
    PC_mux : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Lipsi_controller_0_1,controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "controller,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  addr_mux <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
     port map (
      A_en => A_en,
      PC_en => PC_en,
      PC_mux(1 downto 0) => PC_mux(1 downto 0),
      accumulator(7 downto 0) => accumulator(7 downto 0),
      alu_select(2 downto 0) => alu_select(2 downto 0),
      clk => clk,
      data_mux => data_mux,
      instruction(5 downto 2) => instruction(7 downto 4),
      instruction(1 downto 0) => instruction(1 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
