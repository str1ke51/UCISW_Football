----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:15 03/09/2020 
-- Design Name: 
-- Module Name:    GameManager - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GameManager is
    Port ( Data_Input : in  STD_LOGIC_VECTOR (7 downto 0);
           Data_Ready : in  STD_LOGIC;
           Clk_XT : in  STD_LOGIC;
           RST : in  STD_LOGIC;		
           G1_Pos : out  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           G2_Pos : out  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           G1_Score : out  STD_LOGIC_VECTOR (2 downto 0) := "000";
           G2_Score : out  STD_LOGIC_VECTOR (2 downto 0) := "000";
           Ball_Pos : out  STD_LOGIC_VECTOR (7 downto 0) := "00000000";
           Time_Left : out  STD_LOGIC_VECTOR (7 downto 0) := "11111111";		-- DONE
           Result : out  STD_LOGIC_VECTOR (1 downto 0) := "00");					-- DONE
end GameManager;

architecture Behavioral of GameManager is

constant CLOCK_FREQEUNCY : integer := 10;
constant MAX_POINTS : integer := 5;
constant MAX_GAME_TIME : integer := 255;

shared variable Score_1 : integer := 0;
shared variable Score_2 : integer := 0;
shared variable GameTimeLeft : integer := MAX_GAME_TIME;
shared variable IsFinished : bit := '0';

signal IsGameEnded : bit := '0';
signal SecondElapsed : bit := '0';
signal ChangeBallPostion : bit := '0';

begin
 --RESET GRY
	ExecuteEverySecond : process (SecondElapsed, RST)
	begin
		
		-- update Time_Left
		if IsFinished = '0' then
			GameTimeLeft := GameTimeLeft - 1;
		end if;
		
		-- if there's no time left
		-- or score reached MAX_POINTS 
		-- calculate result
		if (GameTimeLeft = 0) OR (Score_1 = MAX_POINTS OR Score_2 = MAX_POINTS) then
			IsFinished := '1';
			if Score_1 > Score_2 then
						Result <= "01";
					elsif Score_1 < Score_2 then
						Result <= "10";
					else
						Result <= "11";
					end if;
				else
					Result <= "00";
		end if;
		
		if RST = '1' then
			GameTimeLeft := MAX_GAME_TIME;
			IsFinished := '0';
			Score_1 := 0;
			Score_2 := 0;
			Result <= "00";
			-- Ball pos, G1 pos, G2 pos to be reseted in different procces!
		end if;
		
		Time_Left <= std_logic_vector( to_unsigned( GameTimeLeft, 8 ) );
	end process ExecuteEverySecond;

-- ZDARZENIA CZASOWE
	UpdateTime : process (Clk_XT)
	variable cyclesCount : integer := 0;
	begin
		if rising_edge(Clk_XT) then -- (clk'event and clk = '1') <-- not sure if here this wouldn't be more correct
			cyclesCount := cyclesCount + 1;
			
			if cyclesCount > CLOCK_FREQEUNCY*2 then
					cyclesCount := 0;
					SecondElapsed <= not SecondElapsed;
			end if;
		end if;
		
		-- somewhere here handle counter & signal for ball movement
	end process UpdateTime;
	
end Behavioral;

