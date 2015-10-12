BEGIN RSlaver1
BEGIN RSlaver2
BEGIN RTNild
BEGIN RTHartl

BEGIN RTNorr

IF~GlobalLT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Hint
SAY~You seek Nildjek? Go to house east.~
IF~~THEN EXIT
END

IF~GlobalGT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Thank
SAY~Always welcome to Clan Orc new town, friends.~
IF~~THEN EXIT
END

APPEND CVGir25J

IF~Global("RTGiranQuest","GLOBAL",1)~ THEN BEGIN SeeBoy
SAY~Did you see that, <CHARNAME>?~
IF~~THEN REPLY~What?~ DO~SetGlobal("RTGiranQuest","GLOBAL",2)~GOTO SeeBoy2
END

IF~~THEN BEGIN SeeBoy2
SAY~An orc boy, here in Thay, definitely Clan-Orc. He vanished into this building over there.~
IF~~THEN REPLY~The caravanserai?~ EXIT
IF~~THEN REPLY~It does not hurt to check it out.~ EXIT
END

IF~Global("RTGiranQuest","GLOBAL",5)~ THEN BEGIN OrcHelp1
SAY~Have you heard what those slavers said, <CHARNAME>?~
IF~~THEN REPLY~Very far north west from here, that describes the location of the Stormhorns.~ GOTO OrcHelp2
IF~~THEN REPLY~Why should any of your folks have come all the way to here recently?~ GOTO OrcHelp2
END

IF~~THEN BEGIN OrcHelp2
SAY~You were there when Mama took the reign over the Clans.~
IF~~THEN REPLY~Most were supporting her - or did she drive some from the Clan's land?~ GOTO OrcHelp7
IF~~THEN REPLY~There were still some who did not accept the half-orc ruler and her human family.~ GOTO OrcHelp7
END

IF~~THEN BEGIN OrcHelp7
SAY~Gathlenk's son, Nildjek, some time ago managed to gather the remainder of the opposition around him.~
=~Shauhana tried to negotiate with him and to integrate them into the Clans. However, before anything was achieved, Nildjek and his people...well,...they no longer could be found. We suspected they had left to somewhere in the east to seek a new fortune.~
IF~~THEN REPLY~This fortune may now be to end as Thayan slaves.~ DO~SetGlobal("RTGiranQuest","GLOBAL",6)~GOTO OrcHelp3
END

IF~~THEN BEGIN OrcHelp3
SAY~<CHARNAME>, this will not happen! They are Clan Orcs! They are MY people.~
=~They may have erred or they may have been too proud to accept their new queen but they do not deserve what those slavers plan with them - no one deserves that.~
IF~~THEN REPLY~You are determined to intervene - and so am I.~ GOTO OrcHelp4
IF~~THEN REPLY~I doubt that we are in a very good position ourselves to help them.~ GOTO OrcHelp4
END

IF~~THEN BEGIN OrcHelp4
SAY~None of us can stop those slavers with their red wizards alone. But if they are warned and we can use our party's skills to prevent the red spellcasters to disable the orcish fighting power, we can spoil the attack.~
IF~~THEN REPLY~And then?~ GOTO OrcHelp5
END

IF~~THEN BEGIN OrcHelp5
SAY~They will be welcome back home if they want that. If not then they are at least free to try their luck somewhere else.~
IF~~THEN REPLY~They could live as free orcs in a new Thay should the Red Hoods be successful. Now we must first find out where your people are.~ GOTO OrcHelp6
IF~~THEN REPLY~You will be a good leader one day, Giran. Yes, let them decide for themselves, we will provide them with the option to make a choice if we can find them.~GOTO OrcHelp6
END

IF~~THEN BEGIN OrcHelp6
SAY~The little spy we saw should tell us, don't forget I'm a ranger and can follow his unique trail. He went to the eastern harbour, the Foreign Trade area.~
IF~~THEN EXIT
END

IF~Global("RTGiranQuest","GLOBAL",7)~ THEN BEGIN Trail1
SAY~See, the little footprints lead east, all along the shoreline and harbour and then to the north.~
IF~~THEN REPLY~Fine, let us follow quickly.~ DO~SetGlobal("RTGiranQuest","GLOBAL",8)~EXIT
IF~~THEN REPLY~Fine, let us stock up our resources and rest before we follow the trail.~ DO~SetGlobal("RTGiranQuest","GLOBAL",8)~EXIT
END
END

