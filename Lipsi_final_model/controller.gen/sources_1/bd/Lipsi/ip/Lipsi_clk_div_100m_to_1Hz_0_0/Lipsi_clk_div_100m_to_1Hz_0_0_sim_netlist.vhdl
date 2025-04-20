-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:42:59 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_clk_div_100m_to_1Hz_0_0/Lipsi_clk_div_100m_to_1Hz_0_0_sim_netlist.vhdl
-- Design      : Lipsi_clk_div_100m_to_1Hz_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_clk_div_100m_to_1Hz_0_0_clk_div_100m_to_1Hz is
  port (
    clk_1Hz : out STD_LOGIC;
    clk_100M : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lipsi_clk_div_100m_to_1Hz_0_0_clk_div_100m_to_1Hz : entity is "clk_div_100m_to_1Hz";
end Lipsi_clk_div_100m_to_1Hz_0_0_clk_div_100m_to_1Hz;

architecture STRUCTURE of Lipsi_clk_div_100m_to_1Hz_0_0_clk_div_100m_to_1Hz is
  signal \^clk_1hz\ : STD_LOGIC;
  signal clk_1Hz_0 : STD_LOGIC;
  signal clk_1Hz_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[25]_i_2_n_0\ : STD_LOGIC;
  signal \counter[25]_i_3_n_0\ : STD_LOGIC;
  signal \counter[25]_i_4_n_0\ : STD_LOGIC;
  signal \counter[25]_i_5_n_0\ : STD_LOGIC;
  signal \counter[25]_i_6_n_0\ : STD_LOGIC;
  signal \counter[25]_i_7_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \NLW_counter0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[25]_i_4\ : label is "soft_lutpair0";
begin
  clk_1Hz <= \^clk_1hz\;
clk_1Hz_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_1Hz_0,
      I1 => \^clk_1hz\,
      O => clk_1Hz_i_1_n_0
    );
clk_1Hz_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => clk_1Hz_i_1_n_0,
      Q => \^clk_1hz\,
      R => '0'
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_counter0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => p_1_in(25),
      S(3 downto 1) => B"000",
      S(0) => counter(25)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => p_1_in(0)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => \counter[25]_i_3_n_0\,
      I2 => \counter[25]_i_4_n_0\,
      I3 => \counter[25]_i_5_n_0\,
      I4 => \counter[25]_i_6_n_0\,
      I5 => \counter[25]_i_7_n_0\,
      O => clk_1Hz_0
    );
\counter[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(20),
      I1 => counter(6),
      I2 => counter(2),
      I3 => counter(5),
      O => \counter[25]_i_2_n_0\
    );
\counter[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter(11),
      I1 => counter(7),
      I2 => counter(1),
      I3 => counter(18),
      O => \counter[25]_i_3_n_0\
    );
\counter[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter(21),
      I1 => counter(12),
      I2 => counter(13),
      I3 => counter(0),
      O => \counter[25]_i_4_n_0\
    );
\counter[25]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter(19),
      I1 => counter(15),
      I2 => counter(14),
      I3 => counter(24),
      O => \counter[25]_i_5_n_0\
    );
\counter[25]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(3),
      I1 => counter(16),
      I2 => counter(17),
      I3 => counter(8),
      O => \counter[25]_i_6_n_0\
    );
\counter[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => counter(25),
      I1 => counter(22),
      I2 => counter(10),
      I3 => counter(4),
      I4 => counter(9),
      I5 => counter(23),
      O => \counter[25]_i_7_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(0),
      Q => counter(0),
      R => clk_1Hz_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(10),
      Q => counter(10),
      R => clk_1Hz_0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(11),
      Q => counter(11),
      R => clk_1Hz_0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(12),
      Q => counter(12),
      R => clk_1Hz_0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(13),
      Q => counter(13),
      R => clk_1Hz_0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(14),
      Q => counter(14),
      R => clk_1Hz_0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(15),
      Q => counter(15),
      R => clk_1Hz_0
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(16),
      Q => counter(16),
      R => clk_1Hz_0
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(17),
      Q => counter(17),
      R => clk_1Hz_0
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(18),
      Q => counter(18),
      R => clk_1Hz_0
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(19),
      Q => counter(19),
      R => clk_1Hz_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(1),
      Q => counter(1),
      R => clk_1Hz_0
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(20),
      Q => counter(20),
      R => clk_1Hz_0
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(21),
      Q => counter(21),
      R => clk_1Hz_0
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(22),
      Q => counter(22),
      R => clk_1Hz_0
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(23),
      Q => counter(23),
      R => clk_1Hz_0
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(24),
      Q => counter(24),
      R => clk_1Hz_0
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(25),
      Q => counter(25),
      R => clk_1Hz_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(2),
      Q => counter(2),
      R => clk_1Hz_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(3),
      Q => counter(3),
      R => clk_1Hz_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(4),
      Q => counter(4),
      R => clk_1Hz_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(5),
      Q => counter(5),
      R => clk_1Hz_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(6),
      Q => counter(6),
      R => clk_1Hz_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(7),
      Q => counter(7),
      R => clk_1Hz_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(8),
      Q => counter(8),
      R => clk_1Hz_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_100M,
      CE => '1',
      D => p_1_in(9),
      Q => counter(9),
      R => clk_1Hz_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_clk_div_100m_to_1Hz_0_0 is
  port (
    clk_100M : in STD_LOGIC;
    clk_1Hz : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lipsi_clk_div_100m_to_1Hz_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lipsi_clk_div_100m_to_1Hz_0_0 : entity is "Lipsi_clk_div_100m_to_1Hz_0_0,clk_div_100m_to_1Hz,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Lipsi_clk_div_100m_to_1Hz_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Lipsi_clk_div_100m_to_1Hz_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Lipsi_clk_div_100m_to_1Hz_0_0 : entity is "clk_div_100m_to_1Hz,Vivado 2023.2";
end Lipsi_clk_div_100m_to_1Hz_0_0;

architecture STRUCTURE of Lipsi_clk_div_100m_to_1Hz_0_0 is
begin
inst: entity work.Lipsi_clk_div_100m_to_1Hz_0_0_clk_div_100m_to_1Hz
     port map (
      clk_100M => clk_100M,
      clk_1Hz => clk_1Hz
    );
end STRUCTURE;
