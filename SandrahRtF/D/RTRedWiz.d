BEGIN RTRedWi1

IF~AreaCheck("RTF103")~THEN BEGIN Hungry
SAY~A lot of turmoil in the house today, I hope they still serve dinner on time.~
IF~~THEN EXIT
END

CHAIN
IF~Global("Redward","RTF060",1) AreaCheck("RTF060")~THEN RTRedwi1 NoAccess1
~The High Court is not accessible to the public.~
DO~SetGlobal("Redward","RTF060",2)~
==CVSan25J~Law and justice are a secret here in Bezantur?~
==RTRedwi1~You sure don't want to find that out, lady. Those who enter here leave either to endure slavery or execution.~
==CVSan25J~Unless their innocence is proven, you mean?~
==RTRedwi1~What? Eh...I never heard of such a case.~
=~Now move on, outlanders, this is no place for you - at least not yet. Make sure it stays that way.~EXIT

CHAIN
IF~Global("In106","RTF106",1)~THEN RTRedwi1 DeadEnd
~Are you the ones to cause all this turmoil in the building?~
DO~SetGlobal("In106","RTF106",2)~
==CVSAN25J IF ~ Global("RTSamThrone","GLOBAL",0)~THEN~There will be more up here if you dare to stop us from seeing Samas Kul.~
==RTRedwi1 IF ~ Global("RTSamThrone","GLOBAL",0)~THEN~You have lost your way it seems, this is surely not the way you were sent.~
==CVSAN25J IF ~ Global("RTSamThrone","GLOBAL",0)~THEN~I admit we had little time to inquire for directions...~
==RTRedwi1 IF ~ Global("RTSamThrone","GLOBAL",0)~THEN~Aaah, maybe it will help my stalling career to stop you from trespassing even further!!~DO~Enemy()~
==CVSAN25J IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN~It was not easy to receive an audience with Samas Kul, we needed to use some persuasive measures.~
==RTRedwi1 IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN~You talk sweetly but act bloody. You left a trail of destruction among our ranks.~
==RTRedwi1 IF ~ !Global("RTSamThrone","GLOBAL",0)~THEN~Aaah, maybe it will help my stalling career to stop you from trespassing even further!!~DO~Enemy()~EXIT