CHAIN
IF~Global("RTGiranQuest","GLOBAL",4)~  THEN RSlaver2 Overhear
~...they will be worth a fortune, at least the men.~
DO~SetGlobal("RTGiranQuest","GLOBAL",5)~
==RSlaver1~Oh, yes, I heard the woman are ugly hairy brutes - but those men first need to be defeated.~
==RSlaver2~Their fighting qualities make up their worth, nothing compared to those orcs you find elsewhere.~
==RSlaver1~They say that they come from very far north west, they fought their trail all the way through to the borderland between us and Rashemen, where they now dwell.~
==RSlaver2~They had no losses, my contact said, that's how strong they are!~
==RSlaver1~Still, our red wizards should be able to disable them long enough for the capture.~
==RSlaver2~Let us hope for that, otherwise this will end unpretty bloody.~ DO~EndCutSceneMode()EscapeArea()ActionOverride("RSlaver1",EscapeArea())~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",9)~THEN CVGir25J Cave1
~We came just in time, <CHARNAME>, there they are.~
DO~SetGlobal("RTGiranQuest","GLOBAL",10)~
==RSlaver1~Intruders?~
==RSlaver2~Outlanders? What do they want here?~
==RSlaver1~Hey, you, peons! Better leave here quick. This is borderland, military restricted zone.~
==RSlaver2~Yes, get back while you still can - how did they pass the guards anyway?~
==CVGir25J~We will not back down from you, scum. I know why YOU are in this zone. Your game is up - it's for you to retreat.~
==RSlaver1~Damn, who are you to interfer in Thayan operations. Your life and freedom are at stake if you don't move out of here immediately.~
==CVGir25J~It's the life and freedom of your supposed victims that made us come here. You will not capture those Clan Orcs you hunt.~
==RSlaver2~What now, Lorcos?~
==RSlaver1~The captain and his men will take care of them while the operation continues as planned.~DO~ClearAllActions() StartCutSceneMode() Wait(2) CreateCreatureObjectDoor("RTKnihos",Player1,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player3,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player5,0,0,0) Wait(2) CreateCreatureObjectDoor("RTKnihol",Player2,0,0,0) CreateCreatureObjectDoor("RTKnihos",Player4,0,0,0) Wait(2) ActionOverride("RSlaver1",EscapeArea())ActionOverride("RSlaver2",EscapeArea()) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",11)~THEN CVGir25J AtCave
~This must be the passage to my people's enclave, <CHARNAME>.~
DO~SetGlobal("RTGiranQuest","GLOBAL",12)~
==CVSan25J~We have little time to loose if we still want to overtake them.~
==CVIzy25J IF~InParty("CVIzzy")~THEN~(Sigh) Another dark hole into which the fearless heroine follows her orc prince.~
==CVGir25J IF~InParty("CVIzzy")~THEN~ Are you scared, Izzy?~
==CVIzy25J IF~InParty("CVIzzy")~THEN~Do you think I'm a coward or what, if you can go there, I can do it a hundred times, heh!~
==CVGir25J IF~InParty("CVIzzy")~THEN~Well, I am scared, my dear, still we must do it.~
==CVIzy25J IF~InParty("CVIzzy")~THEN~(Grins) Come, take my hand, Giri darling, my spells will protect you.~
==CVGir25J ~Together we will succeed.~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",12)~THEN RTHartl Stop
~ You have come to wrong place. Turn and go. This is Clan Orc Land.~
DO~SetGlobal("RTGiranQuest","GLOBAL",13)~
END
++~This is why we came, you are in great danger. We are friends.~+ Stop2
++~*You see that Giran was about to respond and you give him a nod of approval. These are his Clan companions and the young ranger has proven his calm and fearless ways more than once.*~EXTERN CVGir25J Stop3

CHAIN
IF~~THEN RTHartl Stop2
~Why I should believe? But wait...~
END
++~*The orc guard points his finger at Giran.*~EXTERN CVGir25J Stop3

CHAIN
IF~~THEN  CVGir25J Stop3
~You have come a very long way from Clan Orc Land, Hartleff. If you want to call this valley your new home then there are still obstacles ahead.~
==RTHartl~It's really you - Giran. We far from home and you still find us?~
==CVGir25J~I am not here because of you, the Queen has not sent after you to persue you. I have come to warn you of another danger.~
==RTHartl~We have come through all land and all danger without help. Nildjek is strong leader, not half-orc bastard with human findling son.~
==CVGir25J~Let me talk to Nildjek. He will understand. I have not come to change the past but to give you a chance for the future.~
==RTHartl~Bastard prince was always a talker - human sly tongue. Want to see Nildjek? Talk orcish to Hartleff, see who will cross bridge.~DO ~
CreateItem("SHARTHP1",0,0,0) FillSlot(SLOT_AMULET) ActionOverride("CVGiran",Attack("RTHartl")) ~ EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",14)~THEN RTHartl Stop5
~ You not coward, Giran. You prove to speak truth by will to pay with blood. Nildjek may want to hear your words.~
DO~SetGlobal("RTGiranQuest","GLOBAL",15)~
==CVGir25J~Keep your watch, Hartleff. The next visitors to come will not talk but attack. Make sure you and your men are ready, there is little time left.~
==RTHartl~Nildjek is near big house north. Know many orc arrows follow your every move. Make not mistake bastard prince.~DO~ClearAllActions() EndCutSceneMode() MoveToPoint([2543.1699])~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",15)~THEN RTNild Stop5
~ Giran. Your mother sends you a long way to chase some disobedient clan members.~
DO~SetGlobal("RTGiranQuest","GLOBAL",16)~
==CVGir25J~I come not by the Queen's command. The Clans do not persue you. You made your choice to live by your own rule and law and not follow Shauhana. This is sad but your free will and your right.~
==RTNild~You have not come across all those lands we crossed and battled to tell us that. Why are you here?~
==CVGir25J~Do you know you are on the border to Thay? Do you know that land?~
==RTNild~This is good land - this is free land. People here left, we did not force them.~
==CVGir25J~You speak the truth and so do I. Listen, it is very important as you are in great danger.~
=~This valley and village are empty. They were Rashemen, now they are slaves in Thay.~
==RTNild~Then they were weak and deserve their fate. We have come all this way victoriously.~
==CVGir25J~Yes, you did, and those who await you know it. It makes you so valuable for them. They want those strong brave Clan Orc Fighters - to fight for them, to fight their bloody battles or to fight for their amusement - you will have no choice you will be their slaves, like all other people they capture.~
==RTNild~They captured you? No.~
==CVGir25J~We have avoided it by skill and strategy. The Thayan slavers know you are here - they only want the men, mind that.~
==CVSan25J~I have seen what they once did to a mighty tribe of which they only had use for the women - not a single man survived. They know no law and have no scruples, their magic is the most powerful you can imagine.~
==RTNild~We are not too many fighters, these houses are filled with children and women...we are too slow to move away now. We can only stand and fight.~
==CVGir25J~You will not fight alone.~
==RTNild~We are not your people, Giran, this is not your fight. I thank you for the warning, it was more than I would ever have expected from you...~
==RTHartl~ALERT!! Red soldiers...there...and there. TO ARMS!! ~EXIT

