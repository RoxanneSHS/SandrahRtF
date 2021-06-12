BEGIN RTBhaal

IF~AreaCheck("rtf077") See(Player1) Global("Bhaal77","rtf077",0)~THEN BEGIN Ghost1
SAY@0
IF~~THEN REPLY@1GOTO Ghost2
IF~~THEN REPLY@2GOTO Ghost2
END

IF~~THEN BEGIN Ghost2
SAY@3
IF~~THEN REPLY@4GOTO Ghost3
IF~~THEN REPLY@5 GOTO Ghost3
END

CHAIN
IF~~THEN RTBhaal Ghost3
@6
DO~SetGlobal("Bhaal77","rtf077",1)~
==CVSan25J@7
==RTBhaal@8
==CVLey25J IF~InParty("Leyala")~THEN@9
==CVSan25J@10
==RTBhaal@11 DO~DestroySelf()~
END
++@12EXIT
