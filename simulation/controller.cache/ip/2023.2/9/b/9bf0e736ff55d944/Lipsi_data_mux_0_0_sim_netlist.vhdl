-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Apr  6 17:43:24 2025
-- Host        : Shri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lipsi_data_mux_0_0_sim_netlist.vhdl
-- Design      : Lipsi_data_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_mux is
  port (
    mem_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_data[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem_data[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem_data[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_data[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_data[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_data[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_data[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem_data[7]_INST_0\ : label is "soft_lutpair3";
begin
\mem_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(0),
      I1 => PC(0),
      I2 => \select\,
      O => mem_data(0)
    );
\mem_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(1),
      I1 => PC(1),
      I2 => \select\,
      O => mem_data(1)
    );
\mem_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(2),
      I1 => PC(2),
      I2 => \select\,
      O => mem_data(2)
    );
\mem_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(3),
      I1 => PC(3),
      I2 => \select\,
      O => mem_data(3)
    );
\mem_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(4),
      I1 => PC(4),
      I2 => \select\,
      O => mem_data(4)
    );
\mem_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(5),
      I1 => PC(5),
      I2 => \select\,
      O => mem_data(5)
    );
\mem_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(6),
      I1 => PC(6),
      I2 => \select\,
      O => mem_data(6)
    );
\mem_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A(7),
      I1 => PC(7),
      I2 => \select\,
      O => mem_data(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \select\ : in STD_LOGIC;
    mem_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Lipsi_data_mux_0_0,data_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data_mux,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_mux
     port map (
      A(7 downto 0) => A(7 downto 0),
      PC(7 downto 0) => PC(7 downto 0),
      mem_data(7 downto 0) => mem_data(7 downto 0),
      \select\ => \select\
    );
end STRUCTURE;
