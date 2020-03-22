--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:47:38 03/18/2020
-- Design Name:   
-- Module Name:   C:/Users/Kacper/Desktop/Football/DisplayerTestBench.vhd
-- Project Name:  Football
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Displayer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY DisplayerTestBench IS
END DisplayerTestBench;
 
ARCHITECTURE behavior OF DisplayerTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Displayer
    PORT(
         G1_Pos : IN  std_logic_vector(3 downto 0);
         G2_Pos : IN  std_logic_vector(3 downto 0);
         G1_Score : IN  std_logic_vector(2 downto 0);
         G2_Score : IN  std_logic_vector(2 downto 0);
         Ball_Pos : IN  std_logic_vector(7 downto 0);
         Time_Left : IN  std_logic_vector(7 downto 0);
         Result : IN  std_logic_vector(1 downto 0);
         Char_DI : OUT  std_logic_vector(7 downto 0);
         Char_WE : OUT  std_logic;
         Home : OUT  std_logic;
         NewLine : OUT  std_logic;
         Goto00 : OUT  std_logic;
         CursorOn : OUT  std_logic;
         ScrollEn : OUT  std_logic;
         ScrollClear : OUT  std_logic;
         Line : OUT  std_logic_vector(63 downto 0);
         Blank : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal G1_Pos : std_logic_vector(3 downto 0) := (others => '0');
   signal G2_Pos : std_logic_vector(3 downto 0) := (others => '0');
   signal G1_Score : std_logic_vector(2 downto 0) := (others => '0');
   signal G2_Score : std_logic_vector(2 downto 0) := (others => '0');
   signal Ball_Pos : std_logic_vector(7 downto 0) := (others => '0');
   signal Time_Left : std_logic_vector(7 downto 0) := (others => '0');
   signal Result : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Char_DI : std_logic_vector(7 downto 0);
   signal Char_WE : std_logic;
   signal Home : std_logic;
   signal NewLine : std_logic;
   signal Goto00 : std_logic;
   signal CursorOn : std_logic;
   signal ScrollEn : std_logic;
   signal ScrollClear : std_logic;
   signal Line : std_logic_vector(63 downto 0);
   signal Blank : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Displayer PORT MAP (
          G1_Pos => G1_Pos,
          G2_Pos => G2_Pos,
          G1_Score => G1_Score,
          G2_Score => G2_Score,
          Ball_Pos => Ball_Pos,
          Time_Left => Time_Left,
          Result => Result,
          Char_DI => Char_DI,
          Char_WE => Char_WE,
          Home => Home,
          NewLine => NewLine,
          Goto00 => Goto00,
          CursorOn => CursorOn,
          ScrollEn => ScrollEn,
          ScrollClear => ScrollClear,
          Line => Line,
          Blank => Blank
        );
 
	add_score : process
	begin
		G1_Score <= std_logic_vector( signed(G1_Score) + 1 );
		wait for 100 ns;
	end process;
	
	add_time : process
	begin
		Time_Left <= std_logic_vector( signed(Time_Left) + 1 );
		wait for 10 ns;
	end process;

END;
