CHAIN
IF WEIGHT #-2~Global("RTCloakwood","GLOBAL",1)~THEN Desslo Trap1
@0
==CVSan25J@1
==Desslo@2
END
++@3 +Trap2
++@4 +Trap2

CHAIN
IF~~THEN Desslo Trap2
@5
DO~SetGlobal("RTCloakwood","GLOBAL",2) ClearAllActions() StartCutSceneMode() FadeTOColor([30.0],0)Wait(1)
ActionOverride(Player1,LeaveAreaLUA("BG1603","",[213.168],0))
ActionOverride(Player2,LeaveAreaLUA("BG1603","",[213.168],0))
ActionOverride(Player3,LeaveAreaLUA("BG1603","",[213.168],0))
ActionOverride(Player4,LeaveAreaLUA("BG1603","",[213.168],0))
ActionOverride(Player5,LeaveAreaLUA("BG1603","",[213.168],0))
ActionOverride(Player6,LeaveAreaLUA("BG1603","",[213.168],0))
Wait(1)
ApplySpellRES("CVSLEEP",Player2)
ApplySpellRES("CVSLEEP",Player3)
ApplySpellRES("CVSLEEP",Player4)
ApplySpellRES("CVSLEEP",Player5)
ApplySpellRES("CVSLEEP",Player6)
ApplySpellRES("CVSLEEP",Player1)
Wait(1)
FadeFromColor([30.0],0)
EndCutSceneMode()
DestroySelf()~ EXIT

CHAIN
IF WEIGHT #-2~ Global("RTCloakwood","GLOBAL",3) See([PC]) Allegiance(Myself,NEUTRAL) ~THEN Coksmth ReturnClkw
@6
DO~Enemy()~
END
++@7EXIT

CHAIN
IF WEIGHT #-2~ Global("RTCloakwood","GLOBAL",4) See([PC]) Allegiance(Myself,NEUTRAL) ~THEN Cythan ReturnClkw2
@8
DO~SetGlobal("RTCloakwood","GLOBAL",5) SetGlobal("TalkedToCythan","GLOBAL",1) ActionOverride("Coksmth",DestroyItem("ImoSlHP1"))~
==Coksmth IF~!StateCheck("Coksmth",CD_STATE_NOTVALID)~THEN@9
==Cythan IF~!StateCheck("Coksmth",CD_STATE_NOTVALID)~THEN@10
==Cythan@11
==CVSan25J@12
==Cythan@13
==CVSan25J@14
==Cythan@15
END
++@16EXTERN  CVSan25J  ReturnClkw3

CHAIN
IF ~~THEN CVSan25J  ReturnClkw3
@17
==Cythan@18
DO~CreateCreature("ARGHH",[1680.927],1) CreateCreature("ARGHH",[2281.957],4)CreateCreature("UGHH",[1988.1533],8) CreateCreature("UGHH",[2191.1122],1)
Enemy()~EXIT

CHAIN
IF WEIGHT #-2~ Global("RTCloakwood","GLOBAL",7) ~THEN Faldor InRTFCL
@19
DO~SetGlobal("RTCloakwood","GLOBAL",8) ~
==CVSan25J@20
==Faldor@21
=@22
=@23
==CVSan25J@24
==Faldor@25
END
++@26 + InRTFCL2
++@27 + InRTFCL2

CHAIN
IF~~ THEN Faldor InRTFCL2
@28
DO~AddexperienceParty(9000) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
