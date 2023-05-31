<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLOCK" />
        <signal name="XLXN_5" />
        <signal name="CNT_BUS(15:0)" />
        <signal name="XLXN_12" />
        <signal name="OUT_BUS(7:0)" />
        <signal name="OUT_BUS(7)" />
        <signal name="OUT_BUS(6)" />
        <signal name="OUT_BUS(5)" />
        <signal name="OUT_BUS(4)" />
        <signal name="MODE" />
        <signal name="OUT_BUS(3)" />
        <signal name="OUT_BUS(2)" />
        <signal name="OUT_BUS(1)" />
        <signal name="OUT_BUS(0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="CNT_BUS(5)" />
        <signal name="CNT_BUS(3)" />
        <signal name="XLXN_27" />
        <signal name="RESET" />
        <signal name="SPEED" />
        <signal name="XLXN_30" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Output" name="OUT_BUS(7)" />
        <port polarity="Output" name="OUT_BUS(6)" />
        <port polarity="Output" name="OUT_BUS(5)" />
        <port polarity="Output" name="OUT_BUS(4)" />
        <port polarity="Input" name="MODE" />
        <port polarity="Output" name="OUT_BUS(3)" />
        <port polarity="Output" name="OUT_BUS(2)" />
        <port polarity="Output" name="OUT_BUS(1)" />
        <port polarity="Output" name="OUT_BUS(0)" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="SPEED" />
        <blockdef name="cc16re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="LightController">
            <timestamp>2023-4-10T18:34:16</timestamp>
            <rect width="256" x="64" y="-188" height="188" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="muxcy">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="192" y1="0" y2="-64" x1="192" />
            <line x2="192" y1="-224" y2="-160" x1="192" />
            <line x2="32" y1="-160" y2="-64" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="224" />
            <line x2="224" y1="-64" y2="-160" x1="288" />
            <line x2="288" y1="-64" y2="-64" x1="32" />
            <line x2="128" y1="0" y2="-64" x1="128" />
            <line x2="56" y1="-96" y2="-96" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="constant" name="XLXI_6">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_7">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="LightController" name="XLXI_8">
            <blockpin signalname="XLXN_19" name="CLK" />
            <blockpin signalname="OUT_BUS(7:0)" name="OUTB(7:0)" />
            <blockpin signalname="MODE" name="MODE" />
            <blockpin signalname="XLXN_18" name="RESET_LC" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="C" />
            <blockpin signalname="XLXN_27" name="D" />
            <blockpin signalname="XLXN_18" name="Q" />
        </block>
        <block symbolname="muxcy" name="XLXI_12">
            <blockpin signalname="CNT_BUS(3)" name="CI" />
            <blockpin signalname="CNT_BUS(5)" name="DI" />
            <blockpin signalname="XLXN_30" name="S" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="cc16re" name="XLXI_2">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="XLXN_12" name="CE" />
            <blockpin signalname="XLXN_5" name="R" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="XLXN_1" name="TC" />
        </block>
        <block symbolname="cc16re" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="XLXN_12" name="CE" />
            <blockpin signalname="XLXN_5" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="CNT_BUS(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="SPEED" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="1200" y1="1296" y2="1296" x1="1120" />
        </branch>
        <branch name="CLOCK">
            <wire x2="736" y1="1296" y2="1296" x1="592" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="688" y1="1488" y2="1488" x1="592" />
            <wire x2="1200" y1="1488" y2="1488" x1="688" />
            <wire x2="736" y1="1392" y2="1392" x1="688" />
            <wire x2="688" y1="1392" y2="1488" x1="688" />
            <wire x2="1200" y1="1392" y2="1488" x1="1200" />
        </branch>
        <branch name="CNT_BUS(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1168" type="branch" />
            <wire x2="1696" y1="1168" y2="1168" x1="1584" />
            <wire x2="1696" y1="1168" y2="1200" x1="1696" />
            <wire x2="1696" y1="1200" y2="1264" x1="1696" />
            <wire x2="1696" y1="1264" y2="1440" x1="1696" />
        </branch>
        <bustap x2="1792" y1="1200" y2="1200" x1="1696" />
        <instance x="448" y="1456" name="XLXI_7" orien="R0">
        </instance>
        <instance x="448" y="1200" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_12">
            <wire x2="656" y1="1232" y2="1232" x1="592" />
            <wire x2="736" y1="1232" y2="1232" x1="656" />
            <wire x2="656" y1="1040" y2="1232" x1="656" />
            <wire x2="1184" y1="1040" y2="1040" x1="656" />
            <wire x2="1184" y1="1040" y2="1232" x1="1184" />
            <wire x2="1200" y1="1232" y2="1232" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="592" y="1296" name="CLOCK" orien="R180" />
        <bustap x2="1792" y1="1264" y2="1264" x1="1696" />
        <branch name="OUT_BUS(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="1216" type="branch" />
            <wire x2="2880" y1="1216" y2="1216" x1="2704" />
            <wire x2="3072" y1="1216" y2="1216" x1="2880" />
            <wire x2="3072" y1="1216" y2="1264" x1="3072" />
            <wire x2="3072" y1="1264" y2="1344" x1="3072" />
            <wire x2="3072" y1="1344" y2="1424" x1="3072" />
            <wire x2="3072" y1="1424" y2="1504" x1="3072" />
            <wire x2="3072" y1="1504" y2="1584" x1="3072" />
            <wire x2="3072" y1="1584" y2="1664" x1="3072" />
            <wire x2="3072" y1="1664" y2="1744" x1="3072" />
            <wire x2="3072" y1="1744" y2="1824" x1="3072" />
            <wire x2="3072" y1="1824" y2="1872" x1="3072" />
        </branch>
        <bustap x2="3168" y1="1264" y2="1264" x1="3072" />
        <bustap x2="3168" y1="1344" y2="1344" x1="3072" />
        <bustap x2="3168" y1="1424" y2="1424" x1="3072" />
        <bustap x2="3168" y1="1504" y2="1504" x1="3072" />
        <branch name="OUT_BUS(7)">
            <wire x2="3280" y1="1264" y2="1264" x1="3168" />
        </branch>
        <branch name="OUT_BUS(6)">
            <wire x2="3280" y1="1344" y2="1344" x1="3168" />
        </branch>
        <branch name="OUT_BUS(5)">
            <wire x2="3280" y1="1424" y2="1424" x1="3168" />
        </branch>
        <branch name="OUT_BUS(4)">
            <wire x2="3280" y1="1504" y2="1504" x1="3168" />
        </branch>
        <branch name="MODE">
            <wire x2="2304" y1="976" y2="976" x1="2256" />
            <wire x2="2304" y1="976" y2="1280" x1="2304" />
            <wire x2="2320" y1="1280" y2="1280" x1="2304" />
        </branch>
        <instance x="2320" y="1376" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3280" y="1264" name="OUT_BUS(7)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1344" name="OUT_BUS(6)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1424" name="OUT_BUS(5)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1504" name="OUT_BUS(4)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="976" name="MODE" orien="R180" />
        <bustap x2="3168" y1="1584" y2="1584" x1="3072" />
        <bustap x2="3168" y1="1664" y2="1664" x1="3072" />
        <bustap x2="3168" y1="1744" y2="1744" x1="3072" />
        <bustap x2="3168" y1="1824" y2="1824" x1="3072" />
        <branch name="OUT_BUS(3)">
            <wire x2="3280" y1="1584" y2="1584" x1="3168" />
        </branch>
        <branch name="OUT_BUS(2)">
            <wire x2="3280" y1="1664" y2="1664" x1="3168" />
        </branch>
        <branch name="OUT_BUS(1)">
            <wire x2="3280" y1="1744" y2="1744" x1="3168" />
        </branch>
        <branch name="OUT_BUS(0)">
            <wire x2="3280" y1="1824" y2="1824" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1584" name="OUT_BUS(3)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1664" name="OUT_BUS(2)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1744" name="OUT_BUS(1)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1824" name="OUT_BUS(0)" orien="R0" />
        <instance x="1840" y="1920" name="XLXI_10" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2272" y1="1664" y2="1664" x1="2224" />
            <wire x2="2272" y1="1344" y2="1664" x1="2272" />
            <wire x2="2320" y1="1344" y2="1344" x1="2272" />
        </branch>
        <branch name="CNT_BUS(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1837" y="1200" type="branch" />
            <wire x2="1888" y1="1200" y2="1200" x1="1792" />
            <wire x2="1888" y1="1200" y2="1504" x1="1888" />
            <wire x2="2080" y1="1504" y2="1504" x1="1888" />
            <wire x2="2080" y1="1440" y2="1504" x1="2080" />
        </branch>
        <branch name="CNT_BUS(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1831" y="1264" type="branch" />
            <wire x2="1808" y1="1264" y2="1264" x1="1792" />
            <wire x2="1808" y1="1264" y2="1488" x1="1808" />
            <wire x2="2144" y1="1488" y2="1488" x1="1808" />
            <wire x2="2144" y1="1440" y2="1488" x1="2144" />
        </branch>
        <instance x="736" y="1424" name="XLXI_2" orien="R0" />
        <instance x="1200" y="1424" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="1264" y="1664" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1552" y="1568" name="SPEED" orien="R180" />
        <instance x="1536" y="1696" name="XLXI_14" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1840" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="RESET">
            <wire x2="1536" y1="1664" y2="1664" x1="1264" />
        </branch>
        <instance x="1616" y="1600" name="XLXI_15" orien="R0" />
        <branch name="SPEED">
            <wire x2="1616" y1="1568" y2="1568" x1="1552" />
        </branch>
        <instance x="1952" y="1440" name="XLXI_12" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1856" y1="1568" y2="1568" x1="1840" />
            <wire x2="1952" y1="1344" y2="1344" x1="1856" />
            <wire x2="1856" y1="1344" y2="1568" x1="1856" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1840" y1="1792" y2="1792" x1="1776" />
            <wire x2="1776" y1="1792" y2="1920" x1="1776" />
            <wire x2="2256" y1="1920" y2="1920" x1="1776" />
            <wire x2="2144" y1="1200" y2="1216" x1="2144" />
            <wire x2="2256" y1="1200" y2="1200" x1="2144" />
            <wire x2="2256" y1="1200" y2="1216" x1="2256" />
            <wire x2="2320" y1="1216" y2="1216" x1="2256" />
            <wire x2="2256" y1="1216" y2="1920" x1="2256" />
        </branch>
    </sheet>
</drawing>