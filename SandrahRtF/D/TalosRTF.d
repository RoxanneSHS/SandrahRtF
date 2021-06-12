CHAIN
IF~Global("RTFTalAmb","BG3200",1)~THEN CVTalop1 Thalameet
@0
DO~SetGlobal("RTFTalAmb","BG3200",2)~
==CVSAn25J@1
==CVTalop1@2
==CVSAn25J@3
=@4
==CVTalop1@5
==CVSAn25J@6
==CVTalop1@7EXIT

CHAIN
IF~Global("InRTF","ar61pb",2)~THEN CVTalos GoneRTF1
@8
DO~SetGlobal("InRTF","ar61pb",3)~
==CVSan25J@9
==CVTalos IF~Global("SanRomPath","GLOBAL",1)~THEN @10
==CVTalos IF~Global("SanRomPath","GLOBAL",2)~THEN @11
==CVSan25J@12
==CVTalos@13
==CVSan25J@14
==CVTalos@15
==CVSan25J@16
DO~ClearAllActions() StartCutSceneMode() CreateCreatureObjectDoor("solar",Player1,0,0,0)Wait(6) EndCutSceneMode() Wait(2) ActionOverride("Solar",StartDialogueNoSet([PC]))~EXIT

CHAIN
IF WEIGHT #-12~Global("InRTF","ar61pb",3)~THEN Solar GoneRTF2
@17
DO~SetGlobal("InRTF","ar61pb",4)~
=@18
==CVSan25J@19
==CVTalos@20
==Solar@21
==CVSan25J@22
==Solar@23
=@24DO~ActionOverride("CVTalos",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("Solar",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ~EXIT