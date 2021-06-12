BEGIN RTGnarl
BEGIN RTHairto
BEGIN RTMystC
IF~AreaCheck("RTF123")~THEN BEGIN YoungMys1
SAY@0
IF~~THEN REPLY@1GOTO YoungMys2
IF~~THEN REPLY@2 GOTO YoungMys3
IF~~THEN REPLY@3 GOTO YoungMys4
END

IF~~THEN BEGIN YoungMys2
SAY@4
=@5
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

IF~~THEN BEGIN YoungMys3
SAY@6
=@5
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

IF~~THEN BEGIN YoungMys4
SAY@7
=@5
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

CHAIN
IF~AreaCheck("RTF123")~THEN RTGnarl Bridge
@8
==RTHairto@9
==RTGnarl @10
END
++@11 +Bridge2
++@12+Bridge2

CHAIN
IF~~THEN RTGnarl Bridge2
@13DO~Enemy() Polymorph(MARILITH)~
==RTHairto@14DO~Enemy() Polymorph(MARILITH)~EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",6) Global("Gnollend","RTF123",2)~THEN CVCyr01 Gnollend1
@15
DO~SetGlobal("Gnollend","RTF123",3)~
==SanMyst@16
==CVCyr01@17
==SanMyst@18
==CVDRIZR@19
==CVCyr01@20
==CVSan25J@21
==CVCyr01@22
==CVSan25J@23
END
++@24+ Gnollend2
++@25+ Gnollend2
++@26+ Gnollend2

CHAIN
IF~~THEN CVCyr01 Gnollend2
@27
==Pellig@28
==CVCyr01@29EXIT

CHAIN
IF~Global("Gnollend","RTF123",4)~THEN RTKelem Gnollend3
@30
DO~SetGlobal("Gnollend","RTF123",5)~
==SanMyst@31
==CVCyr01@32
==RTKelem@33
==RTLordAo@34
==CVSan25J@35
==RTLordAo@36
==CVCyr01@37
==CVSan25J@38
==RTLordAo@39
==CVSan25J@40
=@41
==RTLordAo@42
=@43
==CVSan25J@44
==CVCyr01@45
==RTLordAo@46EXIT

APPEND CVSan25J
IF~Global("Gnollend","RTF123",6)~THEN BEGIN Gnollend4
SAY@47
IF~~THEN REPLY@48
DO~SetGlobal("Gnollend","RTF123",7)~GOTO Gnollend5
END

IF~~THEN BEGIN Gnollend5
SAY@49
IF~~THEN REPLY@50GOTO Gnollend6
IF~~THEN REPLY@51 GOTO Gnollend7
IF~~THEN REPLY@52 GOTO Gnollend8
END

IF~~THEN BEGIN Gnollend6
SAY@53
IF~~THEN REPLY@54GOTO Gnollend6b
IF~~THEN REPLY@55 GOTO Gnollend7
END

IF~~THEN BEGIN Gnollend6b
SAY@56
IF~~THEN REPLY@51 GOTO Gnollend7
IF~~THEN REPLY@52 GOTO Gnollend8
END

IF~~THEN BEGIN Gnollend7
SAY@57
IF~~THEN REPLY@58EXIT
IF~~THEN REPLY@59GOTO Gnollend9
END

IF~~THEN BEGIN Gnollend8
SAY@60
IF~~THEN REPLY@58EXIT
IF~~THEN REPLY@59GOTO Gnollend9
END

IF~~THEN BEGIN Gnollend9
SAY@61
=@62
=@63
IF~~THEN REPLY@64GOTO Gnollend10
IF~~THEN REPLY@65 GOTO Gnollend10
END

IF~~THEN BEGIN Gnollend10
SAY@66
=@67
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@68 GOTO Gnollend11
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@68 GOTO Gnollend12
END

IF~~THEN BEGIN Gnollend11
SAY@69
=@70
=@71
=@72
IF~~THEN REPLY@73 DO~EraseJournalEntry(@2093) EraseJournalEntry(@2094) EraseJournalEntry(@1984) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~ EXIT
END

IF~~THEN BEGIN Gnollend12
SAY@69
=@70
=@71
=@74
IF~~THEN REPLY@73 DO~EraseJournalEntry(@2093) EraseJournalEntry(@2094) EraseJournalEntry(@1984) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~ EXIT
END
END