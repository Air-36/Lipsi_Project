-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:42:59 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_accumulator_0_0/Lipsi_accumulator_0_0_sim_netlist.vhdl
-- Design      : Lipsi_accumulator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_accumulator_0_0_accumulator is
  port (
    accu_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    alu_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accu_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lipsi_accumulator_0_0_accumulator : entity is "accumulator";
end Lipsi_accumulator_0_0_accumulator;

architecture STRUCTURE of Lipsi_accumulator_0_0_accumulator is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \accu_out_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \accu_out_reg[7]\ : label is "VCC:GE GND:CLR";
begin
\accu_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(0),
      G => accu_en,
      GE => '1',
      Q => accu_out(0)
    );
\accu_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(1),
      G => accu_en,
      GE => '1',
      Q => accu_out(1)
    );
\accu_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(2),
      G => accu_en,
      GE => '1',
      Q => accu_out(2)
    );
\accu_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(3),
      G => accu_en,
      GE => '1',
      Q => accu_out(3)
    );
\accu_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(4),
      G => accu_en,
      GE => '1',
      Q => accu_out(4)
    );
\accu_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(5),
      G => accu_en,
      GE => '1',
      Q => accu_out(5)
    );
\accu_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(6),
      G => accu_en,
      GE => '1',
      Q => accu_out(6)
    );
\accu_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => alu_out(7),
      G => accu_en,
      GE => '1',
      Q => accu_out(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lipsi_accumulator_0_0 is
  port (
    alu_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accu_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    accu_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lipsi_accumulator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lipsi_accumulator_0_0 : entity is "Lipsi_accumulator_0_0,accumulator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Lipsi_accumulator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Lipsi_accumulator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Lipsi_accumulator_0_0 : entity is "accumulator,Vivado 2023.2";
end Lipsi_accumulator_0_0;

architecture STRUCTURE of Lipsi_accumulator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.Lipsi_accumulator_0_0_accumulator
     port map (
      accu_en => accu_en,
      accu_out(7 downto 0) => accu_out(7 downto 0),
      alu_out(7 downto 0) => alu_out(7 downto 0)
    );
end STRUCTURE;