CHAIN
IF~Global("RTGiranQuest","GLOBAL",17)~THEN RTNild Final
~ Giran. The Clan Orcs have won.~
DO~SetGlobal("RTGiranQuest","GLOBAL",18)~
==CVGir25J~Yes, we have. What do we gain out of this victory?~
==RTNild~I may have been wrong about you and your *mother*. Gathlenk's version by which I was raised may not have been the only truth.~
==CVGir25J~It matters not anymore, Nildjek, what matters is the future of the Clan Orcs over here in Rashemen.~
==RTNild~The ones you and me - and your brave friends - have rescued today. ~
==CVGir25J~You will always be welcome back in the Stormhorns, you know that. But it will be a very long hard road back. You found good land, a good place. It will be safe from now on.~
==RTNild~Will they not try it again? On behalf of the women and children I wish you were right. It will be very hard to bring all of them back west - some may not see the end of the journey.~
==CVGir25J~I told you our reason to be here was not your persuit. The quest we follow will bring changes to Thay in its wake. Those who try to oppress you may shortly loose their power over this land.~
==RTNild~Do you advise me to stay here?~
==CVGir25J~The choice is yours and your people's. I give you the facts for decision.~
=~<CHARNAME>'s and Sandrah's fight, our fight, is against those who currently rule over Thay. We have found allies in this land who will take over once we defeated the leaders. Send some messengers to the outskirts of Bezantur in the south of here. Make contact with the Red Hoods, the opposition of Thay. You will find that you will be welcome as free citizens in a new land.~
==RTNild~It is worth a try...and,...Giran...it is good to know we will still have a homeland we might return to if this option fails.~
==CVGir25J~You have come a long way and I have seen in our battle today why you have succeeded so far - it's sure you will establish a home for your people soon.~
=~Let us go, <CHARNAME>. Your task awaits us. The Clans thank you.~
==RTNild~The Clans thank you.~DO~AddXPObject("CVGiran",28500)~EXIT


APPEND Shaorc7
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~ THEN BEGIN bers1a
SAY~ I left the Stormhorn for reason. Too much human is queen and her family.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~ THEN BEGIN bers2a
SAY~ This good place to stay, almost replace Hai 'Ulthak.~
IF~~THEN EXIT
END
END

APPEND Shaorc8
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~ THEN BEGIN bers1d
SAY~ I left the Stormhorn for reason. Too much human is queen and her family.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~ THEN BEGIN bers2d
SAY~ This good place to stay, almost replace Hai 'Ulthak.~
IF~~THEN EXIT
END
END

APPEND Shaorc4
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~ THEN BEGIN bers1b
SAY~ Long treck from Stormhorns to find new place. Clan Orcs will not give up new home.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~ THEN BEGIN bers2b
SAY~ This good place to stay, still miss Hai 'Ulthak maybe.~
IF~~THEN EXIT
END
END

APPEND Shaorc6
IF WEIGHT #-2~AreaCheck("RTF074") ~ THEN BEGIN bers1c
SAY~ Good land for moose but may get weak after time. Not so rough like old Stormhorns.~
IF~~THEN EXIT
END
END

APPEND Shaorc10
IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,1)~ THEN BEGIN bers1e
SAY~ Long treck from Stormhorns to find new place. Clan Orcs will not give up new home.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF074") RandomNum(2,2) ~ THEN BEGIN bers2e
SAY~ This good place to stay, still miss Hai 'Ulthak maybe.~
IF~~THEN EXIT
END
END