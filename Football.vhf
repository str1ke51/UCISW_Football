--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Football.vhf
-- /___/   /\     Timestamp : 03/18/2020 19:47:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Kacper/Desktop/Football/Football.vhf -w C:/Users/Kacper/Desktop/Football/Football.sch
--Design Name: Football
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Football is
   port ( Clk      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          RST      : in    std_logic; 
          LCD_D    : out   std_logic_vector (3 downto 0); 
          LCD_E    : out   std_logic; 
          LCD_RS   : out   std_logic; 
          LCD_RW   : out   std_logic; 
          SF_CE    : out   std_logic; 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end Football;

architecture BEHAVIORAL of Football is
   attribute BOX_TYPE   : string ;
   signal XLXN_1      : std_logic_vector (7 downto 0);
   signal XLXN_2      : std_logic;
   signal XLXN_3      : std_logic_vector (3 downto 0);
   signal XLXN_4      : std_logic_vector (3 downto 0);
   signal XLXN_5      : std_logic_vector (2 downto 0);
   signal XLXN_6      : std_logic_vector (2 downto 0);
   signal XLXN_7      : std_logic_vector (7 downto 0);
   signal XLXN_8      : std_logic_vector (7 downto 0);
   signal XLXN_9      : std_logic_vector (1 downto 0);
   signal XLXN_10     : std_logic_vector (7 downto 0);
   signal XLXN_11     : std_logic;
   signal XLXN_12     : std_logic;
   signal XLXN_13     : std_logic;
   signal XLXN_14     : std_logic;
   signal XLXN_15     : std_logic;
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_18     : std_logic_vector (63 downto 0);
   signal XLXN_19     : std_logic_vector (15 downto 0);
   signal XLXN_54     : std_logic;
   signal LCD_D_DUMMY : std_logic_vector (3 downto 0);
   component PS2_Rx
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             Clk_Sys   : in    std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0));
   end component;
   
   component GameManager
      port ( Data_Ready : in    std_logic; 
             Clk_XT     : in    std_logic; 
             RST        : in    std_logic; 
             Data_Input : in    std_logic_vector (7 downto 0); 
             G1_Pos     : out   std_logic_vector (3 downto 0); 
             G2_Pos     : out   std_logic_vector (3 downto 0); 
             G1_Score   : out   std_logic_vector (2 downto 0); 
             G2_Score   : out   std_logic_vector (2 downto 0); 
             Ball_Pos   : out   std_logic_vector (7 downto 0); 
             Time_Left  : out   std_logic_vector (7 downto 0); 
             Result     : out   std_logic_vector (1 downto 0));
   end component;
   
   component Displayer
      port ( G1_Pos      : in    std_logic_vector (3 downto 0); 
             G2_Pos      : in    std_logic_vector (3 downto 0); 
             G1_Score    : in    std_logic_vector (2 downto 0); 
             G2_Score    : in    std_logic_vector (2 downto 0); 
             Ball_Pos    : in    std_logic_vector (7 downto 0); 
             Time_Left   : in    std_logic_vector (7 downto 0); 
             Result      : in    std_logic_vector (1 downto 0); 
             Char_WE     : out   std_logic; 
             Home        : out   std_logic; 
             NewLine     : out   std_logic; 
             Goto00      : out   std_logic; 
             CursorOn    : out   std_logic; 
             ScrollEn    : out   std_logic; 
             ScrollClear : out   std_logic; 
             Char_DI     : out   std_logic_vector (7 downto 0); 
             Line        : out   std_logic_vector (63 downto 0); 
             Blank       : out   std_logic_vector (15 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   LCD_D(3 downto 0) <= LCD_D_DUMMY(3 downto 0);
   XLXI_1 : PS2_Rx
      port map (Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_2);
   
   XLXI_2 : GameManager
      port map (Clk_XT=>Clk,
                Data_Input(7 downto 0)=>XLXN_1(7 downto 0),
                Data_Ready=>XLXN_2,
                RST=>RST,
                Ball_Pos(7 downto 0)=>XLXN_7(7 downto 0),
                G1_Pos(3 downto 0)=>XLXN_3(3 downto 0),
                G1_Score(2 downto 0)=>XLXN_5(2 downto 0),
                G2_Pos(3 downto 0)=>XLXN_4(3 downto 0),
                G2_Score(2 downto 0)=>XLXN_6(2 downto 0),
                Result(1 downto 0)=>XLXN_9(1 downto 0),
                Time_Left(7 downto 0)=>XLXN_8(7 downto 0));
   
   XLXI_3 : Displayer
      port map (Ball_Pos(7 downto 0)=>XLXN_7(7 downto 0),
                G1_Pos(3 downto 0)=>XLXN_3(3 downto 0),
                G1_Score(2 downto 0)=>XLXN_5(2 downto 0),
                G2_Pos(3 downto 0)=>XLXN_4(3 downto 0),
                G2_Score(2 downto 0)=>XLXN_6(2 downto 0),
                Result(1 downto 0)=>XLXN_9(1 downto 0),
                Time_Left(7 downto 0)=>XLXN_8(7 downto 0),
                Blank(15 downto 0)=>XLXN_19(15 downto 0),
                Char_DI(7 downto 0)=>XLXN_10(7 downto 0),
                Char_WE=>XLXN_11,
                CursorOn=>XLXN_15,
                Goto00=>XLXN_14,
                Home=>XLXN_12,
                Line(63 downto 0)=>XLXN_18(63 downto 0),
                NewLine=>XLXN_13,
                ScrollClear=>XLXN_17,
                ScrollEn=>XLXN_16);
   
   XLXI_4 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_19(15 downto 0),
                Clk_50MHz=>Clk,
                Line(63 downto 0)=>XLXN_18(63 downto 0),
                Reset=>RST,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D_DUMMY(3 downto 0));
   
   XLXI_5 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_10(7 downto 0),
                Char_WE=>XLXN_11,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                CursorOn=>XLXN_15,
                Goto00=>XLXN_14,
                Home=>XLXN_12,
                NewLine=>XLXN_13,
                ScrollClear=>XLXN_17,
                ScrollEn=>XLXN_16,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_54,
                VGA_VS=>VGA_VS);
   
   XLXI_11 : BUF
      port map (I=>XLXN_54,
                O=>VGA_R);
   
   XLXI_12 : BUF
      port map (I=>XLXN_54,
                O=>VGA_G);
   
   XLXI_13 : BUF
      port map (I=>XLXN_54,
                O=>VGA_B);
   
end BEHAVIORAL;


