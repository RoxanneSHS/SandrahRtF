BEGIN RTImrae
BEGIN RTLolth
BEGIN RTLouUD
BEGIN RTLouFav

IF ~ Global("RTLouPlot","GLOBAL",2)~ THEN BEGIN 0
SAY @0
=@1
IF ~~ THEN REPLY @2 GOTO 2
IF ~~ THEN REPLY @3 GOTO 2
IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
SAY@5
=@6
IF ~  IfValidForPartyDialogue("VICONIA") ~ THEN GOTO 3
IF ~  !IfValidForPartyDialogue("VICONIA")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
SAY @7
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
SAY@8
IF ~~ THEN REPLY@9 EXTERN CVLOU25J Abdu1
END

IF ~~ THEN BEGIN 6
  SAY  @10
=@11
= @12
IF ~~ THEN DO ~SetGlobal("RTLouPlot","GLOBAL",3)~ EXIT
END

CHAIN
IF~~THEN CVLOU25J Abdu1
@13
==RTLouFav@14
==BVICON25 IF~InParty("Viconia")~THEN@15
==RTLouFav@16
END
++@17 EXTERN RTLouFav 6

CHAIN
IF~ Global("RTLouPlot","GLOBAL",10) ~THEN RTLouFav Taker
@18
DO~SetGlobal("RTLouPlot","GLOBAL",11) ~
=@19
==CVLOU25J @20
==RTLouFav @21
==CVSan25J@22
==RTLouFav @23DO~ SetGlobal("Loureedjoined","GLOBAL",9) ClearAllActions() StartCutSceneMode() Wait(2) ActionOverride("Loureed",LeaveParty()) ActionOverride("Loureed",ReallyForceSpell(Myself,DRYAD_TELEPORT)) Wait(4) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTBackInUD","GLOBAL",3)~THEN RTImrae  InCage
@24
DO~ SetGlobal("RTBackInUD","GLOBAL",4)~
==CVSan25J@25
==RTImrae@26
==CVSan25J@27
==RTImrae@28
==CVSan25J@29
==RTImrae@30
=@31
==CVSan25J@32
==RTImrae@33
END
++@34+  OutCage
++@35+  OutCage
++@36+  OutCage

CHAIN
IF~~THEN RTImrae  OutCage
@37
==CVSan25J@38
DO~ SetGlobal("SanTravel","GLOBAL",410) ActionOverride("RTImrae",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ~ EXIT

CHAIN
IF~ Global("RTBackInUD","GLOBAL",5)~THEN RTImrae PriorLolth
@39
DO~ SetGlobal("RTBackInUD","GLOBAL",6)~
==UDDrow10@40
==UDDrow06@41
==RTImrae@42
==UDDrow07@43
==RTImrae@44
==CVSan25J@45
==UDDrow10@46
==RTImrae@47
==UDDrow07@48
==CVSan25J@49
==UDDrow06@50
==UDDrow10@51
==CVSan25J@52
==RTImrae@53
==CVSan25J@54
==RTImrae@55 DO~AddJournalEntry(@2086,QUEST)~ EXIT

CHAIN
IF~ Global("RTBackInUD","GLOBAL",6)~THEN RTLouFav PriorLolth
@56
DO~ SetGlobal("RTBackInUD","GLOBAL",7)~
==RTImrae@57DO~EscapeArea()~
==RTLouFav@58
=@59DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTBackInUD","GLOBAL",7)~THEN  RTLouUD  FaceLolth
@60
DO~ SetGlobal("RTBackInUD","GLOBAL",8)~
==RTLolth@61
==RTLouFav@62 DO~DestroyItem("ImoenHP1")~
==CVSan25J@63
==RTLolth@64
==RTLouUD@65
==CVSan25J@66
==RTLolth@67
==RTLouUD@68
==CVSan25J@69
==RTLolth@70  DO~ActionOverride("RTLouUD",ReallyForceSpell(Myself,DRYAD_TELEPORT)) SetGlobal("DrowCityHostile","GLOBAL",1)~
=@71DO~ActionOverride("RTLouFav",Enemy())~EXIT

CHAIN
IF WEIGHT #-5~Global("RTLouPlot","GLOBAL",16)~THEN Senbeh01 WayDown
@72
DO~SetGlobal("RTLouPlot","GLOBAL",17) ~
==CVSan25J@73
==Senbeh01@74
=@75
==CVSan25J@76
==Senbeh01@77
==CVSan25J@78
==Senbeh01@79
=@80
==CVSan25J@81
==Senbeh01@82
==CVSan25J@83
==Senbeh01@84DO ~SetGlobal("SanTravel","GLOBAL",100)~ EXIT

CHAIN
IF~GlobalGT("RTBackInUD","GLOBAL",7)AreaCheck("RTF076")~THEN  RTLouUD  StayUD
@85
DO~ SetGlobal("RTBackInUD","GLOBAL",12)~
==RTImrae@86
==RTLouUD@87
==RTImrae@88
==RTLouUD@89
==CVSan25J@90
==RTLouUD@91
==CVSan25J@92
==RTLouUD@93
==RTImrae@94
==RTLouUD@95 DO~EscapeArea()~
==RTImrae@96 DO~EscapeArea()~
==CVSan25J@97
END
++@98DO~AddexperienceParty(60000) EraseJournalEntry(@2086) EraseJournalEntry(@2085)EraseJournalEntry(@2059)~EXIT
