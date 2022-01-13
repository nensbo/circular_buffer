--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.63c
--  \   \         Application: netgen
--  /   /         Filename: bafer_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 06 17:51:40 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm bafer -w -dir netgen/synthesis -ofmt vhdl -sim bafer.ngc bafer_synthesis.vhd 
-- Device	: xc5vlx30-2-ff324
-- Input file	: bafer.ngc
-- Output file	: C:\Users\HP EliteBook 840 G1\poli\zad\netgen\synthesis\bafer_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: bafer
-- Xilinx	: d:\Xilinx\12.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity bafer is
  port (
    clk : in STD_LOGIC := 'X'; 
    upisi : in STD_LOGIC := 'X'; 
    citaj : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    error1 : out STD_LOGIC; 
    error2 : out STD_LOGIC; 
    prazan : out STD_LOGIC; 
    pun : out STD_LOGIC; 
    podatak_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    podatak_in : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end bafer;

architecture Structure of bafer is
  component kruzni
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal Msub_brojac_sub0000_cy_0_rt_33 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal addra_cmp_eq00001128_121 : STD_LOGIC; 
  signal addra_cmp_eq00001164_122 : STD_LOGIC; 
  signal addra_cmp_eq00001240_123 : STD_LOGIC; 
  signal addra_cmp_eq0000135_124 : STD_LOGIC; 
  signal addra_cmp_eq0000171_125 : STD_LOGIC; 
  signal addra_not0001 : STD_LOGIC; 
  signal addrb_not0001 : STD_LOGIC; 
  signal citaj_IBUF_291 : STD_LOGIC; 
  signal clk_BUFGP_293 : STD_LOGIC; 
  signal error1_OBUF_303 : STD_LOGIC; 
  signal error1_or0000 : STD_LOGIC; 
  signal error2_OBUF_306 : STD_LOGIC; 
  signal error2_mux0005 : STD_LOGIC; 
  signal error2_or0000 : STD_LOGIC; 
  signal podatak_in_0_IBUF_317 : STD_LOGIC; 
  signal podatak_in_1_IBUF_318 : STD_LOGIC; 
  signal podatak_in_2_IBUF_319 : STD_LOGIC; 
  signal podatak_in_3_IBUF_320 : STD_LOGIC; 
  signal podatak_in_4_IBUF_321 : STD_LOGIC; 
  signal podatak_in_5_IBUF_322 : STD_LOGIC; 
  signal podatak_in_6_IBUF_323 : STD_LOGIC; 
  signal podatak_in_7_IBUF_324 : STD_LOGIC; 
  signal podatak_out_0_OBUF_333 : STD_LOGIC; 
  signal podatak_out_1_OBUF_334 : STD_LOGIC; 
  signal podatak_out_2_OBUF_335 : STD_LOGIC; 
  signal podatak_out_3_OBUF_336 : STD_LOGIC; 
  signal podatak_out_4_OBUF_337 : STD_LOGIC; 
  signal podatak_out_5_OBUF_338 : STD_LOGIC; 
  signal podatak_out_6_OBUF_339 : STD_LOGIC; 
  signal podatak_out_7_OBUF_340 : STD_LOGIC; 
  signal pokazivac_citanje_not0001 : STD_LOGIC; 
  signal pokazivac_upis_not0001 : STD_LOGIC; 
  signal prazan_OBUF_350 : STD_LOGIC; 
  signal pun_OBUF_352 : STD_LOGIC; 
  signal pun_or000010_353 : STD_LOGIC; 
  signal pun_or0000110_354 : STD_LOGIC; 
  signal pun_or000094_355 : STD_LOGIC; 
  signal pun_rstpot : STD_LOGIC; 
  signal reset_IBUF_358 : STD_LOGIC; 
  signal upisi_IBUF_360 : STD_LOGIC; 
  signal Madd_brojac_share0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Madd_brojac_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Msub_brojac_sub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Msub_brojac_sub0000_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal addra : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal addrb : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal brojac : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal brojac_mux0001 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal brojac_mux0003 : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal brojac_share0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal brojac_sub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal dina : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pokazivac_citanje : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal pokazivac_upis : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal wea : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => prazan_OBUF_350
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  wea_0 : FDR
    port map (
      C => clk_BUFGP_293,
      D => pokazivac_upis_not0001,
      R => reset_IBUF_358,
      Q => wea(0)
    );
  error2_4 : FDR
    port map (
      C => clk_BUFGP_293,
      D => error2_mux0005,
      R => error2_or0000,
      Q => error2_OBUF_306
    );
  dina_0 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_0_IBUF_317,
      Q => dina(0)
    );
  dina_1 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_1_IBUF_318,
      Q => dina(1)
    );
  dina_2 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_2_IBUF_319,
      Q => dina(2)
    );
  dina_3 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_3_IBUF_320,
      Q => dina(3)
    );
  dina_4 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_4_IBUF_321,
      Q => dina(4)
    );
  dina_5 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_5_IBUF_322,
      Q => dina(5)
    );
  dina_6 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_6_IBUF_323,
      Q => dina(6)
    );
  dina_7 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => podatak_in_7_IBUF_324,
      Q => dina(7)
    );
  error1_13 : FDR
    port map (
      C => clk_BUFGP_293,
      D => N1,
      R => error1_or0000,
      Q => error1_OBUF_303
    );
  addra_0 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => pokazivac_upis(0),
      Q => addra(0)
    );
  addra_1 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => pokazivac_upis(1),
      Q => addra(1)
    );
  addra_2 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addra_not0001,
      D => pokazivac_upis(2),
      Q => addra(2)
    );
  addrb_0 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addrb_not0001,
      D => pokazivac_citanje(0),
      Q => addrb(0)
    );
  addrb_1 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addrb_not0001,
      D => pokazivac_citanje(1),
      Q => addrb(1)
    );
  addrb_2 : FDE
    port map (
      C => clk_BUFGP_293,
      CE => addrb_not0001,
      D => pokazivac_citanje(2),
      Q => addrb(2)
    );
  brojac_0 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(0),
      R => reset_IBUF_358,
      Q => brojac(0)
    );
  brojac_1 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(1),
      R => reset_IBUF_358,
      Q => brojac(1)
    );
  brojac_2 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(2),
      R => reset_IBUF_358,
      Q => brojac(2)
    );
  brojac_3 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(3),
      R => reset_IBUF_358,
      Q => brojac(3)
    );
  brojac_4 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(4),
      R => reset_IBUF_358,
      Q => brojac(4)
    );
  brojac_5 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(5),
      R => reset_IBUF_358,
      Q => brojac(5)
    );
  brojac_6 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(6),
      R => reset_IBUF_358,
      Q => brojac(6)
    );
  brojac_7 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(7),
      R => reset_IBUF_358,
      Q => brojac(7)
    );
  brojac_8 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(8),
      R => reset_IBUF_358,
      Q => brojac(8)
    );
  brojac_9 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(9),
      R => reset_IBUF_358,
      Q => brojac(9)
    );
  brojac_10 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(10),
      R => reset_IBUF_358,
      Q => brojac(10)
    );
  brojac_11 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(11),
      R => reset_IBUF_358,
      Q => brojac(11)
    );
  brojac_12 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(12),
      R => reset_IBUF_358,
      Q => brojac(12)
    );
  brojac_13 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(13),
      R => reset_IBUF_358,
      Q => brojac(13)
    );
  brojac_14 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(14),
      R => reset_IBUF_358,
      Q => brojac(14)
    );
  brojac_15 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(15),
      R => reset_IBUF_358,
      Q => brojac(15)
    );
  brojac_16 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(16),
      R => reset_IBUF_358,
      Q => brojac(16)
    );
  brojac_17 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(17),
      R => reset_IBUF_358,
      Q => brojac(17)
    );
  brojac_18 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(18),
      R => reset_IBUF_358,
      Q => brojac(18)
    );
  brojac_19 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(19),
      R => reset_IBUF_358,
      Q => brojac(19)
    );
  brojac_20 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(20),
      R => reset_IBUF_358,
      Q => brojac(20)
    );
  brojac_21 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(21),
      R => reset_IBUF_358,
      Q => brojac(21)
    );
  brojac_22 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(22),
      R => reset_IBUF_358,
      Q => brojac(22)
    );
  brojac_23 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(23),
      R => reset_IBUF_358,
      Q => brojac(23)
    );
  brojac_24 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(24),
      R => reset_IBUF_358,
      Q => brojac(24)
    );
  brojac_25 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(25),
      R => reset_IBUF_358,
      Q => brojac(25)
    );
  brojac_26 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(26),
      R => reset_IBUF_358,
      Q => brojac(26)
    );
  brojac_27 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(27),
      R => reset_IBUF_358,
      Q => brojac(27)
    );
  brojac_28 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(28),
      R => reset_IBUF_358,
      Q => brojac(28)
    );
  brojac_29 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(29),
      R => reset_IBUF_358,
      Q => brojac(29)
    );
  brojac_30 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(30),
      R => reset_IBUF_358,
      Q => brojac(30)
    );
  brojac_31 : FDR
    port map (
      C => clk_BUFGP_293,
      D => brojac_mux0001(31),
      R => reset_IBUF_358,
      Q => brojac(31)
    );
  pokazivac_upis_0 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_upis_not0001,
      D => Result_0_1,
      R => reset_IBUF_358,
      Q => pokazivac_upis(0)
    );
  pokazivac_upis_1 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_upis_not0001,
      D => Result_1_1,
      R => reset_IBUF_358,
      Q => pokazivac_upis(1)
    );
  pokazivac_upis_2 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_upis_not0001,
      D => Result_2_1,
      R => reset_IBUF_358,
      Q => pokazivac_upis(2)
    );
  pokazivac_citanje_0 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_citanje_not0001,
      D => Result(0),
      R => reset_IBUF_358,
      Q => pokazivac_citanje(0)
    );
  pokazivac_citanje_1 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_citanje_not0001,
      D => Result(1),
      R => reset_IBUF_358,
      Q => pokazivac_citanje(1)
    );
  pokazivac_citanje_2 : FDRE
    port map (
      C => clk_BUFGP_293,
      CE => pokazivac_citanje_not0001,
      D => Result(2),
      R => reset_IBUF_358,
      Q => pokazivac_citanje(2)
    );
  Msub_brojac_sub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => prazan_OBUF_350,
      S => Msub_brojac_sub0000_cy_0_rt_33,
      O => Msub_brojac_sub0000_cy(0)
    );
  Msub_brojac_sub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Msub_brojac_sub0000_cy_0_rt_33,
      O => brojac_sub0000(0)
    );
  Msub_brojac_sub0000_cy_1_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(0),
      DI => N1,
      S => Msub_brojac_sub0000_lut(1),
      O => Msub_brojac_sub0000_cy(1)
    );
  Msub_brojac_sub0000_xor_1_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(0),
      LI => Msub_brojac_sub0000_lut(1),
      O => brojac_sub0000(1)
    );
  Msub_brojac_sub0000_cy_2_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(1),
      DI => N1,
      S => Msub_brojac_sub0000_lut(2),
      O => Msub_brojac_sub0000_cy(2)
    );
  Msub_brojac_sub0000_xor_2_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(1),
      LI => Msub_brojac_sub0000_lut(2),
      O => brojac_sub0000(2)
    );
  Msub_brojac_sub0000_cy_3_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(2),
      DI => N1,
      S => Msub_brojac_sub0000_lut(3),
      O => Msub_brojac_sub0000_cy(3)
    );
  Msub_brojac_sub0000_xor_3_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(2),
      LI => Msub_brojac_sub0000_lut(3),
      O => brojac_sub0000(3)
    );
  Msub_brojac_sub0000_cy_4_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(3),
      DI => N1,
      S => Msub_brojac_sub0000_lut(4),
      O => Msub_brojac_sub0000_cy(4)
    );
  Msub_brojac_sub0000_xor_4_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(3),
      LI => Msub_brojac_sub0000_lut(4),
      O => brojac_sub0000(4)
    );
  Msub_brojac_sub0000_cy_5_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(4),
      DI => N1,
      S => Msub_brojac_sub0000_lut(5),
      O => Msub_brojac_sub0000_cy(5)
    );
  Msub_brojac_sub0000_xor_5_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(4),
      LI => Msub_brojac_sub0000_lut(5),
      O => brojac_sub0000(5)
    );
  Msub_brojac_sub0000_cy_6_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(5),
      DI => N1,
      S => Msub_brojac_sub0000_lut(6),
      O => Msub_brojac_sub0000_cy(6)
    );
  Msub_brojac_sub0000_xor_6_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(5),
      LI => Msub_brojac_sub0000_lut(6),
      O => brojac_sub0000(6)
    );
  Msub_brojac_sub0000_cy_7_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(6),
      DI => N1,
      S => Msub_brojac_sub0000_lut(7),
      O => Msub_brojac_sub0000_cy(7)
    );
  Msub_brojac_sub0000_xor_7_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(6),
      LI => Msub_brojac_sub0000_lut(7),
      O => brojac_sub0000(7)
    );
  Msub_brojac_sub0000_cy_8_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(7),
      DI => N1,
      S => Msub_brojac_sub0000_lut(8),
      O => Msub_brojac_sub0000_cy(8)
    );
  Msub_brojac_sub0000_xor_8_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(7),
      LI => Msub_brojac_sub0000_lut(8),
      O => brojac_sub0000(8)
    );
  Msub_brojac_sub0000_cy_9_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(8),
      DI => N1,
      S => Msub_brojac_sub0000_lut(9),
      O => Msub_brojac_sub0000_cy(9)
    );
  Msub_brojac_sub0000_xor_9_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(8),
      LI => Msub_brojac_sub0000_lut(9),
      O => brojac_sub0000(9)
    );
  Msub_brojac_sub0000_cy_10_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(9),
      DI => N1,
      S => Msub_brojac_sub0000_lut(10),
      O => Msub_brojac_sub0000_cy(10)
    );
  Msub_brojac_sub0000_xor_10_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(9),
      LI => Msub_brojac_sub0000_lut(10),
      O => brojac_sub0000(10)
    );
  Msub_brojac_sub0000_cy_11_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(10),
      DI => N1,
      S => Msub_brojac_sub0000_lut(11),
      O => Msub_brojac_sub0000_cy(11)
    );
  Msub_brojac_sub0000_xor_11_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(10),
      LI => Msub_brojac_sub0000_lut(11),
      O => brojac_sub0000(11)
    );
  Msub_brojac_sub0000_cy_12_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(11),
      DI => N1,
      S => Msub_brojac_sub0000_lut(12),
      O => Msub_brojac_sub0000_cy(12)
    );
  Msub_brojac_sub0000_xor_12_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(11),
      LI => Msub_brojac_sub0000_lut(12),
      O => brojac_sub0000(12)
    );
  Msub_brojac_sub0000_cy_13_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(12),
      DI => N1,
      S => Msub_brojac_sub0000_lut(13),
      O => Msub_brojac_sub0000_cy(13)
    );
  Msub_brojac_sub0000_xor_13_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(12),
      LI => Msub_brojac_sub0000_lut(13),
      O => brojac_sub0000(13)
    );
  Msub_brojac_sub0000_cy_14_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(13),
      DI => N1,
      S => Msub_brojac_sub0000_lut(14),
      O => Msub_brojac_sub0000_cy(14)
    );
  Msub_brojac_sub0000_xor_14_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(13),
      LI => Msub_brojac_sub0000_lut(14),
      O => brojac_sub0000(14)
    );
  Msub_brojac_sub0000_cy_15_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(14),
      DI => N1,
      S => Msub_brojac_sub0000_lut(15),
      O => Msub_brojac_sub0000_cy(15)
    );
  Msub_brojac_sub0000_xor_15_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(14),
      LI => Msub_brojac_sub0000_lut(15),
      O => brojac_sub0000(15)
    );
  Msub_brojac_sub0000_cy_16_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(15),
      DI => N1,
      S => Msub_brojac_sub0000_lut(16),
      O => Msub_brojac_sub0000_cy(16)
    );
  Msub_brojac_sub0000_xor_16_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(15),
      LI => Msub_brojac_sub0000_lut(16),
      O => brojac_sub0000(16)
    );
  Msub_brojac_sub0000_cy_17_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(16),
      DI => N1,
      S => Msub_brojac_sub0000_lut(17),
      O => Msub_brojac_sub0000_cy(17)
    );
  Msub_brojac_sub0000_xor_17_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(16),
      LI => Msub_brojac_sub0000_lut(17),
      O => brojac_sub0000(17)
    );
  Msub_brojac_sub0000_cy_18_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(17),
      DI => N1,
      S => Msub_brojac_sub0000_lut(18),
      O => Msub_brojac_sub0000_cy(18)
    );
  Msub_brojac_sub0000_xor_18_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(17),
      LI => Msub_brojac_sub0000_lut(18),
      O => brojac_sub0000(18)
    );
  Msub_brojac_sub0000_cy_19_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(18),
      DI => N1,
      S => Msub_brojac_sub0000_lut(19),
      O => Msub_brojac_sub0000_cy(19)
    );
  Msub_brojac_sub0000_xor_19_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(18),
      LI => Msub_brojac_sub0000_lut(19),
      O => brojac_sub0000(19)
    );
  Msub_brojac_sub0000_cy_20_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(19),
      DI => N1,
      S => Msub_brojac_sub0000_lut(20),
      O => Msub_brojac_sub0000_cy(20)
    );
  Msub_brojac_sub0000_xor_20_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(19),
      LI => Msub_brojac_sub0000_lut(20),
      O => brojac_sub0000(20)
    );
  Msub_brojac_sub0000_cy_21_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(20),
      DI => N1,
      S => Msub_brojac_sub0000_lut(21),
      O => Msub_brojac_sub0000_cy(21)
    );
  Msub_brojac_sub0000_xor_21_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(20),
      LI => Msub_brojac_sub0000_lut(21),
      O => brojac_sub0000(21)
    );
  Msub_brojac_sub0000_cy_22_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(21),
      DI => N1,
      S => Msub_brojac_sub0000_lut(22),
      O => Msub_brojac_sub0000_cy(22)
    );
  Msub_brojac_sub0000_xor_22_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(21),
      LI => Msub_brojac_sub0000_lut(22),
      O => brojac_sub0000(22)
    );
  Msub_brojac_sub0000_cy_23_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(22),
      DI => N1,
      S => Msub_brojac_sub0000_lut(23),
      O => Msub_brojac_sub0000_cy(23)
    );
  Msub_brojac_sub0000_xor_23_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(22),
      LI => Msub_brojac_sub0000_lut(23),
      O => brojac_sub0000(23)
    );
  Msub_brojac_sub0000_cy_24_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(23),
      DI => N1,
      S => Msub_brojac_sub0000_lut(24),
      O => Msub_brojac_sub0000_cy(24)
    );
  Msub_brojac_sub0000_xor_24_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(23),
      LI => Msub_brojac_sub0000_lut(24),
      O => brojac_sub0000(24)
    );
  Msub_brojac_sub0000_cy_25_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(24),
      DI => N1,
      S => Msub_brojac_sub0000_lut(25),
      O => Msub_brojac_sub0000_cy(25)
    );
  Msub_brojac_sub0000_xor_25_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(24),
      LI => Msub_brojac_sub0000_lut(25),
      O => brojac_sub0000(25)
    );
  Msub_brojac_sub0000_cy_26_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(25),
      DI => N1,
      S => Msub_brojac_sub0000_lut(26),
      O => Msub_brojac_sub0000_cy(26)
    );
  Msub_brojac_sub0000_xor_26_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(25),
      LI => Msub_brojac_sub0000_lut(26),
      O => brojac_sub0000(26)
    );
  Msub_brojac_sub0000_cy_27_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(26),
      DI => N1,
      S => Msub_brojac_sub0000_lut(27),
      O => Msub_brojac_sub0000_cy(27)
    );
  Msub_brojac_sub0000_xor_27_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(26),
      LI => Msub_brojac_sub0000_lut(27),
      O => brojac_sub0000(27)
    );
  Msub_brojac_sub0000_cy_28_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(27),
      DI => N1,
      S => Msub_brojac_sub0000_lut(28),
      O => Msub_brojac_sub0000_cy(28)
    );
  Msub_brojac_sub0000_xor_28_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(27),
      LI => Msub_brojac_sub0000_lut(28),
      O => brojac_sub0000(28)
    );
  Msub_brojac_sub0000_cy_29_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(28),
      DI => N1,
      S => Msub_brojac_sub0000_lut(29),
      O => Msub_brojac_sub0000_cy(29)
    );
  Msub_brojac_sub0000_xor_29_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(28),
      LI => Msub_brojac_sub0000_lut(29),
      O => brojac_sub0000(29)
    );
  Msub_brojac_sub0000_cy_30_Q : MUXCY
    port map (
      CI => Msub_brojac_sub0000_cy(29),
      DI => N1,
      S => Msub_brojac_sub0000_lut(30),
      O => Msub_brojac_sub0000_cy(30)
    );
  Msub_brojac_sub0000_xor_30_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(29),
      LI => Msub_brojac_sub0000_lut(30),
      O => brojac_sub0000(30)
    );
  Msub_brojac_sub0000_xor_31_Q : XORCY
    port map (
      CI => Msub_brojac_sub0000_cy(30),
      LI => Msub_brojac_sub0000_lut(31),
      O => brojac_sub0000(31)
    );
  Madd_brojac_share0000_cy_0_Q : MUXCY
    port map (
      CI => prazan_OBUF_350,
      DI => N1,
      S => Madd_brojac_share0000_lut(0),
      O => Madd_brojac_share0000_cy(0)
    );
  Madd_brojac_share0000_xor_0_Q : XORCY
    port map (
      CI => prazan_OBUF_350,
      LI => Madd_brojac_share0000_lut(0),
      O => brojac_share0000(0)
    );
  Madd_brojac_share0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(0),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(1),
      O => Madd_brojac_share0000_cy(1)
    );
  Madd_brojac_share0000_xor_1_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(0),
      LI => brojac_mux0003(1),
      O => brojac_share0000(1)
    );
  Madd_brojac_share0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(1),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(2),
      O => Madd_brojac_share0000_cy(2)
    );
  Madd_brojac_share0000_xor_2_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(1),
      LI => brojac_mux0003(2),
      O => brojac_share0000(2)
    );
  Madd_brojac_share0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(2),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(3),
      O => Madd_brojac_share0000_cy(3)
    );
  Madd_brojac_share0000_xor_3_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(2),
      LI => brojac_mux0003(3),
      O => brojac_share0000(3)
    );
  Madd_brojac_share0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(3),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(4),
      O => Madd_brojac_share0000_cy(4)
    );
  Madd_brojac_share0000_xor_4_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(3),
      LI => brojac_mux0003(4),
      O => brojac_share0000(4)
    );
  Madd_brojac_share0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(4),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(5),
      O => Madd_brojac_share0000_cy(5)
    );
  Madd_brojac_share0000_xor_5_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(4),
      LI => brojac_mux0003(5),
      O => brojac_share0000(5)
    );
  Madd_brojac_share0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(5),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(6),
      O => Madd_brojac_share0000_cy(6)
    );
  Madd_brojac_share0000_xor_6_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(5),
      LI => brojac_mux0003(6),
      O => brojac_share0000(6)
    );
  Madd_brojac_share0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(6),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(7),
      O => Madd_brojac_share0000_cy(7)
    );
  Madd_brojac_share0000_xor_7_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(6),
      LI => brojac_mux0003(7),
      O => brojac_share0000(7)
    );
  Madd_brojac_share0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(7),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(8),
      O => Madd_brojac_share0000_cy(8)
    );
  Madd_brojac_share0000_xor_8_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(7),
      LI => brojac_mux0003(8),
      O => brojac_share0000(8)
    );
  Madd_brojac_share0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(8),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(9),
      O => Madd_brojac_share0000_cy(9)
    );
  Madd_brojac_share0000_xor_9_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(8),
      LI => brojac_mux0003(9),
      O => brojac_share0000(9)
    );
  Madd_brojac_share0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(9),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(10),
      O => Madd_brojac_share0000_cy(10)
    );
  Madd_brojac_share0000_xor_10_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(9),
      LI => brojac_mux0003(10),
      O => brojac_share0000(10)
    );
  Madd_brojac_share0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(10),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(11),
      O => Madd_brojac_share0000_cy(11)
    );
  Madd_brojac_share0000_xor_11_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(10),
      LI => brojac_mux0003(11),
      O => brojac_share0000(11)
    );
  Madd_brojac_share0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(11),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(12),
      O => Madd_brojac_share0000_cy(12)
    );
  Madd_brojac_share0000_xor_12_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(11),
      LI => brojac_mux0003(12),
      O => brojac_share0000(12)
    );
  Madd_brojac_share0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(12),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(13),
      O => Madd_brojac_share0000_cy(13)
    );
  Madd_brojac_share0000_xor_13_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(12),
      LI => brojac_mux0003(13),
      O => brojac_share0000(13)
    );
  Madd_brojac_share0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(13),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(14),
      O => Madd_brojac_share0000_cy(14)
    );
  Madd_brojac_share0000_xor_14_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(13),
      LI => brojac_mux0003(14),
      O => brojac_share0000(14)
    );
  Madd_brojac_share0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(14),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(15),
      O => Madd_brojac_share0000_cy(15)
    );
  Madd_brojac_share0000_xor_15_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(14),
      LI => brojac_mux0003(15),
      O => brojac_share0000(15)
    );
  Madd_brojac_share0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(15),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(16),
      O => Madd_brojac_share0000_cy(16)
    );
  Madd_brojac_share0000_xor_16_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(15),
      LI => brojac_mux0003(16),
      O => brojac_share0000(16)
    );
  Madd_brojac_share0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(16),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(17),
      O => Madd_brojac_share0000_cy(17)
    );
  Madd_brojac_share0000_xor_17_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(16),
      LI => brojac_mux0003(17),
      O => brojac_share0000(17)
    );
  Madd_brojac_share0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(17),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(18),
      O => Madd_brojac_share0000_cy(18)
    );
  Madd_brojac_share0000_xor_18_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(17),
      LI => brojac_mux0003(18),
      O => brojac_share0000(18)
    );
  Madd_brojac_share0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(18),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(19),
      O => Madd_brojac_share0000_cy(19)
    );
  Madd_brojac_share0000_xor_19_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(18),
      LI => brojac_mux0003(19),
      O => brojac_share0000(19)
    );
  Madd_brojac_share0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(19),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(20),
      O => Madd_brojac_share0000_cy(20)
    );
  Madd_brojac_share0000_xor_20_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(19),
      LI => brojac_mux0003(20),
      O => brojac_share0000(20)
    );
  Madd_brojac_share0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(20),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(21),
      O => Madd_brojac_share0000_cy(21)
    );
  Madd_brojac_share0000_xor_21_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(20),
      LI => brojac_mux0003(21),
      O => brojac_share0000(21)
    );
  Madd_brojac_share0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(21),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(22),
      O => Madd_brojac_share0000_cy(22)
    );
  Madd_brojac_share0000_xor_22_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(21),
      LI => brojac_mux0003(22),
      O => brojac_share0000(22)
    );
  Madd_brojac_share0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(22),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(23),
      O => Madd_brojac_share0000_cy(23)
    );
  Madd_brojac_share0000_xor_23_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(22),
      LI => brojac_mux0003(23),
      O => brojac_share0000(23)
    );
  Madd_brojac_share0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(23),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(24),
      O => Madd_brojac_share0000_cy(24)
    );
  Madd_brojac_share0000_xor_24_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(23),
      LI => brojac_mux0003(24),
      O => brojac_share0000(24)
    );
  Madd_brojac_share0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(24),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(25),
      O => Madd_brojac_share0000_cy(25)
    );
  Madd_brojac_share0000_xor_25_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(24),
      LI => brojac_mux0003(25),
      O => brojac_share0000(25)
    );
  Madd_brojac_share0000_cy_26_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(25),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(26),
      O => Madd_brojac_share0000_cy(26)
    );
  Madd_brojac_share0000_xor_26_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(25),
      LI => brojac_mux0003(26),
      O => brojac_share0000(26)
    );
  Madd_brojac_share0000_cy_27_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(26),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(27),
      O => Madd_brojac_share0000_cy(27)
    );
  Madd_brojac_share0000_xor_27_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(26),
      LI => brojac_mux0003(27),
      O => brojac_share0000(27)
    );
  Madd_brojac_share0000_cy_28_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(27),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(28),
      O => Madd_brojac_share0000_cy(28)
    );
  Madd_brojac_share0000_xor_28_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(27),
      LI => brojac_mux0003(28),
      O => brojac_share0000(28)
    );
  Madd_brojac_share0000_cy_29_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(28),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(29),
      O => Madd_brojac_share0000_cy(29)
    );
  Madd_brojac_share0000_xor_29_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(28),
      LI => brojac_mux0003(29),
      O => brojac_share0000(29)
    );
  Madd_brojac_share0000_cy_30_Q : MUXCY
    port map (
      CI => Madd_brojac_share0000_cy(29),
      DI => prazan_OBUF_350,
      S => brojac_mux0003(30),
      O => Madd_brojac_share0000_cy(30)
    );
  Madd_brojac_share0000_xor_30_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(29),
      LI => brojac_mux0003(30),
      O => brojac_share0000(30)
    );
  Madd_brojac_share0000_xor_31_Q : XORCY
    port map (
      CI => Madd_brojac_share0000_cy(30),
      LI => brojac_mux0003(31),
      O => brojac_share0000(31)
    );
  Mcount_pokazivac_upis_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => pokazivac_upis(1),
      I1 => pokazivac_upis(0),
      O => Result_1_1
    );
  Mcount_pokazivac_citanje_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => pokazivac_citanje(1),
      I1 => pokazivac_citanje(0),
      O => Result(1)
    );
  Mcount_pokazivac_upis_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => pokazivac_upis(0),
      I1 => pokazivac_upis(2),
      I2 => pokazivac_upis(1),
      O => Result_2_1
    );
  Mcount_pokazivac_citanje_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => pokazivac_citanje(0),
      I1 => pokazivac_citanje(2),
      I2 => pokazivac_citanje(1),
      O => Result(2)
    );
  error2_mux00051 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => N6,
      O => error2_mux0005
    );
  error1_or00001 : LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => brojac(3),
      I2 => N6,
      I3 => reset_IBUF_358,
      I4 => citaj_IBUF_291,
      O => error1_or0000
    );
  pun_or000071 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => citaj_IBUF_291,
      O => N8
    );
  Mmux_brojac_mux000131 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(0),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(0),
      I3 => N5,
      I4 => brojac(0),
      I5 => N8,
      O => brojac_mux0001(0)
    );
  Mmux_brojac_mux0001361 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(1),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(1),
      I3 => N5,
      I4 => brojac(1),
      I5 => N8,
      O => brojac_mux0001(1)
    );
  Mmux_brojac_mux0001691 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(2),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(2),
      I3 => N5,
      I4 => brojac(2),
      I5 => N8,
      O => brojac_mux0001(2)
    );
  Mmux_brojac_mux0001811 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(4),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(4),
      I3 => N5,
      I4 => brojac(4),
      I5 => N8,
      O => brojac_mux0001(4)
    );
  Mmux_brojac_mux0001841 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(5),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(5),
      I3 => N5,
      I4 => brojac(5),
      I5 => N8,
      O => brojac_mux0001(5)
    );
  pun_or000061 : LUT4
    generic map(
      INIT => X"8CCC"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => upisi_IBUF_360,
      I2 => brojac(3),
      I3 => N6,
      O => pokazivac_upis_not0001
    );
  addrb_not000111 : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => N6,
      O => pokazivac_citanje_not0001
    );
  Mmux_brojac_mux0001901 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(7),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(7),
      I3 => N5,
      I4 => brojac(7),
      I5 => N8,
      O => brojac_mux0001(7)
    );
  Mmux_brojac_mux0001931 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(8),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(8),
      I3 => N5,
      I4 => brojac(8),
      I5 => N8,
      O => brojac_mux0001(8)
    );
  Mmux_brojac_mux0001961 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(9),
      I2 => brojac_sub0000(9),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(9),
      O => brojac_mux0001(9)
    );
  Mmux_brojac_mux000161 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(10),
      I2 => brojac_sub0000(10),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(10),
      O => brojac_mux0001(10)
    );
  Mmux_brojac_mux000191 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(11),
      I2 => brojac_sub0000(11),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(11),
      O => brojac_mux0001(11)
    );
  Mmux_brojac_mux0001121 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(12),
      I2 => brojac_sub0000(12),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(12),
      O => brojac_mux0001(12)
    );
  Mmux_brojac_mux0001481 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(23),
      I2 => brojac_sub0000(23),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(23),
      O => brojac_mux0001(23)
    );
  Mmux_brojac_mux000178_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => brojac(3),
      I1 => citaj_IBUF_291,
      O => N13
    );
  Mmux_brojac_mux0001511 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(24),
      I2 => brojac_sub0000(24),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(24),
      O => brojac_mux0001(24)
    );
  Mmux_brojac_mux0001601 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(27),
      I2 => brojac_sub0000(27),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(27),
      O => brojac_mux0001(27)
    );
  Mmux_brojac_mux0001271 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(17),
      I2 => brojac_sub0000(17),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(17),
      O => brojac_mux0001(17)
    );
  Mmux_brojac_mux0001631 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(28),
      I2 => brojac_sub0000(28),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(28),
      O => brojac_mux0001(28)
    );
  Mmux_brojac_mux0001301 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(18),
      I2 => brojac_sub0000(18),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(18),
      O => brojac_mux0001(18)
    );
  Mmux_brojac_mux0001661 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(29),
      I2 => brojac_sub0000(29),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(29),
      O => brojac_mux0001(29)
    );
  Mmux_brojac_mux0001331 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(19),
      I2 => brojac_sub0000(19),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(19),
      O => brojac_mux0001(19)
    );
  Mmux_brojac_mux0001721 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(30),
      I2 => brojac_sub0000(30),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(30),
      O => brojac_mux0001(30)
    );
  Mmux_brojac_mux0001391 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(20),
      I2 => brojac_sub0000(20),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(20),
      O => brojac_mux0001(20)
    );
  Mmux_brojac_mux0001751 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(31),
      I2 => brojac_sub0000(31),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(31),
      O => brojac_mux0001(31)
    );
  Mmux_brojac_mux0001421 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(21),
      I2 => brojac_sub0000(21),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(21),
      O => brojac_mux0001(21)
    );
  Mmux_brojac_mux0001451 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(22),
      I2 => brojac_sub0000(22),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(22),
      O => brojac_mux0001(22)
    );
  Mmux_brojac_mux0001151 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(13),
      I2 => brojac_sub0000(13),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(13),
      O => brojac_mux0001(13)
    );
  Mmux_brojac_mux0001181 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(14),
      I2 => brojac_sub0000(14),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(14),
      O => brojac_mux0001(14)
    );
  pun_or000010 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => brojac_mux0001(19),
      I1 => brojac_mux0001(20),
      I2 => brojac_mux0001(21),
      I3 => brojac_mux0001(22),
      I4 => brojac_mux0001(23),
      I5 => brojac_mux0001(24),
      O => pun_or000010_353
    );
  pun_or000094 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => brojac(5),
      I1 => brojac(0),
      O => pun_or000094_355
    );
  pun_or0000110 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
    port map (
      I0 => N8,
      I1 => brojac(1),
      I2 => brojac(2),
      I3 => brojac(4),
      I4 => pun_or000094_355,
      I5 => reset_IBUF_358,
      O => pun_or0000110_354
    );
  Mmux_brojac_mux0001541 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(25),
      I2 => brojac_sub0000(25),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(25),
      O => brojac_mux0001(25)
    );
  Mmux_brojac_mux0001211 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(15),
      I2 => brojac_sub0000(15),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(15),
      O => brojac_mux0001(15)
    );
  Mmux_brojac_mux0001571 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(26),
      I2 => brojac_sub0000(26),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(26),
      O => brojac_mux0001(26)
    );
  Mmux_brojac_mux0001241 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => N8,
      I1 => brojac(16),
      I2 => brojac_sub0000(16),
      I3 => N5,
      I4 => pokazivac_upis_not0001,
      I5 => brojac_share0000(16),
      O => brojac_mux0001(16)
    );
  Mmux_brojac_mux0001871 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => brojac_share0000(6),
      I1 => pokazivac_upis_not0001,
      I2 => brojac_sub0000(6),
      I3 => N5,
      I4 => brojac(6),
      I5 => N8,
      O => brojac_mux0001(6)
    );
  addra_cmp_eq0000135 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => brojac(6),
      I1 => brojac(17),
      I2 => brojac(7),
      I3 => brojac(8),
      I4 => brojac(9),
      I5 => brojac(10),
      O => addra_cmp_eq0000135_124
    );
  addra_cmp_eq0000171 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => brojac(23),
      I1 => brojac(11),
      I2 => brojac(25),
      I3 => brojac(26),
      I4 => brojac(27),
      I5 => brojac(28),
      O => addra_cmp_eq0000171_125
    );
  addra_cmp_eq00001128 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => brojac(31),
      I1 => brojac(30),
      I2 => brojac(1),
      I3 => brojac(2),
      I4 => brojac(4),
      I5 => brojac(5),
      O => addra_cmp_eq00001128_121
    );
  addra_cmp_eq00001164 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => brojac(12),
      I1 => brojac(0),
      I2 => brojac(13),
      I3 => brojac(15),
      I4 => brojac(14),
      I5 => brojac(16),
      O => addra_cmp_eq00001164_122
    );
  addra_cmp_eq00001240 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => brojac(18),
      I1 => brojac(29),
      I2 => brojac(19),
      I3 => brojac(20),
      I4 => brojac(21),
      I5 => brojac(22),
      O => addra_cmp_eq00001240_123
    );
  addra_cmp_eq00001259 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => brojac(24),
      I1 => addra_cmp_eq00001240_123,
      I2 => addra_cmp_eq00001164_122,
      I3 => addra_cmp_eq00001128_121,
      I4 => addra_cmp_eq0000171_125,
      I5 => addra_cmp_eq0000135_124,
      O => N6
    );
  upisi_IBUF : IBUF
    port map (
      I => upisi,
      O => upisi_IBUF_360
    );
  citaj_IBUF : IBUF
    port map (
      I => citaj,
      O => citaj_IBUF_291
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_358
    );
  podatak_in_7_IBUF : IBUF
    port map (
      I => podatak_in(7),
      O => podatak_in_7_IBUF_324
    );
  podatak_in_6_IBUF : IBUF
    port map (
      I => podatak_in(6),
      O => podatak_in_6_IBUF_323
    );
  podatak_in_5_IBUF : IBUF
    port map (
      I => podatak_in(5),
      O => podatak_in_5_IBUF_322
    );
  podatak_in_4_IBUF : IBUF
    port map (
      I => podatak_in(4),
      O => podatak_in_4_IBUF_321
    );
  podatak_in_3_IBUF : IBUF
    port map (
      I => podatak_in(3),
      O => podatak_in_3_IBUF_320
    );
  podatak_in_2_IBUF : IBUF
    port map (
      I => podatak_in(2),
      O => podatak_in_2_IBUF_319
    );
  podatak_in_1_IBUF : IBUF
    port map (
      I => podatak_in(1),
      O => podatak_in_1_IBUF_318
    );
  podatak_in_0_IBUF : IBUF
    port map (
      I => podatak_in(0),
      O => podatak_in_0_IBUF_317
    );
  error1_OBUF : OBUF
    port map (
      I => error1_OBUF_303,
      O => error1
    );
  error2_OBUF : OBUF
    port map (
      I => error2_OBUF_306,
      O => error2
    );
  prazan_OBUF : OBUF
    port map (
      I => prazan_OBUF_350,
      O => prazan
    );
  pun_OBUF : OBUF
    port map (
      I => pun_OBUF_352,
      O => pun
    );
  podatak_out_7_OBUF : OBUF
    port map (
      I => podatak_out_7_OBUF_340,
      O => podatak_out(7)
    );
  podatak_out_6_OBUF : OBUF
    port map (
      I => podatak_out_6_OBUF_339,
      O => podatak_out(6)
    );
  podatak_out_5_OBUF : OBUF
    port map (
      I => podatak_out_5_OBUF_338,
      O => podatak_out(5)
    );
  podatak_out_4_OBUF : OBUF
    port map (
      I => podatak_out_4_OBUF_337,
      O => podatak_out(4)
    );
  podatak_out_3_OBUF : OBUF
    port map (
      I => podatak_out_3_OBUF_336,
      O => podatak_out(3)
    );
  podatak_out_2_OBUF : OBUF
    port map (
      I => podatak_out_2_OBUF_335,
      O => podatak_out(2)
    );
  podatak_out_1_OBUF : OBUF
    port map (
      I => podatak_out_1_OBUF_334,
      O => podatak_out(1)
    );
  podatak_out_0_OBUF : OBUF
    port map (
      I => podatak_out_0_OBUF_333,
      O => podatak_out(0)
    );
  Msub_brojac_sub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => brojac(0),
      O => Msub_brojac_sub0000_cy_0_rt_33
    );
  pun_258 : FD
    port map (
      C => clk_BUFGP_293,
      D => pun_rstpot,
      Q => pun_OBUF_352
    );
  Mmux_brojac_mux000178 : LUT6
    generic map(
      INIT => X"FFBBBBBB75313131"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => N13,
      I2 => N6,
      I3 => brojac_sub0000(3),
      I4 => pokazivac_citanje_not0001,
      I5 => brojac_share0000(3),
      O => brojac_mux0001(3)
    );
  pun_or000051 : LUT4
    generic map(
      INIT => X"4044"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => citaj_IBUF_291,
      I2 => brojac(3),
      I3 => N6,
      O => N5
    );
  brojac_mux0003_1_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(1),
      I3 => upisi_IBUF_360,
      I4 => brojac(1),
      I5 => N6,
      O => brojac_mux0003(1)
    );
  brojac_mux0003_3_1 : LUT5
    generic map(
      INIT => X"AA08FB08"
    )
    port map (
      I0 => brojac(3),
      I1 => upisi_IBUF_360,
      I2 => citaj_IBUF_291,
      I3 => brojac_sub0000(3),
      I4 => N6,
      O => brojac_mux0003(3)
    );
  brojac_mux0003_2_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(2),
      I3 => upisi_IBUF_360,
      I4 => brojac(2),
      I5 => N6,
      O => brojac_mux0003(2)
    );
  pun_or000029_SW0 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => pokazivac_upis_not0001,
      I1 => brojac_share0000(0),
      I2 => brojac_share0000(1),
      I3 => brojac_share0000(2),
      I4 => brojac_share0000(4),
      I5 => brojac_share0000(5),
      O => N15
    );
  Madd_brojac_share0000_lut_0_Q : LUT6
    generic map(
      INIT => X"04BFBFBF0404BFBF"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => upisi_IBUF_360,
      I2 => brojac(0),
      I3 => brojac(3),
      I4 => brojac_sub0000(0),
      I5 => N6,
      O => Madd_brojac_share0000_lut(0)
    );
  brojac_mux0003_4_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(4),
      I3 => upisi_IBUF_360,
      I4 => brojac(4),
      I5 => N6,
      O => brojac_mux0003(4)
    );
  brojac_mux0003_5_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(5),
      I3 => upisi_IBUF_360,
      I4 => brojac(5),
      I5 => N6,
      O => brojac_mux0003(5)
    );
  pun_or000042_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFA8A8A8A8A8"
    )
    port map (
      I0 => N8,
      I1 => brojac(14),
      I2 => brojac(13),
      I3 => brojac_sub0000(13),
      I4 => brojac_sub0000(14),
      I5 => N5,
      O => N21
    );
  brojac_mux0003_6_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(6),
      I3 => upisi_IBUF_360,
      I4 => brojac(6),
      I5 => N6,
      O => brojac_mux0003(6)
    );
  brojac_mux0003_23_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(23),
      I3 => upisi_IBUF_360,
      I4 => brojac(23),
      I5 => N6,
      O => brojac_mux0003(23)
    );
  brojac_mux0003_22_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(22),
      I3 => upisi_IBUF_360,
      I4 => brojac(22),
      I5 => N6,
      O => brojac_mux0003(22)
    );
  brojac_mux0003_21_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(21),
      I3 => upisi_IBUF_360,
      I4 => brojac(21),
      I5 => N6,
      O => brojac_mux0003(21)
    );
  brojac_mux0003_20_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(20),
      I3 => upisi_IBUF_360,
      I4 => brojac(20),
      I5 => N6,
      O => brojac_mux0003(20)
    );
  brojac_mux0003_19_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(19),
      I3 => upisi_IBUF_360,
      I4 => brojac(19),
      I5 => N6,
      O => brojac_mux0003(19)
    );
  brojac_mux0003_18_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(18),
      I3 => upisi_IBUF_360,
      I4 => brojac(18),
      I5 => N6,
      O => brojac_mux0003(18)
    );
  brojac_mux0003_17_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(17),
      I3 => upisi_IBUF_360,
      I4 => brojac(17),
      I5 => N6,
      O => brojac_mux0003(17)
    );
  brojac_mux0003_16_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(16),
      I3 => upisi_IBUF_360,
      I4 => brojac(16),
      I5 => N6,
      O => brojac_mux0003(16)
    );
  brojac_mux0003_15_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(15),
      I3 => upisi_IBUF_360,
      I4 => brojac(15),
      I5 => N6,
      O => brojac_mux0003(15)
    );
  brojac_mux0003_14_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(14),
      I3 => upisi_IBUF_360,
      I4 => brojac(14),
      I5 => N6,
      O => brojac_mux0003(14)
    );
  brojac_mux0003_13_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(13),
      I3 => upisi_IBUF_360,
      I4 => brojac(13),
      I5 => N6,
      O => brojac_mux0003(13)
    );
  brojac_mux0003_12_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(12),
      I3 => upisi_IBUF_360,
      I4 => brojac(12),
      I5 => N6,
      O => brojac_mux0003(12)
    );
  brojac_mux0003_11_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(11),
      I3 => upisi_IBUF_360,
      I4 => brojac(11),
      I5 => N6,
      O => brojac_mux0003(11)
    );
  brojac_mux0003_10_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(10),
      I3 => upisi_IBUF_360,
      I4 => brojac(10),
      I5 => N6,
      O => brojac_mux0003(10)
    );
  brojac_mux0003_9_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(9),
      I3 => upisi_IBUF_360,
      I4 => brojac(9),
      I5 => N6,
      O => brojac_mux0003(9)
    );
  brojac_mux0003_8_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(8),
      I3 => upisi_IBUF_360,
      I4 => brojac(8),
      I5 => N6,
      O => brojac_mux0003(8)
    );
  brojac_mux0003_7_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(7),
      I3 => upisi_IBUF_360,
      I4 => brojac(7),
      I5 => N6,
      O => brojac_mux0003(7)
    );
  Mmux_brojac_mux0001871_SW0_SW0 : LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBBF"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => citaj_IBUF_291,
      I2 => brojac_sub0000(0),
      I3 => brojac_sub0000(1),
      I4 => brojac_sub0000(2),
      I5 => brojac_sub0000(4),
      O => N25
    );
  Mmux_brojac_mux0001871_SW0_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => upisi_IBUF_360,
      O => N26
    );
  Mmux_brojac_mux0001871_SW0 : LUT6
    generic map(
      INIT => X"4440444C5550555F"
    )
    port map (
      I0 => N26,
      I1 => brojac(3),
      I2 => brojac_sub0000(5),
      I3 => brojac_sub0000(6),
      I4 => N25,
      I5 => N6,
      O => N17
    );
  pun_or0000159_SW0_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFA8A8A8A8A8"
    )
    port map (
      I0 => N8,
      I1 => brojac(8),
      I2 => brojac(7),
      I3 => brojac_sub0000(7),
      I4 => brojac_sub0000(8),
      I5 => N5,
      O => N28
    );
  brojac_mux0003_28_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(28),
      I3 => upisi_IBUF_360,
      I4 => brojac(28),
      I5 => N6,
      O => brojac_mux0003(28)
    );
  brojac_mux0003_27_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(27),
      I3 => upisi_IBUF_360,
      I4 => brojac(27),
      I5 => N6,
      O => brojac_mux0003(27)
    );
  brojac_mux0003_26_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(26),
      I3 => upisi_IBUF_360,
      I4 => brojac(26),
      I5 => N6,
      O => brojac_mux0003(26)
    );
  brojac_mux0003_25_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(25),
      I3 => upisi_IBUF_360,
      I4 => brojac(25),
      I5 => N6,
      O => brojac_mux0003(25)
    );
  brojac_mux0003_24_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(24),
      I3 => upisi_IBUF_360,
      I4 => brojac(24),
      I5 => N6,
      O => brojac_mux0003(24)
    );
  pun_or000057_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => N21,
      I1 => brojac_mux0001(3),
      I2 => N15,
      I3 => N30,
      I4 => brojac_mux0001(15),
      I5 => brojac_mux0001(25),
      O => N23
    );
  pun_or0000183_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => brojac_mux0001(16),
      I1 => brojac_mux0001(17),
      I2 => brojac_mux0001(18),
      I3 => brojac_mux0001(26),
      I4 => brojac_mux0001(27),
      I5 => brojac_mux0001(28),
      O => N32
    );
  pun_or0000159_SW0 : LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEFC"
    )
    port map (
      I0 => pokazivac_upis_not0001,
      I1 => N34,
      I2 => N28,
      I3 => brojac_share0000(6),
      I4 => brojac_share0000(7),
      I5 => brojac_share0000(8),
      O => N19
    );
  brojac_mux0003_29_1 : LUT6
    generic map(
      INIT => X"FD202020FDFD2020"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => citaj_IBUF_291,
      I2 => brojac(29),
      I3 => brojac(3),
      I4 => brojac_sub0000(29),
      I5 => N6,
      O => brojac_mux0003(29)
    );
  brojac_mux0003_30_1 : LUT6
    generic map(
      INIT => X"FD202020FDFD2020"
    )
    port map (
      I0 => upisi_IBUF_360,
      I1 => citaj_IBUF_291,
      I2 => brojac(30),
      I3 => brojac(3),
      I4 => brojac_sub0000(30),
      I5 => N6,
      O => brojac_mux0003(30)
    );
  brojac_mux0003_31_1 : LUT6
    generic map(
      INIT => X"D5C080C0F5F0A0F0"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => brojac(3),
      I2 => brojac_sub0000(31),
      I3 => upisi_IBUF_360,
      I4 => brojac(31),
      I5 => N6,
      O => brojac_mux0003(31)
    );
  pun_or000042_SW1 : LUT6
    generic map(
      INIT => X"8CCC8CCC8CCC0000"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => upisi_IBUF_360,
      I2 => brojac(3),
      I3 => N6,
      I4 => brojac_share0000(13),
      I5 => brojac_share0000(14),
      O => N30
    );
  pun_or000087_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => brojac_mux0001(9),
      I1 => brojac_mux0001(10),
      I2 => brojac_mux0001(11),
      I3 => brojac_mux0001(12),
      I4 => brojac_mux0001(29),
      I5 => brojac_mux0001(30),
      O => N36
    );
  pun_rstpot1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => N19,
      I1 => brojac_mux0001(31),
      I2 => N23,
      I3 => N36,
      I4 => N32,
      I5 => pun_or000010_353,
      O => pun_rstpot
    );
  pun_or0000139_SW0 : LUT5
    generic map(
      INIT => X"FFFFFF10"
    )
    port map (
      I0 => citaj_IBUF_291,
      I1 => upisi_IBUF_360,
      I2 => brojac(6),
      I3 => pun_or0000110_354,
      I4 => N17,
      O => N34
    );
  error2_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => reset_IBUF_358,
      I1 => upisi_IBUF_360,
      I2 => citaj_IBUF_291,
      O => error2_or0000
    );
  addrb_not00012 : LUT4
    generic map(
      INIT => X"4044"
    )
    port map (
      I0 => reset_IBUF_358,
      I1 => citaj_IBUF_291,
      I2 => brojac(3),
      I3 => N6,
      O => addrb_not0001
    );
  addra_not00011 : LUT5
    generic map(
      INIT => X"44044444"
    )
    port map (
      I0 => reset_IBUF_358,
      I1 => upisi_IBUF_360,
      I2 => brojac(3),
      I3 => citaj_IBUF_291,
      I4 => N6,
      O => addra_not0001
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_293
    );
  Msub_brojac_sub0000_lut_1_INV_0 : INV
    port map (
      I => brojac(1),
      O => Msub_brojac_sub0000_lut(1)
    );
  Msub_brojac_sub0000_lut_2_INV_0 : INV
    port map (
      I => brojac(2),
      O => Msub_brojac_sub0000_lut(2)
    );
  Msub_brojac_sub0000_lut_3_INV_0 : INV
    port map (
      I => brojac(3),
      O => Msub_brojac_sub0000_lut(3)
    );
  Msub_brojac_sub0000_lut_4_INV_0 : INV
    port map (
      I => brojac(4),
      O => Msub_brojac_sub0000_lut(4)
    );
  Msub_brojac_sub0000_lut_5_INV_0 : INV
    port map (
      I => brojac(5),
      O => Msub_brojac_sub0000_lut(5)
    );
  Msub_brojac_sub0000_lut_6_INV_0 : INV
    port map (
      I => brojac(6),
      O => Msub_brojac_sub0000_lut(6)
    );
  Msub_brojac_sub0000_lut_7_INV_0 : INV
    port map (
      I => brojac(7),
      O => Msub_brojac_sub0000_lut(7)
    );
  Msub_brojac_sub0000_lut_8_INV_0 : INV
    port map (
      I => brojac(8),
      O => Msub_brojac_sub0000_lut(8)
    );
  Msub_brojac_sub0000_lut_9_INV_0 : INV
    port map (
      I => brojac(9),
      O => Msub_brojac_sub0000_lut(9)
    );
  Msub_brojac_sub0000_lut_10_INV_0 : INV
    port map (
      I => brojac(10),
      O => Msub_brojac_sub0000_lut(10)
    );
  Msub_brojac_sub0000_lut_11_INV_0 : INV
    port map (
      I => brojac(11),
      O => Msub_brojac_sub0000_lut(11)
    );
  Msub_brojac_sub0000_lut_12_INV_0 : INV
    port map (
      I => brojac(12),
      O => Msub_brojac_sub0000_lut(12)
    );
  Msub_brojac_sub0000_lut_13_INV_0 : INV
    port map (
      I => brojac(13),
      O => Msub_brojac_sub0000_lut(13)
    );
  Msub_brojac_sub0000_lut_14_INV_0 : INV
    port map (
      I => brojac(14),
      O => Msub_brojac_sub0000_lut(14)
    );
  Msub_brojac_sub0000_lut_15_INV_0 : INV
    port map (
      I => brojac(15),
      O => Msub_brojac_sub0000_lut(15)
    );
  Msub_brojac_sub0000_lut_16_INV_0 : INV
    port map (
      I => brojac(16),
      O => Msub_brojac_sub0000_lut(16)
    );
  Msub_brojac_sub0000_lut_17_INV_0 : INV
    port map (
      I => brojac(17),
      O => Msub_brojac_sub0000_lut(17)
    );
  Msub_brojac_sub0000_lut_18_INV_0 : INV
    port map (
      I => brojac(18),
      O => Msub_brojac_sub0000_lut(18)
    );
  Msub_brojac_sub0000_lut_19_INV_0 : INV
    port map (
      I => brojac(19),
      O => Msub_brojac_sub0000_lut(19)
    );
  Msub_brojac_sub0000_lut_20_INV_0 : INV
    port map (
      I => brojac(20),
      O => Msub_brojac_sub0000_lut(20)
    );
  Msub_brojac_sub0000_lut_21_INV_0 : INV
    port map (
      I => brojac(21),
      O => Msub_brojac_sub0000_lut(21)
    );
  Msub_brojac_sub0000_lut_22_INV_0 : INV
    port map (
      I => brojac(22),
      O => Msub_brojac_sub0000_lut(22)
    );
  Msub_brojac_sub0000_lut_23_INV_0 : INV
    port map (
      I => brojac(23),
      O => Msub_brojac_sub0000_lut(23)
    );
  Msub_brojac_sub0000_lut_24_INV_0 : INV
    port map (
      I => brojac(24),
      O => Msub_brojac_sub0000_lut(24)
    );
  Msub_brojac_sub0000_lut_25_INV_0 : INV
    port map (
      I => brojac(25),
      O => Msub_brojac_sub0000_lut(25)
    );
  Msub_brojac_sub0000_lut_26_INV_0 : INV
    port map (
      I => brojac(26),
      O => Msub_brojac_sub0000_lut(26)
    );
  Msub_brojac_sub0000_lut_27_INV_0 : INV
    port map (
      I => brojac(27),
      O => Msub_brojac_sub0000_lut(27)
    );
  Msub_brojac_sub0000_lut_28_INV_0 : INV
    port map (
      I => brojac(28),
      O => Msub_brojac_sub0000_lut(28)
    );
  Msub_brojac_sub0000_lut_29_INV_0 : INV
    port map (
      I => brojac(29),
      O => Msub_brojac_sub0000_lut(29)
    );
  Msub_brojac_sub0000_lut_30_INV_0 : INV
    port map (
      I => brojac(30),
      O => Msub_brojac_sub0000_lut(30)
    );
  Msub_brojac_sub0000_lut_31_INV_0 : INV
    port map (
      I => brojac(31),
      O => Msub_brojac_sub0000_lut(31)
    );
  Mcount_pokazivac_upis_xor_0_11_INV_0 : INV
    port map (
      I => pokazivac_upis(0),
      O => Result_0_1
    );
  Mcount_pokazivac_citanje_xor_0_11_INV_0 : INV
    port map (
      I => pokazivac_citanje(0),
      O => Result(0)
    );
  kruzni1 : kruzni
    port map (
      clka => clk_BUFGP_293,
      clkb => clk_BUFGP_293,
      wea(0) => wea(0),
      addra(2) => addra(2),
      addra(1) => addra(1),
      addra(0) => addra(0),
      addrb(2) => addrb(2),
      addrb(1) => addrb(1),
      addrb(0) => addrb(0),
      doutb(7) => podatak_out_7_OBUF_340,
      doutb(6) => podatak_out_6_OBUF_339,
      doutb(5) => podatak_out_5_OBUF_338,
      doutb(4) => podatak_out_4_OBUF_337,
      doutb(3) => podatak_out_3_OBUF_336,
      doutb(2) => podatak_out_2_OBUF_335,
      doutb(1) => podatak_out_1_OBUF_334,
      doutb(0) => podatak_out_0_OBUF_333,
      dina(7) => dina(7),
      dina(6) => dina(6),
      dina(5) => dina(5),
      dina(4) => dina(4),
      dina(3) => dina(3),
      dina(2) => dina(2),
      dina(1) => dina(1),
      dina(0) => dina(0)
    );

end Structure;

-- synthesis translate_on
