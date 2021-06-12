BEGIN RTIren

CHAIN
IF~Global("RTIrenApp","ar0602",1)~THEN RTIren Disturb1
@0
DO~SetGlobal("RTIrenApp","ar0602",2)~
==RTIren@1
END
++@2+ Disturb2

CHAIN
IF~~THEN RTIren Disturb2
@3
==RTIren IF~Global("SanRomPath","GLOBAL",1)~THEN@4
==RTIren IF~Global("SanRomPath","GLOBAL",2)~THEN@5
==CVSan25J@6
==RTIren@7
==CVSan25J@8
==RTIren@9
==CVSan25J@10
=@11
==RTIren@12
==CVSan25J@13
==RTIren@14
END
++@15+ Disturb3
++@16 + Disturb3
++@17 + Disturb3

CHAIN
IF~~THEN RTIren Disturb3
@18
==CVSan25J@19
=@20
=@21
==RTIren@22
=@23
==CVSan25J@24
==RTIren@25
==CVSan25J@26
END
++@27 + Disturb4
++@28 + Disturb4
++@29 + Disturb4
++@30 + Disturb4

CHAIN
IF~~THEN RTIren Disturb4
@31
==CVSan25J@32
==RTIren@33
==CVSan25J@34
==RTIren@35
=@36
END
++@37+ Disturb5
++@38 + Disturb5

CHAIN 
IF~~THEN RTIren Disturb5
@39EXIT

CHAIN
IF~Global("RTIrenApp","ar0602",6)~THEN RTIren Colle1
@40
DO~SetGlobal("RTIrenApp","ar0602",7)~
==CVSan25J@41
==RTIren@42
==CVSan25J@43
==RTIren@44
=@45
==CVSan25J@46
END
++@47+ Colle2

CHAIN
IF~~THEN RTIren Colle2
@48
==CVLou25J IF~InParty("Loureed") G("lrSendaiSoul",1)~THEN@49
==RTIren IF~InParty("Loureed") G("lrSendaiSoul",1)~THEN@50
==CVLou25J IF~InParty("Loureed") !G("lrSendaiSoul",1)~THEN@51
==RTIren IF~InParty("Loureed") !G("lrSendaiSoul",1)~THEN@52
==RTIren@53
==CVSan25J@54
==RTIren@55
END
++@56+ Colle3
++@57+ Colle3
++@58+ Colle3
++@59+ Colle4

CHAIN
IF~~THEN RTIren Colle4
@60
=@61
DO~ TakePartyItem("RTFlui") AddJournalEntry(@2049,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF~~THEN RTIren Colle3
@61
DO~ TakePartyItem("RTFlui") AddJournalEntry(@2049,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF WEIGHT #-7~Global("RTIrenApp","ar0602",3)~THEN LRRielev Lassal1
@62
=@63
DO~SetGlobal("RTIrenApp","ar0602",4)~
==RTIren@64
==CVSan25J@65
==LRRielev@66
==RTIren@67
=@68
=@69
DO~ClearAllActions() SetGlobal("SanRTFColl","GLOBAL",1) ActionOverride("LRRielev",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("RTIren",ReallyForceSpell(Myself,DRYAD_TELEPORT))~EXIT