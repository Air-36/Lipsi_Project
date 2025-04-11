-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:42:59 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_clk_div_100m_to_1Hz_0_0/Lipsi_clk_div_100m_to_1Hz_0_0_stub.vhdl
-- Design      : Lipsi_clk_div_100m_to_1Hz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lipsi_clk_div_100m_to_1Hz_0_0 is
  Port ( 
    clk_100M : in STD_LOGIC;
    clk_1Hz : out STD_LOGIC
  );

end Lipsi_clk_div_100m_to_1Hz_0_0;

architecture stub of Lipsi_clk_div_100m_to_1Hz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100M,clk_1Hz";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk_div_100m_to_1Hz,Vivado 2023.2";
begin
end;
