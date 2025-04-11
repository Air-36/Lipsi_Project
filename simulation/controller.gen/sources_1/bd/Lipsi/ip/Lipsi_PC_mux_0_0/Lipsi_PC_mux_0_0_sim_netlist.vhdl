-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:45 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_PC_mux_0_0/Lipsi_PC_mux_0_0_sim_netlist.vhdl
-- Design      : Lipsi_PC_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_PC_mux_0_0_PC_mux is
  port (
    PC : out STD_LOGIC;
    accumulator : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    adder : in STD_LOGIC_VECTOR ( 0 to 0 );
    \select\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lipsi_PC_mux_0_0_PC_mux : entity is "PC_mux";
end Lipsi_PC_mux_0_0_PC_mux;

architecture STRUCTURE of Lipsi_PC_mux_0_0_PC_mux is
begin
\PC__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => accumulator(0),
      I1 => rd_data(0),
      I2 => adder(0),
      I3 => \select\(0),
      I4 => \select\(1),
      O => PC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_PC_mux_0_0 is
  port (
    rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accumulator : in STD_LOGIC_VECTOR ( 7 downto 0 );
    adder : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lipsi_PC_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lipsi_PC_mux_0_0 : entity is "Lipsi_PC_mux_0_0,PC_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Lipsi_PC_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Lipsi_PC_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Lipsi_PC_mux_0_0 : entity is "PC_mux,Vivado 2023.2";
end Lipsi_PC_mux_0_0;

architecture STRUCTURE of Lipsi_PC_mux_0_0 is
begin
inst: entity work.Lipsi_PC_mux_0_0_PC_mux
     port map (
      PC => PC,
      accumulator(0) => accumulator(0),
      adder(0) => adder(0),
      rd_data(0) => rd_data(0),
      \select\(1 downto 0) => \select\(1 downto 0)
    );
end STRUCTURE;
