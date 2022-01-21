CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("MeetRTFM","LOCALS",0) ~THEN SanMyst InitialRTF
@0
DO~SetGlobal("MeetRTFM","LOCALS",1) SetName(@2054)~
==CVSan25J@1
==SanMyst@2
=@3
==CVSan25J@4
==SanMyst@5
==CVSan25J@6
==SanMyst@7
=@8
==CVSan25J@9
==SanMyst@10
END
++@11+ InitialRTF2

CHAIN
IF~Global("MeetRTFM","LOCALS",1) ~ THEN SanMyst InitialRTF2
@12
END
++@13EXIT
IF~ GlobalGT("SanRTFPlot1","GLOBAL",2)Global("TalosIn","LOCALS",0)~THEN REPLY @14+ Talos1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",4)Global("TalosIn","LOCALS",0)~THEN REPLY @15+ Cyric1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",7) Global("VelshIn","LOCALS",0)~THEN REPLY @16+ Velsh1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",8) Global("VelshIn","LOCALS",0)~THEN REPLY @17 + Velsh1
IF~ Global("SanRTFPlot1","GLOBAL",8)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY @18 + Candl1
IF~ Global("SanRTFPlot1","GLOBAL",9)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY @19 + Candl1
IF~Global("SanRTFPlot3","GLOBAL",6) Global("RTThayRep","LOCALS",0)~THEN REPLY@20 DO~SetGlobal("RTThayRep","LOCALS",1)~EXTERN CVSan25J ThayRepNoTalos1
IF~Global("SanRTFPlot3","GLOBAL",7) Global("RTThayRep","LOCALS",0)~THEN REPLY@20 DO~SetGlobal("RTThayRep","LOCALS",1)~EXTERN CVSan25J ThayRepNoTalos1
IF~Global("SanRTFPlot3","GLOBAL",7) Global("RTThayRep","LOCALS",1) GlobalLT("SanRTFPlot4","GLOBAL",3)~THEN REPLY@21DO~ SetGlobal("RTThayRep","LOCALS",2)~EXTERN CVSan25J ThayRepDefTalos1
IF~Global("SanRTFPlot4","GLOBAL",6) Global("ToFinal","LOCALS",0)~THEN REPLY@22+ Summary1  

CHAIN
IF~~THEN CVSan25J ThayRepNoTalos1
@23
==SanMyst@24
==SanMyst IF~Global("SanRTFPlot3","GLOBAL",6)~THEN @25
END
IF~Global("SanRTFPlot3","GLOBAL",7)~THEN REPLY@26+ ThayRepDefTalos1
IF~Global("SanRTFPlot3","GLOBAL",7)~THEN REPLY@27+ ThayRepDefTalos1
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY@26EXTERN SanMyst ThayRepDefTalos2
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY@27EXTERN SanMyst ThayRepDefTalos2
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY@28EXIT

CHAIN
IF~~THEN SanMyst ThayRepDefTalos2
@29
END
++@30EXIT

CHAIN
IF~~THEN CVSan25J ThayRepDefTalos1
@31
==SanMyst@32 
==CVSan25J@33
==SanMyst@34
==CVSan25J@35
==SanMyst@36
==CVSan25J@37
==SanMyst@38
==CVSan25J@39
==SanMyst@40
==CVSan25J@41
==SanMyst@42 DO~SetGlobal("SanRTFPlot4","GLOBAL",1)~
=@43
==CVSan25J IF~Global("SanRTFPlot3","GLOBAL",6)~THEN@44
==CVSan25J IF~Global("SanRTFPlot3","GLOBAL",7)~THEN@45
EXIT

CHAIN
IF~~THEN SanMyst Talos1
@46
DO~SetGlobal("TalosIn","LOCALS",1)~
==CVSan25J@47
==SanMyst@48
END
++@13EXIT
IF~ GlobalGT("SanRTFPlot1","GLOBAL",4)Global("TalosIn","LOCALS",0)~THEN REPLY @15+ Cyric1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",7)Global("VelshIn","LOCALS",0)~THEN REPLY @16+ Velsh1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",8)Global("VelshIn","LOCALS",0)~THEN REPLY @17 + Velsh1
IF~ GlobalGT("SanRTFPlot2","GLOBAL",1)Global("VelshIn","LOCALS",1)~THEN REPLY @49 + Velsh6
IF~ Global("SanRTFPlot1","GLOBAL",8)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY @18 + Candl1
IF~ Global("SanRTFPlot1","GLOBAL",9)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY @19 + Candl1


