BEGIN RTKELEM
BEGIN RTSharp
BEGIN RTSenda
BEGIN RTBodhi
BEGIN RTVelsh

CHAIN
IF WEIGHT #-1~Global("RTopen","BG4500",1)~THEN Sankaba Firew
@0
DO~SetGlobal("RTopen","BG4500",2)~
==CVSan25J@1
==Sankaba@2
==CVSan25J@3
==Sankaba@4
=@5
==CVSan25J@6
==Sankaba@7DO~GiveItemCreate("NTPBLET1",Player1,1,0,0) GiveItemCreate("RTKalflo","CVSandr",1,0,0) ~EXIT

CHAIN
IF WEIGHT #-4~Global("SanRTFPlot4","GLOBAL",2) Global("TazHelp","RTF120",0)~THEN Tazok Kelem1
@8
DO~SetGlobal("TazHelp","RTF120",1)~
==CVSan25J@9
==Tazok@10
=@11EXIT

CHAIN 
IF WEIGHT #-4~Global("SanRTFPlot4","GLOBAL",2) NumTimesTalkedTo(0)~THEN Firkra02 Kelem2
@12
==CVSan25J@13
==Firkra02@14
=@15DO~Enemy()~EXIT

CHAIN
IF~AreaCheck("RTF120") Dead("RTSarev") Global("SarevT","RTF120",1)~THEN RTSarev Kelem3
@16
DO~SetGlobal("SarevT","RTF120",2)~
=@17
END
++@18DO~SetGlobal("SarevT","RTF120",3)~EXIT
++@19 DO~ActionOverride("RTSarev",EscapeArea())~EXIT

CHAIN
IF~AreaCheck("RTF120") !Dead("RTSarev")Global("SarevT","RTF120",1)~THEN RTSarev Kelem4
@20
DO~SetGlobal("SarevT","RTF120",2)~
==CVSan25J@21
==RTSarev@22
==CVSan25J@23
==RTSarev@24
END
++@18DO~SetGlobal("SarevT","RTF120",3)~EXIT
++@19 DO~ActionOverride("RTSarev",EscapeArea())~EXIT

CHAIN
IF~ AreaCheck("RTF120")~THEN RTSharp Att120
@25DO~Enemy()~EXIT

CHAIN
IF~AreaCheck("RTF121") Global("Bodhimeet","RTF121",0)~THEN RTBodhi KelemBo
@26
=@27
DO~SetGlobal("Bodhimeet","RTF121",1)~
==CVSan25J@28
==RTBodhi@29
END
++@30+ Kelembo1
++@31+ Kelembo1

CHAIN
IF~~THEN RTBodhi Kelembo1
@32
==CVSan25J@33
==RTBodhi@34DO~Enemy() SetGlobalTimer("xyxVampireDomination","LOCALS",ONE_ROUND) ForceSpell(LastSeenBy(Myself),VAMPIRE_DOMINATION)~EXIT

CHAIN
IF~AreaCheck("RTF121") Global("Sendmeet","RTF121",0)~THEN RTSenda KelemSe
@35
=@36
DO~SetGlobal("Sendmeet","RTF121",1)~
==CVLOU25J IF~InParty("Loureed")~THEN@37
==RTSenda IF~InParty("Loureed")~THEN@38
==CVLOU25J IF~InParty("Loureed")~THEN@39
==CVSan25J@40
==RTSenda@41
END
++@42+ KelemSe1

CHAIN
IF~~THEN RTSenda KelemSe1
@43
DO~Enemy()SetGlobalTimer("ChainContingency","LOCALS",1000) ReallyForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_ENERGY)
ReallyForceSpell(Myself,WIZARD_SPELL_TURNING)~EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",2) ~ THEN RTKelem Ally1
@44
DO~SetGlobal("SanRTFPlot4","GLOBAL",3)~
==CVSan25J@45
=@46
==RTKelem@47
==CVSan25J@48
==RTKelem@49
==CVSan25J@50
==RTKelem@51
==CVSan25J@52
==RTKelem@53
==CVSan25J@54
==RTKelem@55
==CVSan25J@56
==RTKelem@57
==CVSan25J@58
=@59
==RTKelem@60DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Velshf","RTF340",2)~ THEN RTVelsh Firew1
@61
DO~SetGlobal("Velshf","RTF340",3) RealSetGlobalTimer("VelshFT","RTF340",120)RealSetGlobalTimer("VelshVul","LOCALS",100)~
==RTKelem@62
==RTVelsh@63
==RTKelem@64
==RTVelsh@65
==RTKelem@66
==RTVelsh@67
==RTKelem@68
==RTVelsh@69
==RTKelem@70
==RTVelsh@71
==RTKelem@72
==RTVelsh@73DO~Enemy()~EXIT

CHAIN
IF~Global("Kele123","LOCALS",1)~ THEN RTKelem Blacktow1
@74
DO~SetGlobal("Kele123","LOCALS",2)~
==CVSan25J@75
==RTKelem @76EXIT
