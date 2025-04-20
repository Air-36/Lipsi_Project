-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:45 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_counter_0_0/Lipsi_counter_0_0_sim_netlist.vhdl
-- Design      : Lipsi_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_counter_0_0_counter is
  port (
    PC_mux : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PC_out : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lipsi_counter_0_0_counter : entity is "counter";
end Lipsi_counter_0_0_counter;

architecture STRUCTURE of Lipsi_counter_0_0_counter is
  signal \PC_mux[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \PC_mux[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PC_mux[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PC_mux[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC_mux[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC_mux[6]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PC_mux[7]_INST_0\ : label is "soft_lutpair1";
begin
\PC_mux[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PC_out(0),
      O => PC_mux(0)
    );
\PC_mux[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_out(0),
      I1 => PC_out(1),
      O => PC_mux(1)
    );
\PC_mux[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => PC_out(0),
      I1 => PC_out(1),
      I2 => PC_out(2),
      O => PC_mux(2)
    );
\PC_mux[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => PC_out(1),
      I1 => PC_out(0),
      I2 => PC_out(2),
      I3 => PC_out(3),
      O => PC_mux(3)
    );
\PC_mux[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => PC_out(2),
      I1 => PC_out(0),
      I2 => PC_out(1),
      I3 => PC_out(3),
      I4 => PC_out(4),
      O => PC_mux(4)
    );
\PC_mux[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => PC_out(3),
      I1 => PC_out(1),
      I2 => PC_out(0),
      I3 => PC_out(2),
      I4 => PC_out(4),
      I5 => PC_out(5),
      O => PC_mux(5)
    );
\PC_mux[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_mux[7]_INST_0_i_1_n_0\,
      I1 => PC_out(6),
      O => PC_mux(6)
    );
\PC_mux[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \PC_mux[7]_INST_0_i_1_n_0\,
      I1 => PC_out(6),
      I2 => PC_out(7),
      O => PC_mux(7)
    );
\PC_mux[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => PC_out(5),
      I1 => PC_out(3),
      I2 => PC_out(1),
      I3 => PC_out(0),
      I4 => PC_out(2),
      I5 => PC_out(4),
      O => \PC_mux[7]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_counter_0_0 is
  port (
    PC_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PC_mux : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lipsi_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lipsi_counter_0_0 : entity is "Lipsi_counter_0_0,counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Lipsi_counter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Lipsi_counter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Lipsi_counter_0_0 : entity is "counter,Vivado 2023.2";
end Lipsi_counter_0_0;

architecture STRUCTURE of Lipsi_counter_0_0 is
begin
inst: entity work.Lipsi_counter_0_0_counter
     port map (
      PC_mux(7 downto 0) => PC_mux(7 downto 0),
      PC_out(7 downto 0) => PC_out(7 downto 0)
    );
end STRUCTURE;
