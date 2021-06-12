BEGIN RTSaemon
BEGIN RTShaj

CHAIN
IF~Global("RTSaem","RTF090",1)~THEN RTSaemon OutThay1
@0
DO~SetGlobal("RTSaem","RTF090",2)~
==CVSan25J@1
==RTSaemon@2
==CVSan25J@3
==RTSaemon@4
==RTShaj@5
==CVSan25J@6
==RTShaj@7DO~EscapeArea()~
==RTSaemon@8
=@9DO~EscapeArea()~EXIT

CHAIN
IF~AreaCheck("RTF100") Global("RTSaem","RTF100",0)~THEN RTSaemon OutThay2
@10
DO~SetGlobal("RTSaem","RTF100",1)~
==CVSan25J@11
==RTSaemon@12
==CVSan25J@13
==RTSaemon@14
==RTShaj@15
==RTSaemon@16
==RTShaj@17
==RTSaemon@18DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTSaem","RTF100",1)~THEN RTSaemon OutThay3
@19
DO~SetGlobal("RTSaem","RTF100",2)~
==CVSan25J@20
==RTSaemon@21
==RTShaj@22
==RTSaemon@23
==CVSan25J@24
==RTSaemon@25
==CVSan25J@26
END
++@27EXTERN CVSan25J OutThay4

CHAIN
IF~~THEN CVSan25J OutThay4
@28
==RTSaemon@29
==CVSan25J@30
==RTSaemon@31
==CVSan25J@32
==RTSaemon@33
==CVSan25J@34
END
++@35+ OutThay5
++@36+ OutThay5

CHAIN
IF~~THEN CVSan25J OutThay5
@37
=@38
=@39
DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTFaen")~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4)Global("RTTalkedSaem","GLOBAL",0) ~THEN RTSaemon RTSea1
@40
DO~SetGlobal("RTTalkedSaem","GLOBAL",1)~
==CVSan25J@41
==RTSaemon@42
==CVSan25J@43
==RTSaemon@44
==CVSan25J@45
==RTSaemon@46
==CVSan25J@47
==RTSaemon@48
==CVSan25J@49
==RTSaemon@50
END
IF~Global("RTTalkedNalia","GLOBAL",0) ~THEN REPLY@51+ RTSea2
IF~Global("RTTalkedNalia","GLOBAL",1) ~THEN REPLY@52+ RTSea3
IF~Global("RTTalkedNalia","GLOBAL",1) ~THEN REPLY@51+ RTSea4

CHAIN
IF~~THEN RTSaemon RTSea2
@53
==CVSan25J@54
==RTSaemon@55
==CVSan25J@56
==RTSaemon@57
==CVSan25J@58
==RTSaemon@59
==CVSan25J@60
==RTSaemon@61
END
++@62EXIT
++@63EXIT

CHAIN
IF~~THEN RTSaemon RTSea3
@64
==CVSan25J@65
==RTSaemon@66
==CVSan25J@56
==RTSaemon@57
==CVSan25J@58
==RTSaemon@59
==CVSan25J@60
==RTSaemon@61
END
++@62EXIT
++@63EXIT

CHAIN
IF~~THEN RTSaemon RTSea4
@53
==CVSan25J@65
==RTSaemon@66
==CVSan25J@56
==RTSaemon@57
==CVSan25J@58
==RTSaemon@59
==CVSan25J@60
==RTSaemon@61
END
++@62EXIT
++@63EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4)Global("RTDockSolution","GLOBAL",2)Global("RTTalkedSaem","GLOBAL",1)~THEN RTSaemon RTSea5
@67
DO~SetGlobal("RTTalkedSaem","GLOBAL",2)~
==CVSan25J@68
==RTSaemon@69
==CVSan25J IF ~Global("PlayerThiefguild","GLOBAL",1)~THEN@70
==CVSan25J IF ~!Global("PlayerThiefguild","GLOBAL",1)~THEN@71
==RTSaemon@72
==CVSan25J@73
==RTSaemon@74
==CVSan25J@75
==RTSaemon@76
END
++@77+ RTSea6
++@78+ RTSea6

CHAIN
IF~~THEN RTSaemon RTSea6
@79EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",5) GlobalLT("RTTalkedSaem","GLOBAL",9)~THEN RTSaemon RTSea7
@80
==CVSan25J@81
==RTSaemon@82
DO~SetGlobal("RTTalkedSaem","GLOBAL",9) TakePartyItem("RTNalsa") GiveItemCreate("misc4s","CVSandr",1,0,0) AddexperienceParty(12000)~
=@83
=@84
END
++@85EXIT
++@86EXIT

CHAIN
IF WEIGHT #-1~Global("RTCyr1","ar0307",1)~THEN Chalcy01 InIrD1
@87
DO~SetGlobal("RTCyr1","ar0307",2)~
==CVSan25J@88
==Chalcy01@89
==CVSan25J@90
==Chalcy01@91
=@92
==CVSan25J@93
==Chalcy01@94
END
++@95+ InIrD2
++@96+ InIrD2

CHAIN
IF~~THEN Chalcy01 InIrD2
@97
=@98
==CVSan25J@99
==Chalcy01@100
==CVSan25J@101
END
++@102+ InIrD3

CHAIN
IF~~THEN Chalcy01 InIrD3
@103DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN Tassa RTFGreet
@104
=@105DO~EscapeArea()~EXIT