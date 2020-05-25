----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:03 03/09/2020 
-- Design Name: 
-- Module Name:    Displayer - Behavioral 
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

entity Displayer is
    Port ( G1_Pos : in  STD_LOGIC_VECTOR (4 downto 0);
           G2_Pos : in  STD_LOGIC_VECTOR (4 downto 0);
           G1_Score : in  STD_LOGIC_VECTOR (2 downto 0);
           G2_Score : in  STD_LOGIC_VECTOR (2 downto 0);
           Ball_Pos : in  STD_LOGIC_VECTOR (9 downto 0);
           Time_Left : in  STD_LOGIC_VECTOR (7 downto 0);
           Result : in  STD_LOGIC_VECTOR (1 downto 0);
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0) := "00000000";
           Char_WE : out  STD_LOGIC := '0';
           Home : out  STD_LOGIC := '0';
           NewLine : out  STD_LOGIC := '0';
           Goto00 : out  STD_LOGIC := '0';
           CursorOn : out  STD_LOGIC := '0';
           ScrollEn : out  STD_LOGIC := '0';
           ScrollClear : out  STD_LOGIC := '0';
           Line : out  STD_LOGIC_VECTOR (63 downto 0);
           Blank : out  STD_LOGIC_VECTOR (15 downto 0));
end Displayer;

architecture Behavioral of Displayer is

	function DIVIDE (X, Y : integer)
		return integer is
		variable counter : integer := 0;
		variable R : integer := X;
	begin
		while R > Y loop
			R := R - Y;
			counter := counter + 1;
		end loop;
		return counter;
	end DIVIDE;
	
	function MODULO (X, Y : integer)
		return integer is
		variable R : integer := X;
	begin
		while R > Y loop
			R := R - Y;
		end loop;
		return R;
	end MODULO;

-- Zmienne do ekranu LCD
	shared variable Seconds_Left : integer := to_integer(signed(Time_Left));
	
begin
-- Aktualizacja ekranu LCD
	UpdateLCD : process (G1_Score, G2_Score, Time_Left)
		variable Seconds_Ten_Display : std_logic_vector(3 downto 0) := "0000";
		variable Seconds_One_Display : std_logic_vector(3 downto 0) := "0000";
		variable Minutes_Display : std_logic_vector(3 downto 0) := "0000";
		
		variable Seconds_Ten : integer := 0;
		variable Seconds_One : integer := 0;
		variable Seconds : integer := 0;
		variable Minutes : integer := 0;
		
	begin
		Line <= "0000000100000000000000000000000000100000000000000000000000000000";
		
		Line(50 downto 48) <= G1_Score;
		Line(42 downto 40) <= G2_Score;
		
		Seconds_Left := to_integer(signed(Time_Left));
		
		Seconds := MODULO(Seconds_Left, 60);
		Minutes := DIVIDE(Seconds_Left, 60);
		
		Seconds_One := MODULO(Seconds, 10);
		Seconds_Ten := DIVIDE(Seconds, 10);
		
		Seconds_Ten_Display := std_logic_vector(to_unsigned(Seconds_Ten, 4));
		Seconds_One_Display := std_logic_vector(to_unsigned(Seconds_One, 4));
		Minutes_Display := std_logic_vector(to_unsigned(Minutes, 4));
		
		Line(15 downto 12) <= Minutes_Display;
		Line(7 downto 4) <= Seconds_Ten_Display;
		Line(3 downto 0) <= Seconds_One_Display;
		
		Blank <= "0010101001110100";
	end process UpdateLCD;
	
-- Aktualizacja monitora
	UpdateScreen : process (G1_Pos, G2_Pos, Ball_Pos, Result)
	begin
	
	end process UpdateScreen;

end Behavioral;

