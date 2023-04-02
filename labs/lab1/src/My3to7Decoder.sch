<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OUT_0" />
        <signal name="IN_0" />
        <signal name="IN_1" />
        <signal name="IN_2" />
        <signal name="OUT_1" />
        <signal name="OUT_2" />
        <signal name="OUT_3" />
        <signal name="OUT_4" />
        <signal name="OUT_7" />
        <signal name="OUT_5" />
        <port polarity="Output" name="OUT_0" />
        <port polarity="Input" name="IN_0" />
        <port polarity="Input" name="IN_1" />
        <port polarity="Input" name="IN_2" />
        <port polarity="Output" name="OUT_1" />
        <port polarity="Output" name="OUT_2" />
        <port polarity="Output" name="OUT_3" />
        <port polarity="Output" name="OUT_4" />
        <port polarity="Output" name="OUT_7" />
        <port polarity="Output" name="OUT_5" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
        </blockdef>
        <block symbolname="and3b3" name="XLXI_10">
            <blockpin signalname="IN_0" name="I0" />
            <blockpin signalname="IN_1" name="I1" />
            <blockpin signalname="IN_2" name="I2" />
            <blockpin signalname="OUT_0" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_11">
            <blockpin signalname="IN_2" name="I0" />
            <blockpin signalname="IN_1" name="I1" />
            <blockpin signalname="IN_0" name="I2" />
            <blockpin signalname="OUT_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="IN_2" name="I0" />
            <blockpin signalname="IN_1" name="I1" />
            <blockpin signalname="IN_0" name="I2" />
            <blockpin signalname="OUT_7" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_13">
            <blockpin signalname="IN_0" name="I0" />
            <blockpin signalname="IN_2" name="I1" />
            <blockpin signalname="IN_1" name="I2" />
            <blockpin signalname="OUT_2" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_14">
            <blockpin signalname="IN_2" name="I0" />
            <blockpin signalname="IN_1" name="I1" />
            <blockpin signalname="IN_0" name="I2" />
            <blockpin signalname="OUT_3" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_15">
            <blockpin signalname="IN_0" name="I0" />
            <blockpin signalname="IN_1" name="I1" />
            <blockpin signalname="IN_2" name="I2" />
            <blockpin signalname="OUT_4" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_16">
            <blockpin signalname="IN_1" name="I0" />
            <blockpin signalname="IN_0" name="I1" />
            <blockpin signalname="IN_2" name="I2" />
            <blockpin signalname="OUT_5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="560" y="1920" name="XLXI_10" orien="M180" />
        <branch name="OUT_0">
            <wire x2="848" y1="2048" y2="2048" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="2048" name="OUT_0" orien="R0" />
        <branch name="IN_0">
            <wire x2="304" y1="1984" y2="1984" x1="240" />
            <wire x2="560" y1="1984" y2="1984" x1="304" />
            <wire x2="544" y1="592" y2="592" x1="304" />
            <wire x2="304" y1="592" y2="912" x1="304" />
            <wire x2="304" y1="912" y2="1008" x1="304" />
            <wire x2="304" y1="1008" y2="1264" x1="304" />
            <wire x2="304" y1="1264" y2="1328" x1="304" />
            <wire x2="304" y1="1328" y2="1648" x1="304" />
            <wire x2="304" y1="1648" y2="1744" x1="304" />
            <wire x2="304" y1="1744" y2="1984" x1="304" />
            <wire x2="560" y1="1744" y2="1744" x1="304" />
            <wire x2="560" y1="1648" y2="1648" x1="304" />
            <wire x2="560" y1="1328" y2="1328" x1="304" />
            <wire x2="560" y1="1264" y2="1264" x1="304" />
            <wire x2="560" y1="1008" y2="1008" x1="304" />
        </branch>
        <branch name="IN_1">
            <wire x2="368" y1="2048" y2="2048" x1="240" />
            <wire x2="560" y1="2048" y2="2048" x1="368" />
            <wire x2="544" y1="656" y2="656" x1="368" />
            <wire x2="368" y1="656" y2="784" x1="368" />
            <wire x2="368" y1="784" y2="1072" x1="368" />
            <wire x2="368" y1="1072" y2="1200" x1="368" />
            <wire x2="368" y1="1200" y2="1392" x1="368" />
            <wire x2="368" y1="1392" y2="1520" x1="368" />
            <wire x2="368" y1="1520" y2="1808" x1="368" />
            <wire x2="368" y1="1808" y2="2048" x1="368" />
            <wire x2="560" y1="1808" y2="1808" x1="368" />
            <wire x2="560" y1="1520" y2="1520" x1="368" />
            <wire x2="560" y1="1392" y2="1392" x1="368" />
            <wire x2="560" y1="1200" y2="1200" x1="368" />
            <wire x2="560" y1="1072" y2="1072" x1="368" />
        </branch>
        <branch name="IN_2">
            <wire x2="448" y1="2112" y2="2112" x1="240" />
            <wire x2="560" y1="2112" y2="2112" x1="448" />
            <wire x2="544" y1="720" y2="720" x1="448" />
            <wire x2="448" y1="720" y2="848" x1="448" />
            <wire x2="448" y1="848" y2="944" x1="448" />
            <wire x2="448" y1="944" y2="1136" x1="448" />
            <wire x2="448" y1="1136" y2="1456" x1="448" />
            <wire x2="448" y1="1456" y2="1584" x1="448" />
            <wire x2="448" y1="1584" y2="1872" x1="448" />
            <wire x2="448" y1="1872" y2="2112" x1="448" />
            <wire x2="560" y1="1872" y2="1872" x1="448" />
            <wire x2="560" y1="1584" y2="1584" x1="448" />
            <wire x2="560" y1="1456" y2="1456" x1="448" />
            <wire x2="560" y1="1136" y2="1136" x1="448" />
            <wire x2="560" y1="944" y2="944" x1="448" />
        </branch>
        <iomarker fontsize="28" x="240" y="1984" name="IN_0" orien="R180" />
        <iomarker fontsize="28" x="240" y="2048" name="IN_1" orien="R180" />
        <iomarker fontsize="28" x="240" y="2112" name="IN_2" orien="R180" />
        <instance x="560" y="1936" name="XLXI_11" orien="R0" />
        <instance x="560" y="1712" name="XLXI_13" orien="R0" />
        <instance x="560" y="1520" name="XLXI_14" orien="R0" />
        <instance x="560" y="1328" name="XLXI_15" orien="R0" />
        <instance x="544" y="784" name="XLXI_12" orien="R0" />
        <instance x="560" y="1136" name="XLXI_16" orien="R0" />
        <branch name="OUT_1">
            <wire x2="848" y1="1808" y2="1808" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="1808" name="OUT_1" orien="R0" />
        <branch name="OUT_2">
            <wire x2="848" y1="1584" y2="1584" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="1584" name="OUT_2" orien="R0" />
        <branch name="OUT_3">
            <wire x2="848" y1="1392" y2="1392" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="1392" name="OUT_3" orien="R0" />
        <branch name="OUT_4">
            <wire x2="848" y1="1200" y2="1200" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="1200" name="OUT_4" orien="R0" />
        <branch name="OUT_7">
            <wire x2="816" y1="656" y2="656" x1="800" />
            <wire x2="832" y1="656" y2="656" x1="816" />
        </branch>
        <iomarker fontsize="28" x="832" y="656" name="OUT_7" orien="R0" />
        <branch name="OUT_5">
            <wire x2="848" y1="1008" y2="1008" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="1008" name="OUT_5" orien="R0" />
    </sheet>
</drawing>
