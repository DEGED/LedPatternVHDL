<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_24" />
        <signal name="XLXN_28" />
        <signal name="LED(7:0)" />
        <signal name="BTN_East" />
        <signal name="XLXN_33" />
        <signal name="clock" />
        <signal name="BTN_West" />
        <signal name="XLXN_16" />
        <signal name="XLXN_37" />
        <signal name="XLXN_15" />
        <signal name="XLXN_21" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="BTN_East" />
        <port polarity="Input" name="clock" />
        <port polarity="Input" name="BTN_West" />
        <blockdef name="led_pattern">
            <timestamp>2020-10-29T19:34:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="debounce">
            <timestamp>2020-10-29T20:20:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="led_pattern" name="XLXI_1">
            <blockpin signalname="XLXN_16" name="RIGHT" />
            <blockpin signalname="XLXN_15" name="LEFT" />
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="LED(7:0)" name="led(7:0)" />
        </block>
        <block symbolname="debounce" name="XLXI_2">
            <blockpin signalname="BTN_East" name="D_IN" />
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_21" name="reset" />
            <blockpin signalname="XLXN_16" name="Q_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_3">
            <blockpin signalname="BTN_West" name="D_IN" />
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_21" name="reset" />
            <blockpin signalname="XLXN_15" name="Q_OUT" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_21" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="LED(7:0)">
            <wire x2="1680" y1="432" y2="432" x1="1600" />
        </branch>
        <instance x="1216" y="592" name="XLXI_1" orien="R0">
        </instance>
        <instance x="784" y="416" name="XLXI_2" orien="R0">
        </instance>
        <branch name="BTN_East">
            <wire x2="784" y1="256" y2="256" x1="592" />
        </branch>
        <branch name="clock">
            <wire x2="704" y1="816" y2="816" x1="560" />
            <wire x2="784" y1="320" y2="320" x1="704" />
            <wire x2="704" y1="320" y2="544" x1="704" />
            <wire x2="704" y1="544" y2="560" x1="704" />
            <wire x2="1216" y1="560" y2="560" x1="704" />
            <wire x2="704" y1="560" y2="736" x1="704" />
            <wire x2="704" y1="736" y2="816" x1="704" />
            <wire x2="784" y1="736" y2="736" x1="704" />
        </branch>
        <branch name="BTN_West">
            <wire x2="768" y1="672" y2="672" x1="592" />
            <wire x2="784" y1="672" y2="672" x1="768" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1184" y1="256" y2="256" x1="1168" />
            <wire x2="1184" y1="256" y2="432" x1="1184" />
            <wire x2="1216" y1="432" y2="432" x1="1184" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1200" y1="672" y2="672" x1="1168" />
            <wire x2="1216" y1="496" y2="496" x1="1200" />
            <wire x2="1200" y1="496" y2="672" x1="1200" />
        </branch>
        <instance x="784" y="832" name="XLXI_3" orien="R0">
        </instance>
        <instance x="672" y="976" name="XLXI_5" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="784" y1="384" y2="384" x1="736" />
            <wire x2="736" y1="384" y2="800" x1="736" />
            <wire x2="736" y1="800" y2="848" x1="736" />
            <wire x2="784" y1="800" y2="800" x1="736" />
        </branch>
        <iomarker fontsize="28" x="1680" y="432" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="592" y="256" name="BTN_East" orien="R180" />
        <iomarker fontsize="28" x="560" y="816" name="clock" orien="R180" />
        <iomarker fontsize="28" x="592" y="672" name="BTN_West" orien="R180" />
    </sheet>
</drawing>