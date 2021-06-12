BEGIN BLour25

CHAIN
IF~Global("LouredB","GLOBAL",1)~ THEN BLour25 meanwhile
@0
DO~SetGlobal("LouredB","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",1040)~
==BSandr25@1
==BLour25@2
=@3
==BSandr25@4
==BLour25@5
==BSandr25@6
==BLour25@7
==BSandr25@8
==BLour25@9EXIT

CHAIN
IF~Global("LouredB","GLOBAL",3)~ THEN BLour25 Lougods1
@10
DO~SetGlobal("LouredB","GLOBAL",4) RealSetGlobalTimer("LoureedT","LOCALS",1040)~
==BSandr25@11
==BLour25@12
==BSandr25@13
==BLour25@14
==BSandr25@15
==BLour25@16
=@17
==BSandr25@18
==BLour25@19
==BSandr25@20EXIT

CHAIN
IF~Global("LouredB","GLOBAL",5)~ THEN BLour25 Lougods2
@21
DO~SetGlobal("LouredB","GLOBAL",6) RealSetGlobalTimer("LoureedT","LOCALS",1240)~
==BSandr25@22
==BLour25@23
==BSandr25@24
==BLour25@25
==BSandr25@26
==BLour25@27
==BSandr25@28
==BLour25@29EXIT

CHAIN
IF~Global("LouredB","GLOBAL",7)~ THEN BLour25 Lougods3
@30
DO~SetGlobal("LouredB","GLOBAL",8) SetGlobal("RTLouPlot","GLOBAL",1)RealSetGlobalTimer("LoureedT","LOCALS",1500) ~
==BSandr25@31
=@32EXIT

CHAIN
IF~Global("RTLouPlot","GLOBAL",7) ~ THEN BLour25 Lougods4
@33
DO~SetGlobal("RTLouPlot","GLOBAL",8)~
==BSandr25@34
==BLour25@35
==BSandr25@36
=@37
==BLour25@38
==BSandr25@39
==BLour25@40
==BSandr25@41
==BLour25@42
==BSandr25@43
==BLour25@44DO~AddJournalEntry(@2059,QUEST)~EXIT

//Giran tested
CHAIN
IF~Global("LouredG","GLOBAL",1)~THEN BLour25 Testgiran
@45
DO~SetGlobal("LouredG","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",500)~
==BGir25@46
==BLour25@47
==BGir25@48
==BLour25@49
==BGir25@50
==BLour25@51DO~
ReallyForceSpell("CVGiran",CLERIC_HEAL)~EXIT

//Melicamp tested
CHAIN
IF~Global("LouredM","GLOBAL",1)~THEN BLour25 Testmeli
@52
DO~SetGlobal("LouredM","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",500)~
==RTMeli@53
==BLour25@54
==RTMeli@55
==BLour25@56
==RTMeli@57
==BLour25@58
==RTMeli@59
==BLour25@60DO~ GiveItemCreate("scrl69","RTMeli",1,0,0)~ EXIT

CHAIN
IF~Global("LouredB","GLOBAL",9) ~THEN BLour25 Loumale1
@61
DO~SetGlobal("LouredB","GLOBAL",10) RealSetGlobalTimer("LoureedT","LOCALS",2500)~
==BSandr25@62
==BLour25@63
==BSandr25@64
==BLour25@65
==BSandr25@66
==BLour25@67
==BLour25 IF~InParty("RTMeli")~THEN @68
==BLour25 IF~!InParty("RTMeli") InParty("CVGiran")~THEN @69
==BLour25 IF~!InParty("RTMeli") !InParty("CVGiran")~THEN @70EXIT