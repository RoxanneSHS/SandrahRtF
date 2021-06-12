BEGIN Giran25

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",0) ~THEN Giran25 Greet1
@0
DO~SetGlobal("SanRTFGiranOK","GLOBAL",1)~
==CVSan25J@1
==Giran25@2
==CVSan25J@3
==Giran25@4
==CVSan25J@5
==Giran25@6
END
++@7EXIT


CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",2)~THEN Giran25 Greet2
@8
DO~SetGlobal("SanRTFGiranOK","GLOBAL",3)~
==CVSan25J@9
==Giran25@10
END
++@11 +Join
++@12EXIT
++@13EXIT
++@14 +Join

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",3)~ THEN Giran25 Greet3
@15
END
++@16 +Join
++@12EXIT
++@13EXIT
++@17 +Join

CHAIN
IF~~ THEN Giran25 Join
@18
==CVShauq IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN@19
==Giran25 IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN@20
==CVShauq IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN@21
==Giran25@22 DO~SetGlobal("SanRTFGiranOK","GLOBAL",4) JoinParty()~ EXIT