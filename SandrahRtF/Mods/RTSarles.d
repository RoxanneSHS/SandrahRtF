BEGIN RTSarles
BEGIN RTSamArt

CHAIN
IF~AreaCheck("RTF104")~ THEN RTSarles Judge
@0
END
++@1+ Sancho

CHAIN
IF~~ THEN RTSarles  Sancho
@2
==CVSan25J@3
==RTSarles@4
==RTSamArt@5
==RTSarles@6
==RTSamArt@7
=@8
==RTSarles@9
==RTSamArt@10
==RTSarles@11
==RTSamArt@12
==CVSan25J@13
END
++@14 + Mani
++@15 + Neut
++@16 + Good

CHAIN
IF~~ THEN RTSarles Mani
@17DO~EscapeArea()~
==RTSamArt@18
DO~EscapeArea() AddexperienceParty(6500) ReputationInc(1)~ EXIT

CHAIN
IF~~ THEN RTSarles Neut
@19DO~EscapeArea()~
==RTSamArt@20
DO~EscapeArea() AddexperienceParty(7500)~ EXIT

CHAIN
IF~~ THEN RTSarles Good
@21 DO~EscapeArea()~
==RTSamArt@22
DO~EscapeArea() AddexperienceParty(2500) ReputationInc(-1)~EXIT