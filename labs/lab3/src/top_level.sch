<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RAM_ADDR(1:0)" />
        <signal name="RAM_WR" />
        <signal name="ALU_OUT(7:0)" />
        <signal name="ACC_WR" />
        <signal name="ACC_RST" />
        <signal name="ACC_OUT(7:0)" />
        <signal name="MUX_OUT(7:0)" />
        <signal name="OP_CODE(1:0)" />
        <signal name="IN_SEL(1:0)" />
        <signal name="RAM_OUT(7:0)" />
        <signal name="DATA_IN(7:0)" />
        <signal name="ENTER_OP1" />
        <signal name="ENTER_OP2" />
        <signal name="CALC" />
        <signal name="RESET" />
        <signal name="CLOCK" />
        <signal name="COMM_ONES" />
        <signal name="COMM_DECS" />
        <signal name="COMM_HUNDREDS" />
        <signal name="SEG_A" />
        <signal name="SEG_B" />
        <signal name="SEG_C" />
        <signal name="SEG_D" />
        <signal name="SEG_E" />
        <signal name="SEG_F" />
        <signal name="SEG_G" />
        <signal name="DP" />
        <port polarity="Input" name="DATA_IN(7:0)" />
        <port polarity="Input" name="ENTER_OP1" />
        <port polarity="Input" name="ENTER_OP2" />
        <port polarity="Input" name="CALC" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Output" name="COMM_ONES" />
        <port polarity="Output" name="COMM_DECS" />
        <port polarity="Output" name="COMM_HUNDREDS" />
        <port polarity="Output" name="SEG_A" />
        <port polarity="Output" name="SEG_B" />
        <port polarity="Output" name="SEG_C" />
        <port polarity="Output" name="SEG_D" />
        <port polarity="Output" name="SEG_E" />
        <port polarity="Output" name="SEG_F" />
        <port polarity="Output" name="SEG_G" />
        <port polarity="Output" name="DP" />
        <blockdef name="CU_INTF">
            <timestamp>2023-6-1T7:55:53</timestamp>
            <rect width="384" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="512" y1="-416" y2="-416" x1="448" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <line x2="512" y1="-288" y2="-288" x1="448" />
            <rect width="64" x="448" y="-236" height="24" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="RAM_INTF">
            <timestamp>2023-6-1T7:26:59</timestamp>
            <rect width="400" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
        </blockdef>
        <blockdef name="MUX_INTF">
            <timestamp>2023-6-1T7:27:10</timestamp>
            <rect width="416" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
        </blockdef>
        <blockdef name="ALU_INTF">
            <timestamp>2023-6-1T7:53:48</timestamp>
            <rect width="544" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="608" y="-172" height="24" />
            <line x2="672" y1="-160" y2="-160" x1="608" />
        </blockdef>
        <blockdef name="ACC_INTF">
            <timestamp>2023-6-1T7:27:24</timestamp>
            <rect width="432" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-236" height="24" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
        </blockdef>
        <blockdef name="DECODER_INTF">
            <timestamp>2023-6-1T7:27:37</timestamp>
            <rect width="496" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="624" y1="-672" y2="-672" x1="560" />
            <line x2="624" y1="-608" y2="-608" x1="560" />
            <line x2="624" y1="-544" y2="-544" x1="560" />
            <line x2="624" y1="-480" y2="-480" x1="560" />
            <line x2="624" y1="-416" y2="-416" x1="560" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <line x2="624" y1="-288" y2="-288" x1="560" />
            <line x2="624" y1="-224" y2="-224" x1="560" />
            <line x2="624" y1="-160" y2="-160" x1="560" />
            <line x2="624" y1="-96" y2="-96" x1="560" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <block symbolname="CU_INTF" name="XLXI_1">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ENTER_OP1" name="ENTER_OP1" />
            <blockpin signalname="ENTER_OP2" name="ENTER_OP2" />
            <blockpin signalname="CALC" name="CALCULATE" />
            <blockpin signalname="RAM_WR" name="RAM_WR" />
            <blockpin signalname="ACC_WR" name="ACC_WR" />
            <blockpin signalname="ACC_RST" name="ACC_RST" />
            <blockpin signalname="RAM_ADDR(1:0)" name="RAM_ADDR_BUS(1:0)" />
            <blockpin signalname="IN_SEL(1:0)" name="IN_SEL(1:0)" />
            <blockpin signalname="OP_CODE(1:0)" name="OP_CODE_BUS(1:0)" />
        </block>
        <block symbolname="RAM_INTF" name="XLXI_2">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="RAM_WR" name="WR" />
            <blockpin signalname="ALU_OUT(7:0)" name="DATA_IN_BUS(7:0)" />
            <blockpin signalname="RAM_ADDR(1:0)" name="ADDRESS_BUS(1:0)" />
            <blockpin signalname="RAM_OUT(7:0)" name="DATA_OUT(7:0)" />
        </block>
        <block symbolname="MUX_INTF" name="XLXI_3">
            <blockpin signalname="IN_SEL(1:0)" name="SEL_IN_BUS(1:0)" />
            <blockpin signalname="RAM_OUT(7:0)" name="RAM_DATA_BUS(7:0)" />
            <blockpin signalname="DATA_IN(7:0)" name="DATA_INPUT_BUS(7:0)" />
            <blockpin signalname="MUX_OUT(7:0)" name="DATA_OUT(7:0)" />
        </block>
        <block symbolname="ACC_INTF" name="XLXI_5">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="ACC_WR" name="WR" />
            <blockpin signalname="ACC_RST" name="RST" />
            <blockpin signalname="ALU_OUT(7:0)" name="DATA_IN_BUS(7:0)" />
            <blockpin signalname="ACC_OUT(7:0)" name="DATA_OUT_BUS(7:0)" />
        </block>
        <block symbolname="ALU_INTF" name="XLXI_8">
            <blockpin signalname="OP_CODE(1:0)" name="OP_CODE_BUS(1:0)" />
            <blockpin signalname="MUX_OUT(7:0)" name="MUX_OUT_BUS(7:0)" />
            <blockpin signalname="ACC_OUT(7:0)" name="ACC_DATA_OUT_BUS(7:0)" />
            <blockpin signalname="ALU_OUT(7:0)" name="ACC_DATA_IN_BUS(7:0)" />
        </block>
        <block symbolname="DECODER_INTF" name="XLXI_10">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ACC_OUT(7:0)" name="ACC_DATA_OUT_BUS(7:0)" />
            <blockpin signalname="COMM_ONES" name="COMM_ONES" />
            <blockpin signalname="COMM_DECS" name="COMM_DECS" />
            <blockpin signalname="COMM_HUNDREDS" name="COMM_HUNDREDS" />
            <blockpin signalname="SEG_A" name="SEG_A" />
            <blockpin signalname="SEG_B" name="SEG_B" />
            <blockpin signalname="SEG_C" name="SEG_C" />
            <blockpin signalname="SEG_D" name="SEG_D" />
            <blockpin signalname="SEG_E" name="SEG_E" />
            <blockpin signalname="SEG_F" name="SEG_F" />
            <blockpin signalname="SEG_G" name="SEG_G" />
            <blockpin signalname="DP" name="DP" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="384" y="656" name="XLXI_1" orien="R0">
        </instance>
        <branch name="RAM_ADDR(1:0)">
            <wire x2="1712" y1="432" y2="432" x1="896" />
            <wire x2="1712" y1="368" y2="432" x1="1712" />
            <wire x2="2528" y1="368" y2="368" x1="1712" />
        </branch>
        <branch name="RAM_WR">
            <wire x2="2528" y1="240" y2="240" x1="896" />
        </branch>
        <branch name="ALU_OUT(7:0)">
            <wire x2="2352" y1="1280" y2="1568" x1="2352" />
            <wire x2="2432" y1="1568" y2="1568" x1="2352" />
            <wire x2="2496" y1="1280" y2="1280" x1="2352" />
            <wire x2="2496" y1="1008" y2="1008" x1="2464" />
            <wire x2="2496" y1="1008" y2="1280" x1="2496" />
            <wire x2="2528" y1="304" y2="304" x1="2496" />
            <wire x2="2496" y1="304" y2="1008" x1="2496" />
        </branch>
        <branch name="ACC_WR">
            <wire x2="1696" y1="304" y2="304" x1="896" />
            <wire x2="1696" y1="304" y2="1440" x1="1696" />
            <wire x2="2432" y1="1440" y2="1440" x1="1696" />
        </branch>
        <branch name="ACC_RST">
            <wire x2="992" y1="368" y2="368" x1="896" />
            <wire x2="992" y1="368" y2="1504" x1="992" />
            <wire x2="2432" y1="1504" y2="1504" x1="992" />
        </branch>
        <branch name="ACC_OUT(7:0)">
            <wire x2="1792" y1="1136" y2="1136" x1="1744" />
            <wire x2="1744" y1="1136" y2="1248" x1="1744" />
            <wire x2="3152" y1="1248" y2="1248" x1="1744" />
            <wire x2="3152" y1="1248" y2="1376" x1="3152" />
            <wire x2="3152" y1="1376" y2="2464" x1="3152" />
            <wire x2="3152" y1="1376" y2="1376" x1="2992" />
            <wire x2="3152" y1="2464" y2="2464" x1="3008" />
        </branch>
        <branch name="MUX_OUT(7:0)">
            <wire x2="1680" y1="752" y2="752" x1="1664" />
            <wire x2="1680" y1="752" y2="1072" x1="1680" />
            <wire x2="1792" y1="1072" y2="1072" x1="1680" />
        </branch>
        <branch name="OP_CODE(1:0)">
            <wire x2="960" y1="624" y2="624" x1="896" />
            <wire x2="960" y1="624" y2="1008" x1="960" />
            <wire x2="1792" y1="1008" y2="1008" x1="960" />
        </branch>
        <branch name="IN_SEL(1:0)">
            <wire x2="912" y1="560" y2="560" x1="896" />
            <wire x2="912" y1="560" y2="752" x1="912" />
            <wire x2="1120" y1="752" y2="752" x1="912" />
        </branch>
        <branch name="RAM_OUT(7:0)">
            <wire x2="1104" y1="640" y2="816" x1="1104" />
            <wire x2="1120" y1="816" y2="816" x1="1104" />
            <wire x2="3136" y1="640" y2="640" x1="1104" />
            <wire x2="3136" y1="176" y2="176" x1="3056" />
            <wire x2="3136" y1="176" y2="640" x1="3136" />
        </branch>
        <branch name="DATA_IN(7:0)">
            <wire x2="272" y1="1120" y2="1120" x1="256" />
            <wire x2="1120" y1="880" y2="880" x1="272" />
            <wire x2="272" y1="880" y2="1120" x1="272" />
        </branch>
        <branch name="ENTER_OP1">
            <wire x2="384" y1="368" y2="368" x1="256" />
        </branch>
        <branch name="ENTER_OP2">
            <wire x2="384" y1="432" y2="432" x1="256" />
        </branch>
        <branch name="CALC">
            <wire x2="384" y1="496" y2="496" x1="160" />
        </branch>
        <branch name="RESET">
            <wire x2="368" y1="304" y2="304" x1="176" />
            <wire x2="384" y1="304" y2="304" x1="368" />
            <wire x2="368" y1="32" y2="304" x1="368" />
            <wire x2="3232" y1="32" y2="32" x1="368" />
            <wire x2="3232" y1="32" y2="2144" x1="3232" />
            <wire x2="3232" y1="2144" y2="2144" x1="3008" />
        </branch>
        <branch name="CLOCK">
            <wire x2="336" y1="240" y2="240" x1="176" />
            <wire x2="384" y1="240" y2="240" x1="336" />
            <wire x2="336" y1="240" y2="1376" x1="336" />
            <wire x2="2432" y1="1376" y2="1376" x1="336" />
            <wire x2="336" y1="1376" y2="1664" x1="336" />
            <wire x2="3072" y1="1664" y2="1664" x1="336" />
            <wire x2="3072" y1="1664" y2="1824" x1="3072" />
            <wire x2="2528" y1="112" y2="112" x1="336" />
            <wire x2="2528" y1="112" y2="176" x1="2528" />
            <wire x2="336" y1="112" y2="240" x1="336" />
            <wire x2="3072" y1="1824" y2="1824" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="256" y="368" name="ENTER_OP1" orien="R180" />
        <iomarker fontsize="28" x="256" y="432" name="ENTER_OP2" orien="R180" />
        <iomarker fontsize="28" x="176" y="304" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="176" y="240" name="CLOCK" orien="R180" />
        <iomarker fontsize="28" x="160" y="496" name="CALC" orien="R180" />
        <iomarker fontsize="28" x="256" y="1120" name="DATA_IN(7:0)" orien="R180" />
        <instance x="1120" y="912" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1792" y="1168" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2432" y="1600" name="XLXI_5" orien="R0">
        </instance>
        <instance x="3008" y="2496" name="XLXI_10" orien="M0">
        </instance>
        <instance x="2528" y="400" name="XLXI_2" orien="R0">
        </instance>
        <branch name="COMM_ONES">
            <wire x2="2384" y1="1824" y2="1824" x1="2080" />
        </branch>
        <branch name="COMM_DECS">
            <wire x2="2368" y1="1888" y2="1888" x1="2080" />
            <wire x2="2384" y1="1888" y2="1888" x1="2368" />
        </branch>
        <branch name="COMM_HUNDREDS">
            <wire x2="2368" y1="1952" y2="1952" x1="2080" />
            <wire x2="2384" y1="1952" y2="1952" x1="2368" />
        </branch>
        <branch name="SEG_A">
            <wire x2="2368" y1="2016" y2="2016" x1="2080" />
            <wire x2="2384" y1="2016" y2="2016" x1="2368" />
        </branch>
        <branch name="SEG_B">
            <wire x2="2368" y1="2080" y2="2080" x1="2080" />
            <wire x2="2384" y1="2080" y2="2080" x1="2368" />
        </branch>
        <branch name="SEG_C">
            <wire x2="2384" y1="2144" y2="2144" x1="2080" />
        </branch>
        <branch name="SEG_D">
            <wire x2="2368" y1="2208" y2="2208" x1="2080" />
            <wire x2="2384" y1="2208" y2="2208" x1="2368" />
        </branch>
        <branch name="SEG_E">
            <wire x2="2368" y1="2272" y2="2272" x1="2080" />
            <wire x2="2384" y1="2272" y2="2272" x1="2368" />
        </branch>
        <branch name="SEG_F">
            <wire x2="2368" y1="2336" y2="2336" x1="2080" />
            <wire x2="2384" y1="2336" y2="2336" x1="2368" />
        </branch>
        <branch name="SEG_G">
            <wire x2="2384" y1="2400" y2="2400" x1="2080" />
        </branch>
        <branch name="DP">
            <wire x2="2368" y1="2464" y2="2464" x1="2080" />
            <wire x2="2384" y1="2464" y2="2464" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1824" name="COMM_ONES" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2144" name="SEG_C" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2400" name="SEG_G" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2464" name="DP" orien="R180" />
        <iomarker fontsize="28" x="2080" y="1888" name="COMM_DECS" orien="R180" />
        <iomarker fontsize="28" x="2080" y="1952" name="COMM_HUNDREDS" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2016" name="SEG_A" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2080" name="SEG_B" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2208" name="SEG_D" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2272" name="SEG_E" orien="R180" />
        <iomarker fontsize="28" x="2080" y="2336" name="SEG_F" orien="R180" />
    </sheet>
</drawing>