CHAIN
IF~~THEN SanMyst Cyric1
@50
DO~SetGlobal("TalosIn","LOCALS",1)~
==CVSan25J@51
==SanMyst@52
=@53
==CVSan25J@54
==SanMyst@55EXIT

CHAIN
IF~~THEN SanMyst Velsh1
@56
DO~SetGlobal("VelshIn","LOCALS",1)~
==CVSan25J@57
==SanMyst@58
==CVSan25J@59
==SanMyst@60
==CVSan25J@61
==SanMyst@62
==CVSan25J@63
==SanMyst@64 EXIT

CHAIN
IF~~THEN SanMyst Velsh6
@65
DO~SetGlobal("VelshIn","LOCALS",2)~
==CVSan25J@66
==SanMyst@67
==CVSan25J@68
==SanMyst@69
END
++@70+ Velsh7

CHAIN
IF~~THEN SanMyst Velsh7
@71
==CVSan25J@72
==SanMyst@73
==CVSan25J@74
==SanMyst@75
=@76EXIT

CHAIN
IF~~THEN SanMyst Candl1
@77
DO~SetGlobal("SanRTFPlot2","GLOBAL",1)~
==CVSan25J@78
==SanMyst@79
==CVSan25J@80
==SanMyst@81
==CVSan25J@82
==SanMyst@83
END
++@84EXIT
++@85EXIT

CHAIN
IF~~THEN SanMyst Summary1
@86
DO~SetGlobal("ToFinal","LOCALS",1)~
==CVSan25J@87
==SanMyst@88
==CVSan25J@89
==SanMyst@90
==CVSan25J@91
=@92
==SanMyst@93
==CVSan25J@94
==SanMyst@95
==CVSan25J@96
==SanMyst@97
END
++@98 + Summary2
++@99 + Summary2

CHAIN
IF~~THEN SanMyst Summary2
@100
DO~SetGlobal("ToFinal","LOCALS",2) ClearAllActions() StartCutSceneMode() StartCutScene("CVCut407")~EXIT



//Drizzt

CHAIN
IF~AreaCheck("RTF018") Global("MeetRTF","LOCALS",0) ~THEN CVDrizR MeetRTF
@101
DO~SetGlobal("MeetRTF","LOCALS",1) ~
==CVSan25J@102
==CVDrizR@103
==CVSan25J@104
==CVDrizR@105
==CVSan25J@106
==CVDrizR@107
==CVSan25J@108EXIT

CHAIN
IF~ AreaCheck("RTF018") Global("MeetRTF","LOCALS",1) ~THEN CVDrizR MeetRTF2
@109
END
++@110EXIT
IF~GlobalGT("RTLouPlot","GLOBAL",0) GlobalLT("RTLouPlot","GLOBAL",15) ~THEN REPLY@111+ EscUP

CHAIN
IF~~THEN  CVDrizR  EscUP
@112
DO~SetGlobal("RTLouPlot","GLOBAL",15) ~
==CVSan25J@113
==CVDrizR@114
==CVSan25J@115
==CVDrizR@116
END
++@117EXIT

CHAIN
IF~AreaCheck("RTF006") Global("RTF4Driz","rtf006",1) ~THEN CVDrizR PointKel
@118
DO~SetGlobal("RTF4Driz","rtf006",2) ~
==CVSan25J@119
==CVDrizR@120
==CVSan25J@121
==CVDrizR@122
=@123
==CVSan25J@124
==CVDrizR@125
END
++@126 + PointKel2
++@127 + PointKel2
++@128 + PointKel2

CHAIN
IF~~ THEN CVDrizR PointKel2
@129
=@130
==CVSan25J@131
==CVDrizR@132DO~EscapeArea()~
END
++@133EXIT

CHAIN
IF~AreaCheck("RTF123") Global("RTF5Driz","rtf123",1) ~THEN CVDrizR PointCyr
@134
DO~SetGlobal("RTF5Driz","rtf123",2) ~
==CVSan25J@135
==CVDrizR@136
==CVSan25J@137
==CVDrizR@138
==CVSan25J@139
==CVDrizR@140DO~EscapeArea()~EXIT

