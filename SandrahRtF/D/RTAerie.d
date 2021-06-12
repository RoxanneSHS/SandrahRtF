BEGIN RTAerie

CHAIN
IF~AreaCheck("RTF112") Global("RTWed","RTF112",0)~ THEN RTAerie Wed1
@0
DO~SetGlobal("RTWed","RTF112",1)~
==RTIren@1
==RTAerie@2
==RTIren@3
==CVSan25J@4
==RTIren@5
==RTAerie@6
==CVLey25J IF~InParty("Leyala") Global("SanRomPath","GLOBAL",1)~THEN@7
==CVLey25J IF~InParty("Leyala") Global("SanRomPath","GLOBAL",2)~THEN@8
==RTAerie IF~InParty("Leyala")~ THEN@9 DO~AddXPObject("Leyala",12500)~
==CVSan25J IF~!InParty("Leyala") Global("SanRomPath","GLOBAL",1)~THEN@10
==CVSan25J IF~!InParty("Leyala") Global("SanRomPath","GLOBAL",2)~THEN@11
==RTIren@12
==RTAerie@13
==RTIren@14EXIT

CHAIN
IF~Global("AerieCreated","ar0601",1)~THEN RTAerie JonLove1
@15
DO~SetGlobal("AerieCreated","ar0601",2)~
END
++@16+ JonLove2
++@17 + JonLove2
++@18 + JonLove2

CHAIN
IF~~THEN RTAerie JonLove2
@19
==CVSan25J@20
==RTAerie@21
==CVSan25J@22
==RTAerie@23
==CVSan25J@24
==RTAerie@25
==CVSan25J@26
==RTAerie@27
==CVSan25J@28
==RTAerie@29
=@30
==CVSan25J@31
==RTAerie@32
==CVSan25J@33
==RTAerie@34 DO~ Polymorph(WYVERN_FAMILIAR)~EXIT