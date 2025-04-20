-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:43:07 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_addr_mux_0_0/Lipsi_addr_mux_0_0_sim_netlist.vhdl
-- Design      : Lipsi_addr_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_addr_mux_0_0 is
  port (
    rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select\ : in STD_LOGIC;
    mem_addr : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lipsi_addr_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lipsi_addr_mux_0_0 : entity is "Lipsi_addr_mux_0_0,addr_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Lipsi_addr_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Lipsi_addr_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Lipsi_addr_mux_0_0 : entity is "addr_mux,Vivado 2023.2";
end Lipsi_addr_mux_0_0;

architecture STRUCTURE of Lipsi_addr_mux_0_0 is
begin
\mem_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(0),
      O => mem_addr(0)
    );
\mem_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(1),
      O => mem_addr(1)
    );
\mem_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(2),
      O => mem_addr(2)
    );
\mem_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(3),
      O => mem_addr(3)
    );
\mem_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(4),
      O => mem_addr(4)
    );
\mem_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(5),
      O => mem_addr(5)
    );
\mem_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(6),
      O => mem_addr(6)
    );
\mem_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select\,
      I1 => rd_data(7),
      O => mem_addr(7)
    );
end STRUCTURE;
