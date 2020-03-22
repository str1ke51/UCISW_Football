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
--use IEEE.NUMERIC_STD.ALL;

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
           Time_Left : out  STD_LOGIC_VECTOR (7 downto 0);
           Result : out  STD_LOGIC_VECTOR (1 downto 0));
end GameManager;

architecture Behavioral of GameManager is

begin
	G1_Pos <= "0000";
	G2_Pos <= "0000";
	
	G1_Score <= "000";
	G2_Score <= "000";
	
	Ball_Pos <= "00000000";
	Time_Left <= "00000000";
	Result <= "00";

end Behavioral;

