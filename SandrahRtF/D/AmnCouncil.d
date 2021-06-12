APPEND ANOME25A
IF WEIGHT #-1~Global("AnomenSummoned","GLOBAL",3)~THEN BEGIN RTStart1
SAY@0
IF~~THEN REPLY@1 DO~SetGlobal("AnomenSummoned","GLOBAL",2)~EXIT
IF~~THEN REPLY@2 GOTO 1
END
END

BEGIN RTBrega

IF~IsGabber([PC])~THEN BEGIN welcRT
SAY@3
IF~~THEN REPLY@4EXIT
IF~Global("Cowlhint","LOCALS",0)~THEN REPLY@5GOTO NoCowl
END

IF~~THEN BEGIN NoCowl
SAY@6
IF~~THEN DO~SetGlobal("Cowlhint","LOCALS",1)~EXIT
END

BEGIN RTHals
IF~Global("SanRTFPlot1","GLOBAL",4)~THEN BEGIN NoDisc
SAY@7
IF~OR(2) GlobalGT("RTTalkedSaem","GLOBAL",0)GlobalGT("RTTalkedNalia","GLOBAL",0)~THEN REPLY@8GOTO NoDisc2
IF~OR(2) GlobalGT("RTTalkedSaem","GLOBAL",0)GlobalGT("RTTalkedNalia","GLOBAL",0)~THEN REPLY@9 GOTO NoDisc2
IF~~THEN REPLY@10 GOTO NoDisc3
END

IF~~THEN BEGIN  NoDisc3
SAY@11
IF~~THEN REPLY@12EXIT
IF~~THEN REPLY@13EXIT
END

IF~~THEN BEGIN  NoDisc2
SAY@14
IF~~THEN REPLY@15EXIT
END

IF~GlobalGT("SanRTFPlot1","GLOBAL",4)~THEN BEGIN NoFight
SAY@16
IF~~THEN REPLY@17 GOTO NoFight2
END

IF~~THEN BEGIN NoFight2
SAY@18
IF~~THEN DO ~SetGlobal("RTHalSt","ar0300",2) AddexperienceParty(8000) ReputationInc(1)EscapeArea() ~EXIT
END

BEGIN RTCaptCC

IF~Global("CCClosed","ar0400",1)AreaCheck("ar0400") ~THEN BEGIN CloseCC1
SAY@19
IF~~THEN DO~SetGlobal("CCClosed","ar0400",2)~EXIT
END

IF~ Global("CCClosed","ar0400",2)AreaCheck("ar0400") ~THEN BEGIN CloseCC2
SAY @20
IF~~THEN EXIT
END

BEGIN RTNalia

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",0) ~THEN RTNalia RTNal1
@21
DO~SetGlobal("RTTalkedNalia","GLOBAL",1)~
==CVSan25J@22
==RTNalia@23
=@24
==CVSan25J@25
==RTNalia@26
==CVSan25J@27
==RTNalia@28
END
IF~Global("RTTalkedSaem","GLOBAL",1)~THEN REPLY @29+RTNal3
IF~Global("RTTalkedSaem","GLOBAL",0)~THEN REPLY@30+RTNal2
IF~Global("RTTalkedSaem","GLOBAL",1)~THEN REPLY@31+RTNal3
IF~Global("RTTalkedSaem","GLOBAL",0)~THEN REPLY@32 +RTNal2


CHAIN
IF~~THEN RTNalia RTNal2
@33
==CVSan25J@34
==RTNalia@35
==CVSan25J@36
==RTNalia@37
==CVSan25J@38
==RTNalia@39
END
++@40EXIT
++@41EXIT

CHAIN
IF~~THEN RTNalia RTNal3
@42
==CVSan25J@43
==RTNalia@44
==CVSan25J@45
==RTNalia@46
==CVSan25J@47
==RTNalia@48
==CVSan25J@49
==RTNalia@50
==CVSan25J@51
==RTNalia@52DO~SetGlobal("RTTalkedNalia","GLOBAL",2) ~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",1) Global("RTTalkedSaem","GLOBAL",1) ~THEN RTNalia RTNal4
@53
==CVSan25J @54
==RTNalia@55
==CVSan25J@45
==RTNalia@46
==CVSan25J@47
==RTNalia@48
==CVSan25J@49
==RTNalia@56
==CVSan25J@51
==RTNalia@52DO~SetGlobal("RTTalkedNalia","GLOBAL",2) ~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",2) Global("RTTalkedSaem","GLOBAL",2) ~THEN RTNalia RTNal4
@57
==CVSan25J@58
==RTNalia@59
==CVSan25J@60
==RTNalia@61
==CVSan25J@62
==RTNalia@63
==CVSan25J@64
==RTNalia@65
=@66
=@67DO~GiveItemCreate("rtnalsa",Player1,1,0,0)SetGlobal("SanRTFPlot1","GLOBAL",5)~ EXIT




