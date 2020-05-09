
-- VHDL Instantiation Created from source file Displayer.vhd -- 15:16:42 05/09/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Displayer
	PORT(
		G1_Pos : IN std_logic_vector(4 downto 0);
		G2_Pos : IN std_logic_vector(4 downto 0);
		G1_Score : IN std_logic_vector(2 downto 0);
		G2_Score : IN std_logic_vector(2 downto 0);
		Ball_Pos : IN std_logic_vector(7 downto 0);
		Time_Left : IN std_logic_vector(7 downto 0);
		Result : IN std_logic_vector(1 downto 0);          
		Char_DI : OUT std_logic_vector(7 downto 0);
		Char_WE : OUT std_logic;
		Home : OUT std_logic;
		NewLine : OUT std_logic;
		Goto00 : OUT std_logic;
		CursorOn : OUT std_logic;
		ScrollEn : OUT std_logic;
		ScrollClear : OUT std_logic;
		Line : OUT std_logic_vector(63 downto 0);
		Blank : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_Displayer: Displayer PORT MAP(
		G1_Pos => ,
		G2_Pos => ,
		G1_Score => ,
		G2_Score => ,
		Ball_Pos => ,
		Time_Left => ,
		Result => ,
		Char_DI => ,
		Char_WE => ,
		Home => ,
		NewLine => ,
		Goto00 => ,
		CursorOn => ,
		ScrollEn => ,
		ScrollClear => ,
		Line => ,
		Blank => 
	);


