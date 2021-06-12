APPEND Pellig
IF WEIGHT #-7~AreaCheck("RTF143") Global("RTSimbul","RTF143",6) ~THEN BEGIN PelHum1
SAY@0
IF~~THEN REPLY@1 GOTO PelHum2
IF~~THEN REPLY@2GOTO PelHum2
END

IF~~THEN BEGIN PelHum2
SAY@3
IF~~THEN REPLY@4 GOTO PelHum3
END

IF~~THEN BEGIN PelHum3
SAY@5
IF~~THEN REPLY@6DO~SetGlobal("RTSimbul","RTF143",7) ~GOTO PelHum4
END

IF~~THEN BEGIN PelHum4
SAY@7
=@8
=@9
IF~~THEN REPLY@10DO~SetGlobal("Pelljoined","LOCALS",1)JoinParty() ~EXIT
IF~~THEN REPLY@11DO~SetGlobal("Pelljoined","LOCALS",1)JoinParty() ~EXIT
END
END

BEGIN PELLIGP
IF ~ Global("Pelljoined","LOCALS",1)~ THEN BEGIN NoKickRTF
SAY @12
IF ~~ THEN DO ~JoinParty()~
EXIT
END

BEGIN PELLIGJ
IF~IsGabber(Player1)OR(2)AreaCheck("RTF143") AreaCheck("RTF141")~THEN BEGIN PidPellE
SAY@13
IF~~THEN REPLY@14EXIT
END

IF~IsGabber(Player1)~THEN BEGIN PidPell
SAY@15
IF~Global("Realpel","LOCALS",0)~THEN REPLY@16GOTO PellId1
IF~Global("Realpel","LOCALS",1)~THEN REPLY@17  GOTO PellId3
IF~Global("Realpel","LOCALS",2)~THEN REPLY@18GOTO PellId10
IF~Global("PelItem3","LOCALS",1)~THEN REPLY@19GOTO Pellitem3
IF~~THEN REPLY@20EXIT
IF~~THEN REPLY@21GOTO NotReally1
END

IF~~THEN BEGIN NotReally1
SAY@22
IF~~THEN EXIT
END

IF~~THEN BEGIN PellId1
SAY@23
IF~~THEN REPLY@24GOTO PellId2
END

IF~~THEN BEGIN PellId2
SAY@25
IF~~THEN REPLY@26GOTO PellId3
IF~~THEN REPLY@27DO~SetGlobal("Realpel","LOCALS",1)~EXIT
END

IF~~THEN BEGIN PellId3
SAY@28
IF~~THEN REPLY@29 GOTO PellId4
IF~~THEN REPLY@30 GOTO PellId4
END

IF~~THEN BEGIN PellId4
SAY@31
=@32
=@33
IF~~THEN REPLY@34GOTO PellId5
END

IF~~THEN BEGIN PellId5
SAY@35
IF~~THEN DO~SetGlobal("Realpel","LOCALS",2)~EXIT
END

IF~~THEN BEGIN PellId10
SAY@36
=@37
=@38
IF~~THEN REPLY@39DO~SetGlobal("Realpel","LOCALS",3)~EXIT
END

IF~~THEN BEGIN Pellitem3
SAY@40
IF~~THEN REPLY@41 DO~SetGlobal("PelItem3","LOCALS",2)~ GOTO Pellitem3b
END

IF~~THEN BEGIN Pellitem3b
SAY@42
IF~~THEN REPLY@43EXIT
IF~~THEN REPLY@44EXIT
END



CHAIN
IF~Global("CyrChance","RTF140",1)~THEN chalcy01 SanDeCha1
@45
=@46
DO~SetGlobal("CyrChance","RTF140",2)~
==PelligJ@47
==Chalcy01@48
==PelligJ@49
==Chalcy01@50
END
++@51+ SanDeCha2
++@52+ SanDeCha2
++@53+ SanDeCha2

CHAIN
IF~~THEN chalcy01 SanDeCha2
@54
=@55
=@56DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-10~Global("RThintNash","BG3202",1)~THEN Thalan HintNash1
@57
DO~SetGlobal("RThintNash","BG3202",2)~
==PelligJ@58
==RTMeli IF~InParty("RTMeli")~THEN@59
==CVIzy25J IF~InParty("RTMeli") InParty("CVIzzy")~THEN@60
==Thalan@61
END
++@62 + HintNash2
++@63 + HintNash2
++@64+ HintNash2

