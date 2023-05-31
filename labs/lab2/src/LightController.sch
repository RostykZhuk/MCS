<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="NS_BUS(2:0)" />
        <signal name="NS_BUS(2)" />
        <signal name="NS_BUS(1)" />
        <signal name="CUR_S_BUS(2:0)" />
        <signal name="CUR_S_BUS(2)" />
        <signal name="CUR_S_BUS(1)" />
        <signal name="OUTB(7:0)" />
        <signal name="OUTB(7)" />
        <signal name="OUTB(6)" />
        <signal name="OUTB(5)" />
        <signal name="OUTB(4)" />
        <signal name="MODE" />
        <signal name="RESET_LC" />
        <signal name="OUTB(2)" />
        <signal name="OUTB(1)" />
        <signal name="OUTB(0)" />
        <signal name="OUTB(3)" />
        <signal name="CLK" />
        <signal name="NS_BUS(0)" />
        <signal name="CUR_S_BUS(0)" />
        <port polarity="Output" name="OUTB(7)" />
        <port polarity="Output" name="OUTB(6)" />
        <port polarity="Output" name="OUTB(5)" />
        <port polarity="Output" name="OUTB(4)" />
        <port polarity="Input" name="MODE" />
        <port polarity="Input" name="RESET_LC" />
        <port polarity="Output" name="OUTB(2)" />
        <port polarity="Output" name="OUTB(1)" />
        <port polarity="Output" name="OUTB(0)" />
        <port polarity="Output" name="OUTB(3)" />
        <port polarity="Input" name="CLK" />
        <blockdef name="out_logic_intf">
            <timestamp>2023-4-10T18:12:49</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="transition_logic_intf">
            <timestamp>2023-4-10T18:49:52</timestamp>
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect width="64" x="448" y="-156" height="24" />
            <line x2="512" y1="-144" y2="-144" x1="448" />
            <rect width="384" x="64" y="-192" height="220" />
            <line x2="64" y1="0" y2="0" x1="0" />
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
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(2)" name="D" />
            <blockpin signalname="CUR_S_BUS(2)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(1)" name="D" />
            <blockpin signalname="CUR_S_BUS(1)" name="Q" />
        </block>
        <block symbolname="out_logic_intf" name="XLXI_6">
            <blockpin signalname="CUR_S_BUS(2:0)" name="IN_BUS(2:0)" />
            <blockpin signalname="OUTB(7:0)" name="OUT_BUS(7:0)" />
        </block>
        <block symbolname="transition_logic_intf" name="XLXI_7">
            <blockpin signalname="MODE" name="MODE" />
            <blockpin signalname="CUR_S_BUS(2:0)" name="CUR_STATE(2:0)" />
            <blockpin signalname="NS_BUS(2:0)" name="NEXT_STATE(2:0)" />
            <blockpin signalname="RESET_LC" name="RES" />
        </block>
        <block symbolname="fd" name="XLXI_8">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(0)" name="D" />
            <blockpin signalname="CUR_S_BUS(0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="NS_BUS(2:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1472" type="branch" />
            <wire x2="976" y1="1120" y2="1120" x1="848" />
            <wire x2="976" y1="1120" y2="1184" x1="976" />
            <wire x2="976" y1="1184" y2="1472" x1="976" />
            <wire x2="976" y1="1472" y2="1664" x1="976" />
            <wire x2="976" y1="1664" y2="2112" x1="976" />
            <wire x2="976" y1="2112" y2="2384" x1="976" />
        </branch>
        <bustap x2="1072" y1="1664" y2="1664" x1="976" />
        <bustap x2="1072" y1="1184" y2="1184" x1="976" />
        <instance x="1232" y="1440" name="XLXI_4" orien="R0" />
        <instance x="1232" y="1920" name="XLXI_5" orien="R0" />
        <branch name="NS_BUS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1184" type="branch" />
            <wire x2="1120" y1="1184" y2="1184" x1="1072" />
            <wire x2="1232" y1="1184" y2="1184" x1="1120" />
        </branch>
        <branch name="NS_BUS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1664" type="branch" />
            <wire x2="1088" y1="1664" y2="1664" x1="1072" />
            <wire x2="1232" y1="1664" y2="1664" x1="1088" />
        </branch>
        <branch name="CUR_S_BUS(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2544" type="branch" />
            <wire x2="336" y1="1184" y2="1184" x1="288" />
            <wire x2="288" y1="1184" y2="2544" x1="288" />
            <wire x2="976" y1="2544" y2="2544" x1="288" />
            <wire x2="1936" y1="2544" y2="2544" x1="976" />
            <wire x2="1936" y1="1088" y2="1184" x1="1936" />
            <wire x2="1936" y1="1184" y2="1424" x1="1936" />
            <wire x2="1936" y1="1424" y2="1664" x1="1936" />
            <wire x2="1936" y1="1664" y2="2112" x1="1936" />
            <wire x2="1936" y1="2112" y2="2544" x1="1936" />
            <wire x2="2176" y1="1424" y2="1424" x1="1936" />
        </branch>
        <bustap x2="1840" y1="1184" y2="1184" x1="1936" />
        <bustap x2="1840" y1="1664" y2="1664" x1="1936" />
        <branch name="CUR_S_BUS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1184" type="branch" />
            <wire x2="1744" y1="1184" y2="1184" x1="1616" />
            <wire x2="1840" y1="1184" y2="1184" x1="1744" />
        </branch>
        <branch name="CUR_S_BUS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1664" type="branch" />
            <wire x2="1760" y1="1664" y2="1664" x1="1616" />
            <wire x2="1840" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="OUTB(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1424" type="branch" />
            <wire x2="2640" y1="1424" y2="1424" x1="2608" />
            <wire x2="2672" y1="1424" y2="1424" x1="2640" />
            <wire x2="2784" y1="1424" y2="1424" x1="2672" />
            <wire x2="2784" y1="1424" y2="1520" x1="2784" />
            <wire x2="2784" y1="1520" y2="1616" x1="2784" />
            <wire x2="2784" y1="1616" y2="1712" x1="2784" />
            <wire x2="2784" y1="1712" y2="1808" x1="2784" />
            <wire x2="2784" y1="1808" y2="1904" x1="2784" />
            <wire x2="2784" y1="1904" y2="2000" x1="2784" />
            <wire x2="2784" y1="2000" y2="2096" x1="2784" />
            <wire x2="2784" y1="2096" y2="2208" x1="2784" />
            <wire x2="2784" y1="2208" y2="2544" x1="2784" />
        </branch>
        <bustap x2="2880" y1="1520" y2="1520" x1="2784" />
        <bustap x2="2880" y1="1616" y2="1616" x1="2784" />
        <bustap x2="2880" y1="1712" y2="1712" x1="2784" />
        <bustap x2="2880" y1="1808" y2="1808" x1="2784" />
        <branch name="OUTB(7)">
            <wire x2="3152" y1="1520" y2="1520" x1="2880" />
        </branch>
        <branch name="OUTB(6)">
            <wire x2="3152" y1="1616" y2="1616" x1="2880" />
        </branch>
        <branch name="OUTB(5)">
            <wire x2="3152" y1="1712" y2="1712" x1="2880" />
        </branch>
        <branch name="OUTB(4)">
            <wire x2="3152" y1="1808" y2="1808" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1520" name="OUTB(7)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1616" name="OUTB(6)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1712" name="OUTB(5)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1808" name="OUTB(4)" orien="R0" />
        <instance x="2176" y="1456" name="XLXI_6" orien="R0">
        </instance>
        <instance x="336" y="1264" name="XLXI_7" orien="R0">
        </instance>
        <branch name="MODE">
            <wire x2="336" y1="1120" y2="1120" x1="272" />
        </branch>
        <branch name="RESET_LC">
            <wire x2="336" y1="1264" y2="1264" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1264" name="RESET_LC" orien="R180" />
        <iomarker fontsize="28" x="272" y="1120" name="MODE" orien="R180" />
        <bustap x2="2880" y1="1904" y2="1904" x1="2784" />
        <bustap x2="2880" y1="2000" y2="2000" x1="2784" />
        <bustap x2="2880" y1="2096" y2="2096" x1="2784" />
        <bustap x2="2880" y1="2208" y2="2208" x1="2784" />
        <branch name="OUTB(2)">
            <wire x2="3152" y1="2000" y2="2000" x1="2880" />
        </branch>
        <branch name="OUTB(1)">
            <wire x2="3152" y1="2096" y2="2096" x1="2880" />
        </branch>
        <branch name="OUTB(0)">
            <wire x2="3152" y1="2208" y2="2208" x1="2880" />
        </branch>
        <branch name="OUTB(3)">
            <wire x2="3152" y1="1904" y2="1904" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3152" y="2208" name="OUTB(0)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="2096" name="OUTB(1)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="2000" name="OUTB(2)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1904" name="OUTB(3)" orien="R0" />
        <instance x="1232" y="2368" name="XLXI_8" orien="R0" />
        <bustap x2="1840" y1="2112" y2="2112" x1="1936" />
        <branch name="CLK">
            <wire x2="1136" y1="2240" y2="2240" x1="928" />
            <wire x2="1232" y1="2240" y2="2240" x1="1136" />
            <wire x2="1232" y1="1312" y2="1312" x1="1136" />
            <wire x2="1136" y1="1312" y2="1792" x1="1136" />
            <wire x2="1232" y1="1792" y2="1792" x1="1136" />
            <wire x2="1136" y1="1792" y2="2240" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="928" y="2240" name="CLK" orien="R180" />
        <bustap x2="1072" y1="2112" y2="2112" x1="976" />
        <branch name="NS_BUS(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1107" y="2112" type="branch" />
            <wire x2="1104" y1="2112" y2="2112" x1="1072" />
            <wire x2="1232" y1="2112" y2="2112" x1="1104" />
        </branch>
        <branch name="CUR_S_BUS(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1751" y="2112" type="branch" />
            <wire x2="1744" y1="2112" y2="2112" x1="1616" />
            <wire x2="1840" y1="2112" y2="2112" x1="1744" />
        </branch>
    </sheet>
</drawing>