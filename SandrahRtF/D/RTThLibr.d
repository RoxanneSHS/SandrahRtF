BEGIN  RTLibLi

IF~Global("RTLiztrap","GLOBAL",3)~THEN BEGIN Blood
SAY@0
IF~~THEN DO~SetGlobal("RTLiztrap","GLOBAL",2)~EXIT
END


IF~Global("RTLiztrap","GLOBAL",1)~THEN BEGIN Notor
SAY@1
IF~~THEN DO~SetGlobal("RTLiztrap","GLOBAL",2)~EXIT
END

IF~Global("RTLiztrap","GLOBAL",0)~THEN BEGIN leave
SAY@2
IF~~THEN REPLY@3DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
IF~~THEN REPLY@4DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
IF~~THEN REPLY@5DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
END

BEGIN RTLibMa
CHAIN
IF~Global("SpokeLib","RTF058",0)~THEN RTLibMa Book1
@6
DO~SetGlobal("SpokeLib","RTF058",1)~
==CVSan25J@7
==RTLibMa@8
==CVSan25J@9
==RTLibMa@10
=@11
==CVSan25J@12
=@13
==RTLibMa@14
==CVSan25J@15
=@16
==RTLibMa@17
==CVSan25J@18
==RTLibMa@19DO~EscapeArea()~EXIT

CHAIN
IF~Global("SpokeLib","RTF058",1)~THEN RTLibMa Book2
@20 EXIT
