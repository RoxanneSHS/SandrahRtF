BEGIN RSlaver1
BEGIN RSlaver2
BEGIN RTNild
BEGIN RTHartl

BEGIN RTNorr

IF~GlobalLT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Hint
SAY@0
IF~~THEN EXIT
END

IF~GlobalGT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Thank
SAY@1
IF~~THEN EXIT
END

APPEND CVGir25J

IF~Global("RTGiranQuest","GLOBAL",1)~THEN BEGIN SeeBoy
SAY@2
IF~~THEN REPLY@3DO~SetGlobal("RTGiranQuest","GLOBAL",2)~GOTO SeeBoy2
END

IF~~THEN BEGIN SeeBoy2
SAY@4
IF~~THEN REPLY@5EXIT
IF~~THEN REPLY@6EXIT
END

IF~Global("RTGiranQuest","GLOBAL",5)~THEN BEGIN OrcHelp1
SAY@7
IF~~THEN REPLY@8GOTO OrcHelp2
IF~~THEN REPLY@9GOTO OrcHelp2
END

IF~~THEN BEGIN OrcHelp2
SAY@10
IF~~THEN REPLY@11GOTO OrcHelp7
IF~~THEN REPLY@12GOTO OrcHelp7
END

IF~~THEN BEGIN OrcHelp7
SAY@13
=@14
IF~~THEN REPLY@15GOTO OrcHelp3
END

IF~~THEN BEGIN OrcHelp3
SAY@16
=@17
IF~~THEN REPLY@18GOTO OrcHelp4
IF~~THEN REPLY@19GOTO OrcHelp4
END

IF~~THEN BEGIN OrcHelp4
SAY@20
IF~~THEN REPLY@21GOTO OrcHelp5
END

IF~~THEN BEGIN OrcHelp5
SAY@22
IF~~THEN REPLY@23GOTO OrcHelp6
IF~~THEN REPLY@24GOTO OrcHelp6
END

IF~~THEN BEGIN OrcHelp6
SAY@25
IF~~THEN DO~SetGlobal("RTGiranQuest","GLOBAL",6) AddJournalEntry(@2067,QUEST)~EXIT
END

IF~Global("RTGiranQuest","GLOBAL",7)~THEN BEGIN Trail1
SAY@26
IF~~THEN REPLY@27DO~SetGlobal("RTGiranQuest","GLOBAL",8)AddJournalEntry(@2068,QUEST)~EXIT
IF~~THEN REPLY@28DO~SetGlobal("RTGiranQuest","GLOBAL",8)AddJournalEntry(@2068,QUEST)~EXIT
END
END

CHAIN
IF~Global("RTGiranQuest","GLOBAL",4)~ THEN RSlaver2 Overhear
@29
DO~SetGlobal("RTGiranQuest","GLOBAL",5)~
==RSlaver1@30
==RSlaver2@31
==RSlaver1@32
==RSlaver2@33
==RSlaver1@34
==RSlaver2@35DO~EndCutSceneMode() AddJournalEntry(@2066,QUEST) ActionOverride("RSlaver1",EscapeArea()) ActionOverride("RSlaver2",EscapeArea())~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",9)~THEN CVGir25J Cave1
@36
DO~SetGlobal("RTGiranQuest","GLOBAL",10)~
==RSlaver1@37
==RSlaver2@38
==RSlaver1@39
==RSlaver2@40
==CVGir25J@41
==RSlaver1@42
==CVGir25J@43
==RSlaver2@44
==RSlaver1@45DO~ClearAllActions() StartCutSceneMode() Wait(2) CreateCreatureObjectDoor("RTKnihos",Player1,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player3,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player5,0,0,0) Wait(2) CreateCreatureObjectDoor("RTKnihol",Player2,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player4,0,0,0) Wait(2) ActionOverride("RSlaver1",EscapeArea())ActionOverride("RSlaver2",EscapeArea()) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",11)~THEN CVGir25J AtCave
@46
DO~SetGlobal("RTGiranQuest","GLOBAL",12)~
==CVSan25J@47
==CVIzy25J IF~InParty("CVIzzy")~THEN@48
==CVGir25J IF~InParty("CVIzzy")~THEN@49
==CVIzy25J IF~InParty("CVIzzy")~THEN@50
==CVGir25J IF~InParty("CVIzzy")~THEN@51
==CVIzy25J IF~InParty("CVIzzy")~THEN@52
==CVGir25J @53EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",12)~THEN RTHartl Stop
@54
DO~SetGlobal("RTGiranQuest","GLOBAL",13)~
END
++@55+ Stop2
++@56EXTERN CVGir25J Stop3

CHAIN
IF~~THEN RTHartl Stop2
@57
END
++@58EXTERN CVGir25J Stop3

CHAIN
IF~~THEN  CVGir25J Stop3
@59
==RTHartl@60
==CVGir25J@61
==RTHartl@62
==CVGir25J@63
==RTHartl@64DO ~
CreateItem("SHARTHP1",0,0,0) FillSlot(SLOT_AMULET) ActionOverride("CVGiran",Attack("RTHartl")) ~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",14)~THEN RTHartl Stop5
@65
DO~SetGlobal("RTGiranQuest","GLOBAL",15)~
==CVGir25J@66
==RTHartl@67DO~ClearAllActions() ActionOverride("CVGiran",ClearAllActions()) EndCutSceneMode() MoveToPoint([2543.1699])~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",15)~THEN RTNild Stop5
@68
DO~SetGlobal("RTGiranQuest","GLOBAL",16)~
==CVGir25J@69
==RTNild@70
==CVGir25J@71
==RTNild@72
==CVGir25J@73
=@74
==RTNild@75
==CVGir25J@76
==RTNild@77
==CVGir25J@78
==CVSan25J@79
==RTNild@80
==CVGir25J@81
==RTNild@82
==RTHartl@83EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",17)~THEN RTNild Final
@84
DO~SetGlobal("RTGiranQuest","GLOBAL",18)~
==CVGir25J@85
==RTNild@86
==CVGir25J@87
==RTNild@88
==CVGir25J@89
==RTNild@90
==CVGir25J@91
==RTNild@92
==CVGir25J@93
=@94
==RTNild@95
==CVGir25J@96
=@97
==RTNild@98DO~AddXPObject("CVGiran",28500) EraseJournalEntry(@2066) EraseJournalEntry(@2067)EraseJournalEntry(@2068)~EXIT


APPEND Shaorc7
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~THEN BEGIN bers1a
SAY@99
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~THEN BEGIN bers2a
SAY@100
IF~~THEN EXIT
END
END

APPEND Shaorc8
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~THEN BEGIN bers1d
SAY@99
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~THEN BEGIN bers2d
SAY@100
IF~~THEN EXIT
END
END

APPEND Shaorc4
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~THEN BEGIN bers1b
SAY@101
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~THEN BEGIN bers2b
SAY@102
IF~~THEN EXIT
END
END

APPEND Shaorc6
IF WEIGHT #-2~AreaCheck("RTF074") ~THEN BEGIN bers1c
SAY@103
IF~~THEN EXIT
END
END

APPEND Shaorc10
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~THEN BEGIN bers1e
SAY@101
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~THEN BEGIN bers2e
SAY@102
IF~~THEN EXIT
END
END