CHAIN
IF WEIGHT #-9~GlobalGT("RCChloeFather","Global",1) AreaCheck("ar0709")~THEN RCHLOEP meetrtf
@0
==CVSan25J@1
==RChloeP@2
=@3
==CVSan25J@4
==RChloeP@5
==CVSan25J@6
END
++@7+ joinrtf
++@8+ joinrtf
++@9+ joinrtf

CHAIN
IF~~THEN RCHLOEP joinrtf
@10
END
++@11 DO ~JoinParty()~ EXIT
++@12 DO ~EscapeArea()~ EXIT