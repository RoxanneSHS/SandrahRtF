BEGIN RTRedWi1

IF~AreaCheck("RTF103")~THEN BEGIN Hungry
SAY@0
IF~~THEN EXIT
END

CHAIN
IF~Global("Redward","RTF060",1) AreaCheck("RTF060")~THEN RTRedwi1 NoAccess1
@1
DO~SetGlobal("Redward","RTF060",2)~
==CVSan25J@2
==RTRedwi1@3
==CVSan25J@4
==RTRedwi1@5
=@6EXIT

CHAIN
IF~Global("In106","RTF106",1)~THEN RTRedwi1 DeadEnd
@7
DO~SetGlobal("In106","RTF106",2)~
==CVSAN25J IF ~ Global("RTSamThrone","GLOBAL",0)~THEN@8
==RTRedwi1 IF ~ Global("RTSamThrone","GLOBAL",0)~THEN@9
==CVSAN25J IF ~ Global("RTSamThrone","GLOBAL",0)~THEN@10
==RTRedwi1 IF ~ Global("RTSamThrone","GLOBAL",0)~THEN@11DO~Enemy()~
==CVSAN25J IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN@12
==RTRedwi1 IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN@13
==RTRedwi1 IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN@11DO~Enemy()~EXIT
