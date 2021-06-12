CHAIN
IF WEIGHT #-2~ GlobalGT("SanBeginRTF","GLOBAL",1) Global("GreetRTF","LOCALS",0)~THEN SaMystP1 RTF1
@0
DO~ SetGlobal("GreetRTF","LOCALS",1)~
=@1
==CVSAn25J@2
==SaMystP1 @3
=@4
END
++@5EXIT
++@6DO~StartStore("CVMystem",LastTalkedToBy(Myself))~EXIT

CHAIN
IF WEIGHT #-2 ~GlobalGT("SanBeginRTF","GLOBAL",1)!InParty("CVSandr")~THEN CVRingo RTFNoSan
@7
EXIT

CHAIN
IF WEIGHT #-5~GlobalGT("SanBeginRTF","GLOBAL",1) Global("GreetRTF","LOCALS",0)~THEN CVRingo RTF1
@8
DO~ SetGlobal("GreetRTF","LOCALS",1)~
==CVSAn25J@9
==CVRingo@10
==CVSAn25J IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN@11
==CVRingo IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN@12
==CVSAn25J IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN@13
END
IF ~InParty("Leyala")~THEN REPLY@14EXIT
IF ~!InParty("Leyala")~THEN REPLY@14 +RTF1a

CHAIN
IF~~THEN CVRingo RTF1a
@15
END
++@16+ RTF2
++@17+ RTF2
++@18+ RTF2

CHAIN
IF~~THEN CVRingo RTF2
@19
=@20
==CVSAn25J @21
==CVRingo@22
==CVSAn25J @23
END
++@24EXIT
++@25EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("HintMys","LOCALS",0)~THEN NarQMes MidnHi
@26
DO~SetGlobal("HintMys","LOCALS",1)~
==CVSan25J@27
==NarQMes@28
==CVSan25J@29
==NarQMes@30
==CVSan25J@31
==NarQMes@32
==CVSan25J@33
==NarQMes@34
==CVSan25J@35EXIT

APPEND CVHarbor
IF WEIGHT #-6~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN BEGIN WDTravl
SAY@36
IF~~THEN REPLY@37 GOTO Amn
IF~~THEN REPLY@38 GOTO BaG
IF~~THEN REPLY@39EXIT
END

IF~~THEN BEGIN Amn
SAY@40
IF~~THEN DO~StartCutSceneMode()
Wait(4)
FadeToColor([30.0],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[983.3532],7))
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
TextScreen("ToAmnH")
Wait(2)
TakePartyGold(2000)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN BaG
SAY@41
IF~~THEN DO~StartCutSceneMode()
Wait(4)
FadeToColor([30.0],0)
ActionOverride(Player1,LeaveAreaLUA("BG1200","",[2089.1995],4))
ActionOverride(Player2,LeaveAreaLUA("BG1200","",[2089.1995],7))
ActionOverride(Player3,LeaveAreaLUA("BG1200","",[2089.1995],11))
ActionOverride(Player4,LeaveAreaLUA("BG1200","",[2089.1995],0))
ActionOverride(Player5,LeaveAreaLUA("BG1200","",[2089.1995],8))
ActionOverride(Player6,LeaveAreaLUA("BG1200","",[2089.1995],5))
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
TextScreen("ToBldr")
Wait(2)
TakePartyGold(1000)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~EXIT
END
END

