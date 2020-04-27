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
           Ball_Pos : out  STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
           Time_Left : out  STD_LOGIC_VECTOR (7 downto 0) := "11111111";		-- DONE
           Result : out  STD_LOGIC_VECTOR (1 downto 0) := "00");					-- DONE
end GameManager;

architecture Behavioral of GameManager is

constant FIELD_HEIGHT : integer := 20;
constant FIELD_WIDTH : integer := 48;
constant BARRIER_UPDOWN : integer := 1;
constant BARRIER_LEFTRIGHT : integer := 2;
constant GOAL_WIDTH : integer := 6;

constant CLOCK_FREQEUNCY : integer := 10;
constant MAX_POINTS : integer := 5;
constant MAX_GAME_TIME : integer := 255;

constant BALL_FPS : integer := 4;
constant START_BALL_X : integer := 10;
constant START_BALL_Y : integer := 24;
constant START_BALL_DIRECTION : std_logic_vector (2 downto 0) := "010";

shared variable Score_1 : integer := 0;
shared variable Score_2 : integer := 0;
shared variable IsFinished : bit := '0';
shared variable GameTimeLeft : integer := MAX_GAME_TIME;

shared variable BallDirection : std_logic_vector (2 downto 0) := START_BALL_DIRECTION;
shared variable ball_x : integer := START_BALL_X;
shared variable ball_y : integer := START_BALL_Y;
	
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
	
-- RUCH PI£KI
	BallMovement : process (ChangeBallPostion, RST)
	begin
		-- Calculate X-axis movement
		case BallDirection(2 downto 1) is
			when "11" => ball_x := ball_x + 2;
			when "10" => ball_x := ball_x + 1;
			when "00" => ball_x := ball_x - 1;
			when "01" => ball_x := ball_x - 2;
			when others => ball_x := ball_x;
		end case;
		
		-- Calculate Y-axis movement
		if BallDirection(0) = '0' then
			-- We're going up
			ball_y := ball_y - 1;
		else
			-- We're going down
			ball_y := ball_y + 1;
		end if;
		
		-- Validate new position of the ball
		if ball_x <= BARRIER_LEFTRIGHT then
			ball_x := BARRIER_LEFTRIGHT + 1;
			BallDirection(2) <= not BallDirection(2);
		end if;
		if ball_x >= FIELD_WIDTH - BARRIER_LEFTRIGHT then
			ball_x := FIELD_WIDTH - BARRIER_LEFTRIGHT - 1;
			BallDirection(2) <= not BallDirection(2);
		end if; 
		
		if RST = '1' then
			ball_x := START_BALL_X;
			ball_y := START_BALL_Y;
			BallDirection := START_BALL_DIRECTION;
		end if;
		
		Ball_Pos(7 downto 4) <= std_logic_vector(to_unsigned(ball_x, 4));
		Ball_Pos(3 downto 0) <= std_logic_vector(to_unsigned(ball_y, 4));
	end process BallMovement;
	
-- RUCH GRACZY
	PlayerMovement : process (RST, Data_Ready)
	begin
		
	end process PlayerMovement;

-- ZDARZENIA CZASOWE
	UpdateTime : process (Clk_XT)
	variable cyclesCount : integer := 0;
	variable cyclesForBallCount : integer := 0;
	
	begin
		if rising_edge(Clk_XT) then -- (clk'event and clk = '1') <-- not sure if here this wouldn't be more correct
			cyclesCount := cyclesCount + 1;
			cyclesForBallCount := cyclesForBallCount + 1;
			
			if cyclesCount > CLOCK_FREQEUNCY*2 then
					cyclesCount := 0;
					SecondElapsed <= not SecondElapsed;
			end if;
			
			if cyclesForBallCount > CLOCK_FREQEUNCY*2/BALL_FPS then
					cyclesForBallCount := 0;
					ChangeBallPostion <= not ChangeBallPostion;
			end if;
		end if;
		
		-- somewhere here handle counter & signal for ball movement
	end process UpdateTime;
	
end Behavioral;

