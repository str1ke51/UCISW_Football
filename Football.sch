<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(4:0)" />
        <signal name="XLXN_4(4:0)" />
        <signal name="XLXN_5(2:0)" />
        <signal name="XLXN_6(2:0)" />
        <signal name="XLXN_7(9:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18(63:0)" />
        <signal name="XLXN_19(15:0)" />
        <signal name="RST" />
        <signal name="Clk" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_54" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="PS2_Rx">
            <timestamp>2009-5-15T10:32:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="GameManager">
            <timestamp>2020-5-24T18:8:33</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="Displayer">
            <timestamp>2020-5-24T19:34:35</timestamp>
            <rect width="304" x="64" y="-640" height="640" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-524" height="24" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="PS2_Rx" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="XLXN_2" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="GameManager" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="Data_Ready" />
            <blockpin signalname="Clk" name="Clk_XT" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_1(7:0)" name="Data_Input(7:0)" />
            <blockpin signalname="XLXN_3(4:0)" name="G1_Pos(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="G2_Pos(4:0)" />
            <blockpin signalname="XLXN_5(2:0)" name="G1_Score(2:0)" />
            <blockpin signalname="XLXN_6(2:0)" name="G2_Score(2:0)" />
            <blockpin signalname="XLXN_7(9:0)" name="Ball_Pos(9:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="Time_Left(7:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="Result(1:0)" />
        </block>
        <block symbolname="Displayer" name="XLXI_3">
            <blockpin signalname="XLXN_3(4:0)" name="G1_Pos(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="G2_Pos(4:0)" />
            <blockpin signalname="XLXN_5(2:0)" name="G1_Score(2:0)" />
            <blockpin signalname="XLXN_6(2:0)" name="G2_Score(2:0)" />
            <blockpin signalname="XLXN_7(9:0)" name="Ball_Pos(9:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="Time_Left(7:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="Result(1:0)" />
            <blockpin signalname="XLXN_11" name="Char_WE" />
            <blockpin signalname="XLXN_12" name="Home" />
            <blockpin signalname="XLXN_13" name="NewLine" />
            <blockpin signalname="XLXN_14" name="Goto00" />
            <blockpin signalname="XLXN_15" name="CursorOn" />
            <blockpin signalname="XLXN_16" name="ScrollEn" />
            <blockpin signalname="XLXN_17" name="ScrollClear" />
            <blockpin signalname="XLXN_10(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_18(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_19(15:0)" name="Blank(15:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_5">
            <blockpin signalname="XLXN_10(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_12" name="Home" />
            <blockpin signalname="XLXN_13" name="NewLine" />
            <blockpin signalname="XLXN_14" name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_15" name="CursorOn" />
            <blockpin signalname="XLXN_16" name="ScrollEn" />
            <blockpin signalname="XLXN_17" name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_54" name="VGA_RGB" />
            <blockpin signalname="XLXN_11" name="Char_WE" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="RST" name="Reset" />
            <blockpin signalname="XLXN_18(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_19(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="208" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="848" y="1392" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1664" y="1584" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2528" y="1200" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="720" y1="976" y2="976" x1="592" />
            <wire x2="720" y1="976" y2="1360" x1="720" />
            <wire x2="848" y1="1360" y2="1360" x1="720" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="736" y1="1040" y2="1040" x1="592" />
            <wire x2="736" y1="976" y2="1040" x1="736" />
            <wire x2="848" y1="976" y2="976" x1="736" />
        </branch>
        <branch name="XLXN_3(4:0)">
            <wire x2="1664" y1="976" y2="976" x1="1312" />
        </branch>
        <branch name="XLXN_4(4:0)">
            <wire x2="1488" y1="1040" y2="1040" x1="1312" />
            <wire x2="1488" y1="1040" y2="1072" x1="1488" />
            <wire x2="1664" y1="1072" y2="1072" x1="1488" />
        </branch>
        <branch name="XLXN_5(2:0)">
            <wire x2="1488" y1="1104" y2="1104" x1="1312" />
            <wire x2="1488" y1="1104" y2="1168" x1="1488" />
            <wire x2="1664" y1="1168" y2="1168" x1="1488" />
        </branch>
        <branch name="XLXN_6(2:0)">
            <wire x2="1472" y1="1168" y2="1168" x1="1312" />
            <wire x2="1472" y1="1168" y2="1264" x1="1472" />
            <wire x2="1664" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="XLXN_7(9:0)">
            <wire x2="1456" y1="1232" y2="1232" x1="1312" />
            <wire x2="1456" y1="1232" y2="1360" x1="1456" />
            <wire x2="1664" y1="1360" y2="1360" x1="1456" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="1440" y1="1296" y2="1296" x1="1312" />
            <wire x2="1440" y1="1296" y2="1456" x1="1440" />
            <wire x2="1664" y1="1456" y2="1456" x1="1440" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="1424" y1="1360" y2="1360" x1="1312" />
            <wire x2="1424" y1="1360" y2="1552" x1="1424" />
            <wire x2="1664" y1="1552" y2="1552" x1="1424" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="2272" y1="1424" y2="1424" x1="2096" />
            <wire x2="2272" y1="592" y2="1424" x1="2272" />
            <wire x2="2528" y1="592" y2="592" x1="2272" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2288" y1="976" y2="976" x1="2096" />
            <wire x2="2288" y1="656" y2="976" x1="2288" />
            <wire x2="2528" y1="656" y2="656" x1="2288" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2320" y1="1040" y2="1040" x1="2096" />
            <wire x2="2320" y1="752" y2="1040" x1="2320" />
            <wire x2="2528" y1="752" y2="752" x1="2320" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2336" y1="1104" y2="1104" x1="2096" />
            <wire x2="2336" y1="816" y2="1104" x1="2336" />
            <wire x2="2528" y1="816" y2="816" x1="2336" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2352" y1="1168" y2="1168" x1="2096" />
            <wire x2="2352" y1="880" y2="1168" x1="2352" />
            <wire x2="2528" y1="880" y2="880" x1="2352" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2368" y1="1232" y2="1232" x1="2096" />
            <wire x2="2368" y1="976" y2="1232" x1="2368" />
            <wire x2="2528" y1="976" y2="976" x1="2368" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2384" y1="1296" y2="1296" x1="2096" />
            <wire x2="2384" y1="1040" y2="1296" x1="2384" />
            <wire x2="2528" y1="1040" y2="1040" x1="2384" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2400" y1="1360" y2="1360" x1="2096" />
            <wire x2="2400" y1="1104" y2="1360" x1="2400" />
            <wire x2="2528" y1="1104" y2="1104" x1="2400" />
        </branch>
        <branch name="XLXN_18(63:0)">
            <wire x2="2528" y1="1488" y2="1488" x1="2096" />
        </branch>
        <branch name="XLXN_19(15:0)">
            <wire x2="2528" y1="1552" y2="1552" x1="2096" />
        </branch>
        <instance x="2528" y="1776" name="XLXI_4" orien="R0">
        </instance>
        <branch name="RST">
            <wire x2="688" y1="1584" y2="1584" x1="176" />
            <wire x2="688" y1="1584" y2="1680" x1="688" />
            <wire x2="2528" y1="1680" y2="1680" x1="688" />
            <wire x2="848" y1="1232" y2="1232" x1="688" />
            <wire x2="688" y1="1232" y2="1584" x1="688" />
        </branch>
        <branch name="Clk">
            <wire x2="192" y1="1632" y2="1632" x1="176" />
            <wire x2="192" y1="1632" y2="1808" x1="192" />
            <wire x2="2416" y1="1808" y2="1808" x1="192" />
            <wire x2="208" y1="1104" y2="1104" x1="192" />
            <wire x2="192" y1="1104" y2="1168" x1="192" />
            <wire x2="208" y1="1168" y2="1168" x1="192" />
            <wire x2="192" y1="1168" y2="1264" x1="192" />
            <wire x2="656" y1="1264" y2="1264" x1="192" />
            <wire x2="192" y1="1264" y2="1632" x1="192" />
            <wire x2="656" y1="1104" y2="1264" x1="656" />
            <wire x2="848" y1="1104" y2="1104" x1="656" />
            <wire x2="2528" y1="1200" y2="1200" x1="2416" />
            <wire x2="2416" y1="1200" y2="1264" x1="2416" />
            <wire x2="2416" y1="1264" y2="1744" x1="2416" />
            <wire x2="2416" y1="1744" y2="1808" x1="2416" />
            <wire x2="2528" y1="1744" y2="1744" x1="2416" />
            <wire x2="2528" y1="1264" y2="1264" x1="2416" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="192" y1="976" y2="976" x1="176" />
            <wire x2="208" y1="976" y2="976" x1="192" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="208" y1="1040" y2="1040" x1="192" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2976" y1="592" y2="592" x1="2960" />
            <wire x2="3264" y1="592" y2="592" x1="2976" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2976" y1="656" y2="656" x1="2960" />
            <wire x2="3264" y1="656" y2="656" x1="2976" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2992" y1="720" y2="720" x1="2960" />
            <wire x2="2992" y1="720" y2="784" x1="2992" />
            <wire x2="2992" y1="784" y2="800" x1="2992" />
            <wire x2="2992" y1="800" y2="880" x1="2992" />
            <wire x2="3008" y1="880" y2="880" x1="2992" />
            <wire x2="3008" y1="800" y2="800" x1="2992" />
            <wire x2="3008" y1="720" y2="720" x1="2992" />
        </branch>
        <instance x="3008" y="752" name="XLXI_11" orien="R0" />
        <instance x="3008" y="832" name="XLXI_12" orien="R0" />
        <instance x="3008" y="912" name="XLXI_13" orien="R0" />
        <iomarker fontsize="28" x="176" y="1632" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="1584" name="RST" orien="R180" />
        <iomarker fontsize="28" x="192" y="1040" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="176" y="976" name="PS2_Clk" orien="R180" />
        <branch name="VGA_R">
            <wire x2="3248" y1="720" y2="720" x1="3232" />
            <wire x2="3264" y1="720" y2="720" x1="3248" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3264" y1="800" y2="800" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3264" y="800" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3264" y1="880" y2="880" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3264" y="880" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3264" y="720" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3264" y="656" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3264" y="592" name="VGA_HS" orien="R0" />
        <branch name="LCD_E">
            <wire x2="2960" y1="1488" y2="1488" x1="2944" />
            <wire x2="2976" y1="1488" y2="1488" x1="2960" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2976" y1="1552" y2="1552" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1552" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2976" y1="1616" y2="1616" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1616" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2960" y1="1680" y2="1680" x1="2944" />
            <wire x2="2976" y1="1680" y2="1680" x1="2960" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2976" y1="1744" y2="1744" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1744" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1488" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1680" name="LCD_D(3:0)" orien="R0" />
    </sheet>
</drawing>