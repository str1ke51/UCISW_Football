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
           G1_Pos : out  STD_LOGIC_VECTOR (3 downto 0);
           G2_Pos : out  STD_LOGIC_VECTOR (3 downto 0);
           G1_Score : out  STD_LOGIC_VECTOR (2 downto 0);
           G2_Score : out  STD_LOGIC_VECTOR (2 downto 0);
           Ball_Pos : out  STD_LOGIC_VECTOR (7 downto 0);
           Time_Left : out  STD_LOGIC_VECTOR (7 downto 0);		-- DONE
           Result : out  STD_LOGIC_VECTOR (1 downto 0));			-- DONE
end GameManager;

architecture Behavioral of GameManager is

shared variable Score_1 : integer := 0;
shared variable Score_2 : integer := 0;
shared variable GameTime : integer := 0;
shared variable GameTimeLeft : integer := 255;

begin
-- DOMYŒLNE WARTOŒCI
	
	G1_Pos <= "0000";
	G2_Pos <= "0000";
	
	G1_Score <= "000";
	G2_Score <= "000";
	
	Ball_Pos <= "00000000";
	
-- RESET GRY
--	ResetGameManager : process (RST)
--	begin
--		if RST = '1' then
--			Time_Left <= "11111111";
--			G1_Pos <= "0000";
--			G2_Pos <= "0000";
--	
--			G1_Score <= "000";
--			G2_Score <= "000";
--	
--			Ball_Pos <= "00000000";
--			Result <= "00";
			
--			Score_1 := 0;
--			Score_2 := 0;
--			GameTime := 0;
--			GameTimeLeft := 255;
--		end if;
--	end process ResetGameManager;

-- ZDARZENIA CZASOWE
	UpdateTime : process (Clk_XT)
	begin
		if rising_edge(Clk_XT) then
			GameTime := GameTime + 1;
			
			-- 100 mln
			if GameTime > 3 AND GameTimeLeft > 0 then
				GameTime := 0;
				GameTimeLeft := GameTimeLeft - 1;
				Time_Left <= std_logic_vector( to_unsigned( GameTimeLeft, 8 ) );
				
				-- Koniec czasu - sprawdz wynik
				if GameTimeLeft = 0 then
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
			end if;
		end if;
	end process UpdateTime;
	
end Behavioral;

