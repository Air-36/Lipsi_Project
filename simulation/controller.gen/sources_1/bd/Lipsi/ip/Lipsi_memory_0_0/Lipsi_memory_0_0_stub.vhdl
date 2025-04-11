-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:56 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_memory_0_0/Lipsi_memory_0_0_stub.vhdl
-- Design      : Lipsi_memory_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lipsi_memory_0_0 is
  Port ( 
    clk100m : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    reset : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Lipsi_memory_0_0;

architecture stub of Lipsi_memory_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100m,wr_en,reset,rd_addr[7:0],wr_addr[7:0],wr_data[7:0],rd_data[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "memory,Vivado 2023.2";
begin
end;
