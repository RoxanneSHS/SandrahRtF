BEGIN RTInno

IF~ NumTimesTalkedTo(0)AreaCheck("RTF145")~THEN BEGIN Restore1
SAY~Heroes! Look around, Mornbryn's shield is home again. Many new people have come and help us build the town up again.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~The priest was right to stay and keep up hope.~ GOTO Restore2
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~The priest was right to stay and keep up hope.~GOTO Restore3
END

IF~~THEN BEGIN Restore2
SAY~The church is currently renovated to serve the new God of Love and Hope from now on.~
IF~~THEN REPLY~Maybe they invite me for the opening.~EXIT
END

IF~~THEN BEGIN Restore3
SAY~The church is currently renovated to serve the new Goddess of Love and Hope from now on.~
IF~~THEN REPLY~Maybe they invite me for the opening.~EXIT
END

IF~ NumTimesTalkedTo(0)AreaCheck("RTF010")~THEN BEGIN Wraith1
SAY~Heroes! Finally help has arrived!~
IF~~THEN REPLY~What are you doing alone here in the middle of this graveyard that became of the town?~ GOTO Wraith2
IF~~THEN REPLY~Who are you? Surely not the little boy you pretend to be!~GOTO Wraith2
END

IF~~THEN BEGIN Wraith2
SAY~The nasties have overrun us and killed everyone, even the old holy church.~
IF~~THEN REPLY~What have they done to you? How come you are alive?~GOTO Wraith3
END

IF~~THEN BEGIN Wraith3
SAY~ I hid in that well over there for two whole days...I heard no sound for a while so I guessed it was save to come out now.~
IF~~THEN REPLY~That well? It is protected by a heavy grate - you could never have lifted it alone...who are you really?~ GOTO Wraith4
IF~~THEN REPLY~This trap is too obvious for us, *BOY*, or whoever you are...~GOTO Wraith4
END

IF~~THEN BEGIN Wraith4
SAY~Ha, it does not matter any more, you are already too near to think of escaping!!~
IF~~THEN DO~ ClearAllActions() StartCutSceneMode() StartCutScene("CRTF010")~EXIT
END

