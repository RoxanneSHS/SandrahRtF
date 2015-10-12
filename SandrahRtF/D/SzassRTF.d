CHAIN
IF~ Global("Meet1","RTF903",1)~THEN CVSzas BezSurpr1
~Whom do we have here?~
=~That's an interesting turn of events...the little priestess of Mystra from the Stormhorns...~
DO~SetGlobal("Meet1","RTF903",2)~
==CVSan25J~That is an interesting remark, Szass.~
==CVSzas~Your goddess surely misjudges once again what is really going on - to send YOU and this ragged band of fledgling adventurers!! I can surely leave your elimination to the authorities of Bezantur. False alert it seems.~
==CVSan25J~(Smiles) Someone surely misjudges the situation here.~
==CVSzas~HAHAHA, Goddess of all Mystic...HAHAHAHA...~
DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Meet1","RTF903",2)~ THEN CVSan25J BezSurpr2
~(As Szass' laughter trails off, Sandrah smiles and shakes her head.) How very unexpected and fortunate, <CHARNAME>.~
DO~SetGlobal("Meet1","RTF903",3)~
END
IF~~THEN REPLY~With all his allies and spies - does it mean he has no idea of WHO WE ARE?~+ BezSurpr3
IF~~THEN REPLY~How can he NOT know you are Mystra herself - was he the REAL Szass after all?~+ BezSurpr3

CHAIN
IF~~ THEN CVSan25J BezSurpr3
~Obviously no one has considered it necessary to inform the Necromancer of the changes that have occured in the Pantheon recently. Only some of the gods and half-gods we anticipate to be in league with him know it anyway. Most likely everyone has assumed he would know it already and so nobody found it necessary to mention it.~
==CVSan25J IF~Global("SanRomPath","GLOBAL",1)~THEN~And - as far as I know - the new God of Love and Hope is among the few gods not worshipped in Thay due to his relation to the hated Mystra.~
==CVSan25J IF~Global("SanRomPath","GLOBAL",2)~THEN~And - as far as I know - the new Goddess of Love and Hope is among the few gods not worshipped in Thay due to her relation to the hated Mystra.~ EXIT