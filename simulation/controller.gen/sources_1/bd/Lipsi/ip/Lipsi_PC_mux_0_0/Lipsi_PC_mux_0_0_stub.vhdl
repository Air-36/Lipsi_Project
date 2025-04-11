-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:45 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_PC_mux_0_0/Lipsi_PC_mux_0_0_stub.vhdl
-- Design      : Lipsi_PC_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lipsi_PC_mux_0_0 is
  Port ( 
    rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accumulator : in STD_LOGIC_VECTOR ( 7 downto 0 );
    adder : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC : out STD_LOGIC
  );

end Lipsi_PC_mux_0_0;

architecture stub of Lipsi_PC_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rd_data[7:0],accumulator[7:0],adder[7:0],\select\[1:0],PC";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PC_mux,Vivado 2023.2";
begin
end;