IF~ NumTimesTalkedTo(0)AreaCheck("RTF016")~THEN BEGIN Real1
SAY~Have you overcome the face stealer...sure you must or you would be dead like everyone else!~
IF~~THEN REPLY~Another trap? I will not wait for your legions to aid you. Die, undead creature!~DO~ActionOverride(Player1,Attack("RTInno2")~EXIT
IF~~THEN REPLY~How did you escape them, boy?~GOTO Real2
END

IF~~THEN BEGIN Real2
SAY~I have the amulet from the monk in the temple, the one which had belonged to the old heroine. It kept the nasties off - but I have no more to eat since this morning.~
IF~Global("RTMetMonk","GLOBAL",2)~THEN REPLY~We have met Lir already and he told us to search for you. The way is save to the temple, go to him now, we will follow.~DO~SetGlobal("RTMetMonk","GLOBAL",5)~GOTO Real3
IF~Global("RTMetMonk","GLOBAL",0)~THEN REPLY~ We must go to the temple for an artefact. Stay here, we will try to find that monk, he will be able to help you if he is still alive.~DO~SetGlobal("RTMetMonk","GLOBAL",1) ~GOTO Real4
END

IF~~THEN BEGIN Real3
SAY~I will run quickly, thank you, heroes!~
IF~~THEN DO~ EscapeAreaMove("RTF013",270,270,3)~EXIT
END

IF~~THEN BEGIN Real4
SAY~He is surely alive as he's blessed by his goddess. If I could only make it across the square to him.~
IF~~THEN REPLY~Don't risk that now. We will come for you when it's safe.~EXIT
END

IF~Global("RTMetMonk","GLOBAL",4)~THEN BEGIN GoToMonk
SAY~You are back, have you found Lir?~
IF~~THEN REPLY~ Yes, he is safe in his study in the temple. Go there now, the monsters are defeated.~DO~SetGlobal("RTMetMonk","GLOBAL",5)~GOTO Real3
END


BEGIN RTMonk
IF~NumTimesTalkedTo(0)~THEN BEGIN Monk1
SAY~ Have you come for the blessed grave of Cerameon? A dark time for travellers, a dark time for us all.~
IF~Global("RTMetMonk","GLOBAL",1) ~THEN REPLY~Yes, that is one thing - but we also found another survivor, a little boy in a house not far from here that is in need of help.~GOTO MonkHelpBoy1
IF~Global("RTMetMonk","GLOBAL",0) ~THEN REPLY ~Yes, we need an artefact from the tomb for an urgent task on behalf of the Realms. We must open again the sealed passage to Thay. ~DO~SetGlobal("RTMetMonk","GLOBAL",2)~GOTO MonkHelpBoy2
END

IF~~THEN BEGIN MonkHelpBoy1
SAY~Oh, blessed be our goddess, the amulet must have protected him. I beg you, send him over here quickly. If you help us I will gladly assist you with the quest that brought you here.~
IF~~THEN REPLY~We will be back soon.~DO~SetGlobal("RTMetMonk","GLOBAL",4)~EXIT
END

IF~~THEN BEGIN MonkHelpBoy2
SAY~ Before that can be done I must ask you for favour to prove your alignment in this matter. There must be another survivor, a little boy who wears a protective amulet from our heroine. He surely hides somewhere in town. Find him, I beg you, send him over here quickly. If you help us I will gladly assist you with the quest that brought you here.~
IF~~THEN REPLY~ I will do that.~EXIT
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Monk2
SAY~ I will stay no matter what. The believers will return as now hope has returned.~
IF~~THEN EXIT
END

CHAIN
IF WEIGHT #-2~ Global("RTMetMonk","GLOBAL",5)~THEN RTMonk Boyresc1
~You have returned the hope to these walls, whoever you are, just as our heroine has done ages ago.~
DO~ SetGlobal("RTMetMonk","GLOBAL",6)~
==CVSan25J~Know that she is one of my ancestors in the bloodline of my mother.~
==RTMonk~But then...she was a descendent of the goddess Mystra and...you must have that blood as well...~
==CVSan25J~And Mystra's enemies have once again gathered their forces, Lir. That is the reason why we need to get to Thay urgently. The access we seek is a secret one.~
==RTMonk~You want to use the passage again that your ancestress has sealed?~
==CVSan25J~She sealed it with her famous hammer. It is this hammer we seek as it is the key to unseal the passage again.~
==RTMonk~You will find it with her remains in the crypts. It was buried and locked with her for all times. But you have come as one of her blood to demand it one more time. So be it.~
=~You will find the key here in my desk. It was told in MY family from father to son that the day would come when one like you would come to ask for it again.~
EXIT

CHAIN
IF WEIGHT #-3~ AreaCheck("RTF145")~THEN RTMonk Church1
~You are here again and alive, so you must have succeeded on your mission.~
==CVSan25J~We have progressed but there is still work to do. It is good to see we have at least helped to save your town and church.~
==RTMonk~We rebuild the temple in the name of Love and Hope. Maybe you can be here as well at summer's solstice for the great opening celebration.~
==CVSAN25J~I think my companion would be more than happy to be here. And perhaps we can return Cerameon's hammer on that occasion.~DO~AddexperienceParty(6000)~EXIT

APPEND Slumm4

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,1)~THEN BEGIN Mornb1
SAY~They say that Mystra was involved in the rescue of our town. Certainly not the same Mystra that has the temple in Wheloon...~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,2)~THEN BEGIN Mornb2
SAY~I'm glad we followed the rumours about Mornbryn. This is really excellent farm land.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,3)~THEN BEGIN Mornb3
SAY~Our cows are fattening daily. It's the good grass up here, much better than the old Sword Coast.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,4)~THEN BEGIN Mornb4
SAY~The temple will open soon in <CHARNAME>'s name. They say <PRO_HESHE> appeared in an avatar to rescue the town.~
IF~~THEN EXIT
END
END

APPEND Towncr

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,1)~THEN BEGIN Mornbt1
SAY~They say that Mystra was involved in the rescue of our town. Certainly not the same Mystra that has the temple in Wheloon...~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,2)~THEN BEGIN Mornbt2
SAY~I'm glad we followed the rumours about Mornbryn. This is really excellent farm land.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,3)~THEN BEGIN Mornbt3
SAY~Our cows are fattening daily. It's the good grass up here, much better than the old Sword Coast.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,4)~THEN BEGIN Mornbt4
SAY~The temple will open soon in <CHARNAME>'s name. They say <PRO_HESHE> appeared in an avatar to rescue the town.~
IF~~THEN EXIT
END
END

APPEND  Tourist
IF WEIGHT #-2~AreaCheck("RTF145")~THEN BEGIN Mornbtu1
SAY~I came for Cerameon's famous tomb, but now they tell me I can't see it due to renovation work. Baah, Volo's guide is seldom up to date.~
IF~~THEN EXIT
END
END

APPEND MTOWBA
IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,1)~THEN BEGIN Mornbtw1
SAY~They say that Mystra was involved in the rescue of our town. Certainly not the same Mystra that has the temple in Wheloon...~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,2)~THEN BEGIN Mornbtw2
SAY~I'm glad we followed the rumours about Mornbryn. This is really excellent farm land.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145") RandomNum(4,3)~THEN BEGIN Mornbtw3
SAY~Our cows are fattening daily. It's the good grass up here, much better than the old Sword Coast.~
IF~~THEN EXIT
END

IF WEIGHT #-2~AreaCheck("RTF145")RandomNum(4,4)~THEN BEGIN Mornbtw4
SAY~The temple will open soon in <CHARNAME>'s name. They say <PRO_HESHE> appeared in an avatar to rescue the town.~
IF~~THEN EXIT
END
END
