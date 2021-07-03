CHAIN
IF~ Global("Meet1","RTF903",1)~THEN CVSzas BezSurpr1
@0
=@1
DO~SetGlobal("Meet1","RTF903",2)~
==CVSan25J@2
==CVSzas@3
==CVSan25J@4
==CVSzas@5
DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Meet1","RTF903",2)~ THEN CVSan25J BezSurpr2
@6
DO~SetGlobal("Meet1","RTF903",3)~
END
IF~~THEN REPLY@7+ BezSurpr3
IF~~THEN REPLY@8+ BezSurpr3

CHAIN
IF~~ THEN CVSan25J BezSurpr3
@9
==CVSan25J IF~Global("SanRomPath","GLOBAL",1)~THEN@10
==CVSan25J IF~Global("SanRomPath","GLOBAL",2)~THEN@11 EXIT