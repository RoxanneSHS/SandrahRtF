CHAIN
IF WEIGHT #-2~Global("RTCloakwood","GLOBAL",1)~THEN Desslo Trap1
~Keep away, brigands! A hermit needs his peace.~
==CVSan25J~Do not worry, we are just passing through to Candlekeep.~
==Desslo~This hassle and *just passing through* has its end. The monks are to be left alone just like me. This land now belongs to the hermits and the druids.~
END
++~Hey, hey, this land belongs to nobody. This is an open road since the beginning of the Sword Coast for all who seek Oghma's wisdom.~ +Trap2
++~Hermits and druids? Hypocrites and thieves, I'd say. The road to Candlekeep is open to all who seek wisdom.~ +Trap2

CHAIN
IF~~THEN Desslo Trap2
~All the wisdom of Candlekeep will not help you today, fools that you are and fools that you stay.~
DO~SetGlobal("RTCloakwood","GLOBAL",2) ClearAllActions() StartCutSceneMode() FadeTOColor([30.0],0)Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ar8403","",[213.168],0))
ActionOverride(Player2,LeaveAreaLUA("ar8403","",[213.168],0))
ActionOverride(Player3,LeaveAreaLUA("ar8403","",[213.168],0))
ActionOverride(Player4,LeaveAreaLUA("ar8403","",[213.168],0))
ActionOverride(Player5,LeaveAreaLUA("ar8403","",[213.168],0))
ActionOverride(Player6,LeaveAreaLUA("ar8403","",[213.168],0))
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
~My little trainees will take care that you stay in there if you wish to keep alive. ~
DO~Enemy()~
END
++~Your *trainees* have grown a bit since we last met.~EXIT

CHAIN
IF WEIGHT #-2~ Global("RTCloakwood","GLOBAL",4) See([PC]) Allegiance(Myself,NEUTRAL) ~THEN Cythan ReturnClkw2
~Peter, I knew you would not be able to handle them alone. I advised you to alert me immediately should they awake.~
DO~SetGlobal("RTCloakwood","GLOBAL",5) SetGlobal("TalkedToCythan","GLOBAL",1) ~
==Coksmth IF~!StateCheck("Peter",CD_STATE_NOTVALID)~THEN~Cythandria, have a bit of faith, my dear.~
==Cythan IF~!StateCheck("Peter",CD_STATE_NOTVALID)~THEN~Bah, you told me the same between the sheets last night - before I fell asleep in frustration.~
==Cythan~Anything I don't do myself will not be done correctly.~
==CVSan25J~Sarevok's old consort Cythandria seems to have found a new master, or is it rather that you try to play the role of the mistress here - based on what you have NOT learned from your former Bhaalspawn?~
==Cythan~You and your Bhaalspawn have not learned to keep your noses out of other people's affairs, it seems.~
==CVSan25J~We would have left you and your strange companion in your little kingdom out here. We have been kidnapped and taken to here, did you forget?~
==Cythan~Who did...oh, that idiot Kollossed! He seems to have over reacted again, just like with that Faldorn druid...~
END
++~Faldorn is here as well?~EXTERN  CVSan25J  ReturnClkw3

CHAIN
IF ~~THEN CVSan25J  ReturnClkw3
~Not by her own choice as it sounds to me.~
==Cythan~You are surely not be in a position to free her. I am not without my defenses <CHARNAME>.  I am a conjurer of some proficiency as you should remember.  Come, my minions, make short work of these intruders!~
DO~CreateCreature("ARGHH",[1680.927],1) CreateCreature("ARGHH",[2281.957],4)CreateCreature("UGHH",[1988.1533],8) CreateCreature("UGHH",[2191.1122],1)
Enemy()~EXIT

CHAIN
IF WEIGHT #-2~ Global("RTCloakwood","GLOBAL",7) ~THEN Faldor InRTFCL
~Do I have to thank you for setting me free or are you here to kill me?~
DO~SetGlobal("RTCloakwood","GLOBAL",8) ~
==CVSan25J~It will depend on the story you have to tell us. How come you are here today as a prisoner? ~
==Faldor~I have meditated for a long time seeking the truth from the Great Mother after my ambitions in the south had all failed. ~
=~I wandered the woods alone seeking my peace. I came out of the shadow that I inherited.~
=~The Great Mother finally led me back to the Cloakwood where I found some peaceful druids who took me in without too many questions.~
==CVSan25J~What happened to them?~
==Faldor~The crazy sorceress and her even more crazy wyvern tamer slaughtered all in sleep with only me escaping to this treehouse. I defended this last stand but it is as well my prison now.~
END
++~You are free to go, druid, we have defeated the intruders.~ + InRTFCL2
++~As you have left the shadow druids, why don't you come with us?~ + InRTFCL2

CHAIN
IF~~ THEN Faldor InRTFCL2
~You have cleaned the groove again? I thank you. The Great Mother has a task for me. I must restore the wounds of these woods and make it home for druids of light again. Farewell. Walk in the light of our Great Mother.~
DO~AddexperienceParty(9000) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
