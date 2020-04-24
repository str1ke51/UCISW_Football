--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:08:38 03/25/2020
-- Design Name:   
-- Module Name:   C:/Users/Kacper/Desktop/Football/GameManagerTestBench.vhd
-- Project Name:  Football
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GameManager
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
--USE ieee.numeric_std.ALL;
 
ENTITY GameManagerTestBench IS
END GameManagerTestBench;
 
ARCHITECTURE behavior OF GameManagerTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GameManager
    PORT(
         Data_Input : IN  std_logic_vector(7 downto 0);
         Data_Ready : IN  std_logic;
         Clk_XT : IN  std_logic;
         RST : IN  std_logic;
         G1_Pos : OUT  std_logic_vector(3 downto 0);
         G2_Pos : OUT  std_logic_vector(3 downto 0);
         G1_Score : OUT  std_logic_vector(2 downto 0);
         G2_Score : OUT  std_logic_vector(2 downto 0);
         Ball_Pos : OUT  std_logic_vector(7 downto 0);
         Time_Left : OUT  std_logic_vector(7 downto 0);
         Result : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_Input : std_logic_vector(7 downto 0) := (others => '0');
   signal Data_Ready : std_logic := '0';
   signal Clk_XT : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal G1_Pos : std_logic_vector(3 downto 0);
   signal G2_Pos : std_logic_vector(3 downto 0);
   signal G1_Score : std_logic_vector(2 downto 0);
   signal G2_Score : std_logic_vector(2 downto 0);
   signal Ball_Pos : std_logic_vector(7 downto 0);
   signal Time_Left : std_logic_vector(7 downto 0);
   signal Result : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant Clk_XT_period : time :=  ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GameManager PORT MAP (
          Data_Input => Data_Input,
          Data_Ready => Data_Ready,
          Clk_XT => Clk_XT,
          RST => RST,
          G1_Pos => G1_Pos,
          G2_Pos => G2_Pos,
          G1_Score => G1_Score,
          G2_Score => G2_Score,
          Ball_Pos => Ball_Pos,
          Time_Left => Time_Left,
          Result => Result
        );


   -- Clock process definitions
   Clk_XT_process :process
   begin
		Clk_XT <= '0';
		wait for Clk_XT_period/2;
		Clk_XT <= '1';
		wait for Clk_XT_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		RST <= '0';
      wait for 500 ns;	
		RST <= '1';
		wait for 300 ns;			
		RST <= '0';
      wait for Clk_XT_period*10;
      wait;
   end process;

END;
