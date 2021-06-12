BEGIN RTElles
BEGIN RTDeher

CHAIN
IF~AreaCheck("ar2800")Global("SanTotStart","Global",0)~THEN RTElles InRTF1
@0
==CVSan25J@1
==RTElles@2
==CVSan25J@3
END
++@4+ InRTF2
++@5 + InRTF2

CHAIN
IF~~THEN RTElles InRTF2
@6
==CVSan25J@7
==RTElles@8
==RTDeher@9
END
++@10 EXTERN RTDeher Deherjoin
++@11 EXTERN RTDeher Deherstay

CHAIN
IF~~THEN RTDeher Deherjoin
@12
DO~SetGlobal("P#DehWelcome","GLOBAL",3)SetGlobal("DeherJoined","GLOBAL",1)
ActionOverride("P#DEHER",ReallyForceSpellRES("fjxpmooc",Myself)) ActionOverride("P#DEHER",JoinParty()) ActionOverride("RTElles",EscapeArea())~EXIT

CHAIN
IF~~THEN RTDeher Deherstay
@13
DO~ActionOverride("P#DEHER",EscapeArea()) ActionOverride("RTElles",EscapeArea())~EXIT

CHAIN
IF WEIGHT #-4~Global("InRTF","ar2800",1)~THEN Suelf10 Store
@14
END
++@15 EXTERN Suelf10 18