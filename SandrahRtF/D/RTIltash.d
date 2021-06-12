BEGIN RTIltash

IF~Global("RTGetOut","GLOBAL",6)~ THEN BEGIN Burglar1
SAY@0
IF~~THEN REPLY@1GOTO Burglar2
IF~~THEN REPLY@2 GOTO Burglar3
IF~~THEN REPLY@3GOTO Burglar4
IF~~THEN REPLY@4 GOTO Burglar3
END

IF~~THEN BEGIN Burglar2
SAY@5
IF~~THEN GOTO Burglar5
END

IF~~THEN BEGIN Burglar3
SAY@6
IF~~THEN GOTO Burglar5
END

IF~~THEN BEGIN Burglar4
SAY@7
IF~~THEN DO~ SetGlobal("RTGetOut","GLOBAL",7) EscapeArea()~EXIT
END

IF~~THEN BEGIN Burglar5
SAY@8
IF~~THEN DO~ SetGlobal("RTGetOut","GLOBAL",7) EscapeArea()~EXIT
END

IF~ Global("RTGetOut","GLOBAL",8) ~THEN BEGIN Deceiver1
SAY@9
IF~~THEN REPLY@10 GOTO Deceiver2
IF~~THEN REPLY@11GOTO Deceiver2
END

IF~~THEN BEGIN Deceiver2
SAY@12
=@13
IF~~THEN DO~SetGlobal("RTGetOut","GLOBAL",9)Enemy()~ EXIT
END

CHAIN
IF~Global("RTSaeHij","GLOBAL",4)~THEN RTIltash FoundSaem
@14
DO~SetGlobal("RTSaeHij","GLOBAL",5)~
==RTSaemon@15
==CVSan25J@16
==RTIltash@17
==RTSaemon@18
==RTIltash@19
==CVSan25J@20
==RTIltash@21DO~Enemy()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",4)~ THEN RTIltash Foundestate
@22
DO~SetGlobal("CitEntpl","GLOBAL",5)~
==RTEdwin@23
==RTIltash@24
DO~Enemy()~EXIT
