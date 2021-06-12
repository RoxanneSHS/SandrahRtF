BEGIN RTSPTa1
BEGIN RTSPEil1

CHAIN
IF~Global("RTPriQ","BG4800",2)~THEN RTSPEil1 Quar
@0
DO~SetGlobal("RTPriQ","BG4800",3)~
==RTSPTa1@1
==RTSPEil1@2
==RTSPTa1@3
==RTSPEil1@4
==RTSPTa1@5DO~Enemy() Attack("RTSPeil1") ActionOverride("Pellig3",Attack("RTSPTal1")~EXIT

CHAIN
IF~ Global("RTPriQ","BG4800",3)~THEN RTSPEil1 Quar2
@6
DO~SetGlobal("RTPriQ","BG4800",4)~
==PelligJ@7
==RTSPEil1@8 DO~EscapeArea()~
==PelligJ@9DO~AddexperienceParty(2150)~EXIT

CHAIN
IF~Global("RTPriQ2","CVElm4",1) AreaCheck("CVELM4")~ THEN RTYouSha InWDSP
@10
DO~SetGlobal("RTPriQ2","CVElm4",2) ~
==RTMoninj@11
==RTYouSha@12
==PelligJ@13
==RTMoninj@14 DO~EscapeArea()~
==PelligJ@15
==RTYouSha@16DO~EscapeArea()~
==PelligJ@17
END
++@18EXIT