BEGIN BLeya25

IF~ Global("LeyalaGB","LOCALS",1) ~THEN BEGIN LGoodbye1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("LeyalaGB","LOCALS",2)~GOTO  LGoodbye2
END

IF~~THEN BEGIN LGoodbye2
SAY@2
=@3
IF~~THEN REPLY@4GOTO LGoodbye4
IF~~THEN REPLY@5 GOTO LGoodbye3
END

IF~~THEN BEGIN LGoodbye3
SAY@6
IF~~THEN REPLY@7 GOTO LGoodbye4
IF~~THEN REPLY@8GOTO LGoodbye4
END

IF~~THEN BEGIN LGoodbye4
SAY@9
IF~~THEN DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

CHAIN
IF~Global("RTLeybant","GLOBAL",1)~THEN BLeya25 Exercise1        
@10
DO~SetGlobal("RTLeybant","GLOBAL",2)~
==BSandr25@11
==BLeya25@12
==BSandr25@13
==BLeya25@14
==BSandr25@15
==BLeya25@16
==BSandr25@17
==BLeya25@18
==BSandr25@19EXIT

CHAIN
IF~Global("AerieCreated","ar0601",4)~ THEN BLeya25 AirDung
@20
DO~SetGlobal("AerieCreated","ar0601",5)~
==BSandr25@21
==BLeya25 IF~Global("SanRomPath","GLOBAL",1)~THEN@22
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)~THEN@23
==BSandr25@24
==BLeya25 @25
==BSandr25@26
==BLeya25 @27
==BSandr25@28
==BLeya25 @29
==BLeya25 IF~Global("SanRomPath","GLOBAL",1)~THEN@30
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)InParty("RTMeli")~THEN@31
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)!InParty("RTMeli") InParty("CVGiran")~THEN@32
EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",1)~ THEN BLeya25 Giran1
@33
DO~SetGlobal("RTLeyGir","LOCALS",2)~
==BGir25@34
==BLeya25@35
==BGir25@36
==BLeya25@37
==BGir25@38
==BLeya25@39
==BGir25@40
==BLeya25@41
==BGir25@42
==BLeya25@43
==BGir25@44
==BLeya25@45
==BGir25@46
==BLeya25@47
==BGir25@48
==BLeya25@49
==BGir25@50
==BLeya25@51EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",3)~ THEN BLeya25 Giran2
@52
DO~SetGlobal("RTLeyGir","LOCALS",4)~
==BGir25@53
==BLeya25@54
==BGir25 IF~Global("SanRomPath","GLOBAL",1)~THEN@55
==BGir25 IF~Global("SanRomPath","GLOBAL",2)~THEN@56
==BLeya25@57
==BGir25@58
==BLeya25@59
==BGir25@60
==BLeya25@61
==BGir25@62
=@63
==BLeya25@64
==BGir25@65
==BLeya25@66EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",5)~THEN BLeya25 Giran3
@67
DO~SetGlobal("RTLeyGir","LOCALS",6)~
==BGir25@68
==BLeya25@69
==BGir25@70
==BLeya25@71
==BGIR25@72
==BLeya25@73
==BGir25@74
==BLeya25@75 EXIT
