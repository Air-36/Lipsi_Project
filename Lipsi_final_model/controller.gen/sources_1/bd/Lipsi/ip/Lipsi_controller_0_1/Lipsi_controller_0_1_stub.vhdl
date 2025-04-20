-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:41:45 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_controller_0_1/Lipsi_controller_0_1_stub.vhdl
-- Design      : Lipsi_controller_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lipsi_controller_0_1 is
  Port ( 
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

end Lipsi_controller_0_1;

architecture stub of Lipsi_controller_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,instruction[7:0],accumulator[7:0],alu_select[2:0],wr_en,PC_en,A_en,addr_mux,data_mux,PC_mux[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "controller,Vivado 2023.2";
begin
end;
