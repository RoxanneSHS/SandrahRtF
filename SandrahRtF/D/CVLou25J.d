BEGIN CVLou25J

IF~Global("Loureed900","LOCALS",1)~ THEN BEGIN Templ1
SAY@0
IF~~THEN REPLY@1EXIT
IF~~THEN REPLY@2 GOTO Templ2e
IF~~THEN REPLY@3 GOTO Templ2l
IF~~THEN REPLY@4 GOTO Templ2u
END

IF~~THEN BEGIN  Templ2e
SAY@5
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@6 DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2l
IF~Global("Loureed900","LOCALS",2)~THEN REPLY@7EXIT
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@8DO~SetGlobal("Loureed900","LOCALS",2)~ GOTO Templ2u
END

IF~~THEN BEGIN  Templ2l
SAY@9
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@10 DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2e
IF~Global("Loureed900","LOCALS",2)~THEN REPLY@11EXIT
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@8DO~SetGlobal("Loureed900","LOCALS",2)~ GOTO Templ2u
END

IF~~THEN BEGIN  Templ2u
SAY@12
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@6 DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2l
IF~Global("Loureed900","LOCALS",1)~THEN REPLY@10 DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2e
IF~Global("Loureed900","LOCALS",2)~THEN REPLY@13EXIT
END

IF~Global("RTLouPlot","GLOBAL",9)~THEN BEGIN abduct
SAY@14
=@15
IF~~THEN DO~SetGlobal("RTLouPlot","GLOBAL",10) CreateCreatureObjectDoor("RTLoufav",Myself,0,0,0) CreateCreatureObjectDoor("RTLouspi",Player1,0,0,0) CreateCreatureObjectDoor("RTLouspi",Player2,0,0,0)~EXIT
END

IF~Global("Loureed900","LOCALS",3)~THEN BEGIN BeatSen1
SAY@16
IF~~THEN REPLY@17DO~SetGlobal("Loureed900","LOCALS",4) RealSetGlobalTimer("LoureedT","LOCALS",1000)~ GOTO  BeatSen2
IF~~THEN REPLY@18DO~SetGlobal("Loureed900","LOCALS",4) RealSetGlobalTimer("LoureedT","LOCALS",1000)~GOTO  BeatSen2
END

IF~~THEN BEGIN BeatSen2
SAY@19
=@20
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY@21 EXIT
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY@22 EXIT
END

CHAIN
IF~Global("RTLouMiss","LOCALS",1) ~ THEN CVLou25J LougodsM
@23
DO~SetGlobal("RTLouMiss","LOCALS",2)~
==PelligJ@24
==CVLou25J@25
==PelligJ@26
==CVLou25J@27
==PelligJ@28EXIT
