BEGIN RTLeyThi
BEGIN RTLonk

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",1)~THEN RTLeyThi SaeTrou1
@0
==CVIzy25J IF~InParty("CVIzzy")~THEN@1
==CVSan25J IF~!InParty("CVIzzy")~THEN@2
==RTLeyThi@3
==CVLey25J@4
==RTLeyThi@5
==CVLey25J@6
==RTLeyThi@7
==CVLey25J@8
==RTLeyThi@9
=@10
==CVLey25J@11
END
++@12+ SaeTrou2
++@13+ SaeTrou3
++@14+ SaeTrou2

CHAIN
IF~~THEN RTLeyThi SaeTrou2
@15
DO~SetGlobal("RTLeyPlot1","GLOBAL",3) AddJournalEntry(@2082,QUEST)MoveBetweenAreas("rtf305",[390.599],4)~EXIT

CHAIN
IF~~THEN RTLeyThi SaeTrou3
@16
DO~SetGlobal("RTLeyPlot1","GLOBAL",2) MoveBetweenAreas("rtf305",[390.599],4)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",2) Global("Sanrompath","GLOBAL",1)~THEN  CVLey25J ReconM
@17
DO~SetGlobal("RTLeyPlot1","GLOBAL",3)AddJournalEntry(@2082,QUEST)~
END
++@18 EXIT
++@19EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",2) Global("Sanrompath","GLOBAL",2)~THEN  CVLey25J ReconF
@20
DO~SetGlobal("RTLeyPlot1","GLOBAL",3)AddJournalEntry(@2082,QUEST)~
END
++@21 EXIT
++@19EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",3)~THEN RTSaemon Sheimiss1
@22
DO~SetGlobal("RTLeyPlot1","GLOBAL",4)~
==CVSan25J@23
==CVLey25J@24
==RTSaemon@25
==CVLey25J@26
==RTSaemon@27
==CVLey25J@28
==RTSaemon@29
==CVLey25J@30
==RTSaemon@31
==CVLey25J@32
==RTSaemon@33
==CVLey25J@34
==RTSaemon@35 EXIT

CHAIN
IF~AreaCheck("ar0307") OR(2) Global("RTLeyPlot1","GLOBAL",4) Global("RTLeyPlot1","GLOBAL",5)~THEN CVLey25J AskMissy
@36
DO~SetGlobal("RTLeyPlot1","GLOBAL",6)~
==Arngrl01@37
==CVLey25J@38
==Arngrl01@39
==CVLey25J@40
==Arngrl01@41
==CVLey25J@42
==Arngrl01@43DO~EscapeArea()~
==CVSan25J@44
==CVLey25J@45
==CVSan25J@46
==CVLey25J@47EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",6)~THEN RTSaemon Sheimiss2
@48
DO~SetGlobal("RTLeyPlot1","GLOBAL",7)~
==CVLey25J@49
==RTSaemon@50
==CVLey25J@51
==RTSaemon@52
==CVLey25J@53
=@54
==RTSaemon@55
==CVLey25J@56
==RTSaemon@57
==CVLey25J@58
==RTSaemon@59
==CVLey25J@60
==RTSaemon@61
==CVLey25J@62
END
++@63 EXTERN CVLEY25J Sheimiss3
++@64EXTERN CVLEY25J Sheimiss3

CHAIN
IF~~THEN CVLEY25J Sheimiss3
@65
==CVSan25J@66
==CVLey25J@67
==CVSan25J@68
==CVLey25J@69
==CVSan25J@70
==RTSaemon@71
==CVLey25J@72
==CVSan25J@73
==CVLey25J@74
==CVSan25J@75DO~AddJournalEntry(@2083,QUEST)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",11)~THEN CVLEY25J Sheifree
@76
DO~SetGlobal("RTLeyPlot1","GLOBAL",12)~
==RTShaj@77
==CVLEY25J@78
==CVSan25J@79
=@80
=@81
=@82
DO~ClearAllActions() StartCutSceneMode() StartCutScene("RTShaFre")~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",12)~THEN RTShaj Sheifree2
@83
DO~SetGlobal("RTLeyPlot1","GLOBAL",13)~
==CVLEY25J@84
==RTShaj@85
==CVLEY25J@86
==RTShaj@87
==CVLEY25J@88
==RTShaj@89
==CVSan25J@90
==RTShaj@91DO~EscapeAreaMove("ar1515",1696,820,5)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",13)~THEN RTShaj Sheifree3
@92
DO~SetGlobal("RTLeyPlot1","GLOBAL",14)~
END
++@93EXTERN ppgirl Sheifree4

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",13)~THEN ppgirl Sheifree4
@94
DO~SetGlobal("RTLeyPlot1","GLOBAL",14)~
==CVLEY25J@95
==ppgirl@96
==CVLEY25J@97
==RTShaj@98
==CVSan25J@99
==ppgirl@100
==CVLEY25J@101
==ppgirl@102
==CVLEY25J@103
==CVSan25J@104EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",8)~THEN ppgirl Leyquest1
@105
DO~SetGlobal("RTLeyPlot1","GLOBAL",9)~
==CVLey25J@106
==ppgirl@107
==CVLey25J@108
==ppgirl@109
==CVLey25J@110
==ppgirl@111
==CVLey25J@112
==ppgirl@113 DO~MoveToPoint([1313.1581]) EscapeAreaDestroy(30)~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",9)AreaCheck("ar1515")~THEN ppgirl Leyquest2
@114
DO~SetGlobal("RTLeyPlot1","GLOBAL",10)~
==CVLey25J@115
==ppgirl@116
==CVLey25J@117EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyspawn","ar1515",1)~THEN ppworker alert
@118
DO~SetGlobal("RTLeyspawn","ar1515",2) EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-4~Global("RTLeyPlot1","GLOBAL",15)~ THEN PPDesh Showdown
@119
=@120
DO~SetGlobal("RTLeyPlot1","GLOBAL",16)~
==PPGirl@121
==PPDesh@122
==RTLonk@123
=@124DO~MoveToObjectFollow("rtdesh")~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",16) Global("escape","LOCALS",0)~THEN pirsea01 alerti
@125
DO~SetGlobal("escape","LOCALS",1) Enemy()~EXIT