CHAIN
IF~~THEN Thalan HintNash2
@65
==PelligJ@66
==Thalan@67
==PelligJ@68
END
++@69+ HintNash3
++@70 + HintNash3
++@71+ HintNash3

CHAIN
IF~~THEN Thalan HintNash3
@72 DO~EscapeArea()~
==PelligJ@73EXIT

CHAIN
IF WEIGHT #-10~Global("Thamove","BG4802",1)~THEN Thalan HintNash4
@74
DO~SetGlobal("Thamove","BG4802",2)~
==PelligJ @75
==RTMeli IF~InParty("RTMeli")~THEN@76
==Thalan@77
==PelligJ@78
==Nalin@79
END
++@80 + HintNash5

CHAIN
IF~~THEN Thalan HintNash5
@81
==PelligJ@82
==Thalan@83
=@84
==PelligJ@85DO~AddexperienceParty(6600)~
==RTMeli IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN @86
==Thalan IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN @87
==RTMeli IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN @88
EXIT

CHAIN
IF WEIGHT #1~Global("PelItem2","LOCALS",1)~THEN PelligJ PelQuidr1
@89
DO~SetGlobal("PelItem2","LOCALS",2)~
==CVQidr@90
END
++@91 EXTERN CVQidr PelQuidr2
++@92EXTERN CVQidr PelQuidr2

CHAIN
IF~~THEN CVQidr PelQuidr2
@93
==PelligJ@94
==CVQidr@95
==PelligJ@96
==CVQidr@97 DO~GiveItemCreate("RTBummy","Pellig3",1,0,0)~
==PelligJ@98DO~AddexperienceParty(8200)~EXIT

CHAIN
IF WEIGHT #2~Global("PelItem3","LOCALS",3)~THEN PelligJ PellMys1
@99
DO~SetGlobal("PelItem3","LOCALS",4)~
==SanMyst@100
==PelligJ@101
==SanMyst@102
END
++@103 + PellMys2
++@104 + PellMys2

CHAIN
IF~~THEN PelligJ PellMys2
@105
END
++@106+ PellMys3

CHAIN
IF~~THEN PelligJ PellMys3
@107
==SanMyst@108
==PelligJ@109
END
++@110+ PellMys4

CHAIN
IF~~THEN PelligJ PellMys4
@111
==SanMyst@112
==PelligJ@113
==SanMyst@114
==PelligJ@115
=@116DO~SetGlobal("Miston","RTF018",1)~EXIT

CHAIN
IF WEIGHT #3~Global("PelItem3","LOCALS",5)~THEN PelligJ PellMys5
@117
DO~SetGlobal("PelItem3","LOCALS",6)~
==SanMyst@118
==PelligJ@119
==SanMyst@120
==PelligJ@121
END
++@122EXIT

CHAIN
IF WEIGHT #3~Global("PellMellB","LOCALS",1)~THEN PelligJ PellMell
@123
DO~SetGlobal("PellMellB","LOCALS",2)~
==RTMeli@124
==PelligJ@125
==RTMeli@126
==PelligJ@127
==RTMeli@128
==PelligJ@129
==RTMeli@130 EXIT

CHAIN
IF WEIGHT #-7~Global("RTPellSol","BG2300",2)~THEN Pellig SolarJ1
@131
DO~SetGlobal("PelligFollow","GLOBAL",0)~
==Solar@132
==Pellig@133
==Solar@134
DO~SetGlobal("RTPellSol","BG2300",3) SetGlobal("PelligFollow","GLOBAL",0)  CreateCreature("Pellig3",[3244.2518],13) Wait(2) ActionOverride("Solar",POLYMORPH(FIGHTER_MALE_HUMAN))  ActionOverride("Solar",SetName(@1989)) EndCutSceneMode() ActionOverride("Pellig",DestroySelf()) ~EXIT

CHAIN
IF WEIGHT #-7~Global("RTPellSol","BG2300",3)~THEN Pellig SolarJ2
@135
DO~SetGlobal("RTPellSol","BG2300",4)~
==CVSan25J@136
==Pellig@137
==Solar IF~Global("SanRomPath","GLOBAL",1)~THEN@138
==Solar IF~Global("SanRomPath","GLOBAL",2)~THEN@139
==Pellig@140 DO~MoveToPoint([1406.3139])EscapeArea() ~
==Solar@141 DO~MoveToPoint([1406.3139])EscapeArea() ~EXIT

