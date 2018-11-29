BEGIN RTBalow

IF~AreaCheck("RTF077")Global("SanRTFPlot5","GLOBAL",4)~THEN BEGIN SeenTam
SAY~Only one came from upstairs who was a red robed foe, he had a stump like I once had.~
IF~~THEN REPLY~That must have been Szass Tam, we are on his trail.~EXIT
IF~~THEN REPLY~It is a habit in Sandrah's family to leave their foe in that way.~EXIT
END

IF~AreaCheck("RTF077")GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN BEGIN CityExit1
SAY~Outside is the city of the red robed mortals. I hate them but they will destroy me with their magic even if I kill many of them first.~
IF~~THEN REPLY~Why don't you stay here and keep them from entering your lair.~GOTO CityExit2
IF~~THEN REPLY~They cannot enter here with whole armies, you can always defend yourself against the small groups that may want to enter.~GOTO CityExit2
END

IF~~THEN BEGIN CityExit2
SAY~Your home is on the other side of the passage. Yes, no, it matters not. They will not pass me to get there. They bring nothing good to anywhere.~
IF~~THEN REPLY~We will see you again, I'm almost sure. Farewell.~EXIT
END

IF~Global("RTBalow","GLOBAL",2) !GlobalTimerExpired("RTWait","RTF048")~THEN BEGIN 48Wait
SAY~I'm still thinking, do not disturb, come later.~
IF~~THEN EXIT
END

IF~Global("RTBalow","GLOBAL",2) GlobalTimerExpired("RTWait","RTF048")~THEN BEGIN 48Test1
SAY~I have made a decision to test you. Cooperate and you might gain my trust.~
IF~~THEN REPLY~But we don't trust you, beast. We can use your body and follow Sandrah's plan without your consent.~GOTO 48fight
IF~PartyHasItem("Compon04")~THEN REPLY~We have found your lost claw meanwhile, we can propose a deal with it.~GOTO Test1
IF~~THEN REPLY~My counsellor has advised me to listen to you, beast, so speak.~GOTO Test1b
END

IF~~THEN BEGIN 48fight
SAY~I am disappointed. I was expecting more from the heiress of my former foe. Anyway - better than the stagnation that has lasted so long.~
IF~~THEN DO~SetGlobal("RTBalow","GLOBAL",22) Enemy()~EXIT
END

IF~~THEN BEGIN Test1
SAY~Ah, that gives you one extra point! We will come to that after the tests I planned.~
IF~~THEN DO~IncrementGlobal("Balpoints","RTF048",1)~GOTO Test1b
END

IF~~THEN BEGIN Test1b
SAY~You love riddles like I do? Yes, no? It doesn't matter, you must solve these.~
=~For some I go fast
for others I'm slow. 
To most people, I'm an obsession 
relying on me is a well practised lesson.~
IF~~THEN REPLY~A snail.~GOTO 1wrong
IF~~THEN REPLY~Time.~GOTO 1right
IF~~THEN REPLY~A man with a crutch.~GOTO 1wrong
IF~~THEN REPLY~Life.~GOTO 1wrong
END

IF~~THEN BEGIN  1wrong
SAY~Aaarg, you know better but want to test ME I think, well let's see what else we got.~
IF~~THEN GOTO Test2
END

IF~~THEN BEGIN  1right
SAY~What else, it was obvious. Let's continue.~
IF~~THEN DO~IncrementGlobal("Balpoints","RTF048",1)~GOTO Test2
END

IF~~THEN BEGIN Test2
SAY~A blue house is made of blue bricks. A yellow house is made of yellow bricks. A red house is made of red bricks. An orange house is made of orange bricks. What would a green house be made of? ~
IF~~THEN REPLY~Green bricks.~GOTO 2wrong
IF~~THEN REPLY~Branches. ~GOTO 2wrong
IF~~THEN REPLY~Glass.~DO~IncrementGlobal("Balpoints","RTF048",1)~GOTO 2right
END

IF~~THEN BEGIN 2wrong
SAY~You do answer wrong on purpose or out of stupidity. Matters little, we will continue.~
IF~~THEN GOTO Test3
END

IF~~THEN BEGIN 2right
SAY~Of course. Here's another one.~
IF~~THEN GOTO Test3
END

IF~~THEN BEGIN Test3
SAY~They have not flesh, nor feathers, nor scales, nor bone. Yet they have fingers and thumbs of their own. What are they? ~
IF~~THEN REPLY~Gloves.~DO~IncrementGlobal("Balpoints","RTF048",1)~GOTO 3right
IF~~THEN REPLY~Zombies.~GOTO 3wrong
IF~~THEN REPLY~Clones.~GOTO 3wrong
IF~~THEN REPLY~Fish.~GOTO 3wrong
END

IF~~THEN BEGIN 3wrong
SAY~Wrong.~
IF~~THEN GOTO Test4
END

IF~~THEN BEGIN 3right
SAY~Right.~
IF~~THEN GOTO Test4
END

IF~~THEN BEGIN Test4
SAY~Let us think about the results.~
IF~GlobalLT("Balpoints","RTF048",3)~GOTO Test4a
IF~GlobalGT("Balpoints","RTF048",2)~GOTO Test4b
END

IF ~~THEN BEGIN Test4a
SAY~Your counsellor seems to be the clever one here and just drags you along like an old rag. I trust her and you are no hazard. The test is passed.~
IF~PartyHasItem("Compon04")~THEN GOTO Claw1
IF~!PartyHasItem("Compon04")~THEN GOTO Claw12
END

IF~~THEN BEGIN Test4b
SAY~You are clever and you do not try to hide it. I trust your counsellor and she trusts you, I have no reason to mistrust all of you. The test is passed.~
IF~PartyHasItem("Compon04")~THEN GOTO Claw1
IF~!PartyHasItem("Compon04")~THEN GOTO Claw12
END

IF~~THEN BEGIN Claw12
SAY~Are you ready to cross the lava stepping over my back? You will drag me to land once you all have passed.~
IF~~THEN REPLY~Yes, let us do it.~DO ~SetGlobal("RTBalow","GLOBAL",4)~EXIT
IF~~THEN REPLY~We need another moment of preparation, we'll be back soon.~DO ~SetGlobal("RTBalow","GLOBAL",3)~EXIT
END

IF~Global("RTBalow","GLOBAL",3)~THEN BEGIN Travel
SAY~You returned.~
IF~~THEN GOTO Claw12
END

CHAIN
IF~~THEN RTBalow Claw1
~You have really found my long lost claw?~
==CVSan25J~A bit more, good balor. I am proud to say that I am among the best healers of my race.~
==RTBalow~Your race and mine are quite different, still, it seems you see more than I can at this moment.~
==CVSan25J~I have travelled a lot at <CHARNAME>'s side and met many different creatures. I have studied their physiques from a healer's view and I think your claw can be restored to your body. ~
==RTBalow~Really? And you would be willing to use your art on me?~
==CVSan25J~We are allies by now, I think. We have a common goal and maybe you will come even with us to the exit of this passage.~
==RTBalow~I know what waits outside - but I may be your guardian to prevent that the red robes ever use this installation again.~
==CVSan25J~Hold still then.~DO~ActionOverride("CVSandr",ReallyForceSpell("RTBalow",CLERIC_HEAL))~
==RTBalow~AAAH, how that feels...~
=~Are you ready to cross the lava stepping over my back? You will drag me to land once you all have passed.~
END
IF~~THEN REPLY~Yes, let us do it.~DO ~SetGlobal("RTBalow","GLOBAL",4)~EXIT
IF~~THEN REPLY~We need another moment of preparation, we'll be back soon.~DO ~SetGlobal("RTBalow","GLOBAL",3)~EXIT


CHAIN
IF~Global("RTBalow","GLOBAL",1)~THEN RTBalow Smell1
~AAARGH!! I CAN SMELL THE BLOOD!!~
=~It's the blood of the one who trapped me here. I tasted it from the hand which held the hammer.~
DO~SetGlobal("RTBalow","GLOBAL",2) SetGlobalTimer("RTWait","RTF048",TWO_HOURS)~
==CVSan25J~That was a VERY long time ago, Balor.~
==RTBalow~Too long even for my liking. Why do you smell like her? Your kin does not exist for so long.~
==CVSan25J~She sealed the passage you are stuck in, loosing her hand in that process.~
==RTBalow~I know - it was me who bit it off just like she cut off my claw. (He holds up the stump where one of his claws is missing.) As the portal closed I spit her hand out at her and she threw the claw to my side...I never could find it, those lizards must have stolen it.~
==CVSan25J~Why did you not return to where you came from?~
==RTBalow~Look behind me, there is no way any more, the lava has risen meanwhile.~
==CVSan25J~But...a creature like you is immune to that heat.~
==RTBalow~Right, but it is too deep to step inside, I will sink down in it and drown. And the jump is too far.~
==CVSan25J~With some assistance from the other side you could make the step, I guess.~
==RTBalow~All that are on the other side are those stinking lizards, only good for food. There is no point in negotiating with those brutes for assistance.~
==CVSan25J~We are a different breed - and we have a common interest. It looks like we both can only get across if we cooperate.~
==RTBalow~Even if you smell like my old foe you seem to be quite practical, mortal maiden, and quite clever. How would you achieve that?~
==CVSan25J~As your body is immune to the heat we will use it like a bridge to cross the lava. If you let yourself fall forward over the lava river you will just touch each side with your feet and claws. Once we are on the other side we can commonly pull you to save ground again.~
==RTBalow~Practical, like I said. It will work. Clever - clever enough to decide you will not need me once you have crossed. I will give my part first and maybe you do yours or maybe you don't.~
==CVSan25J~I am no creature like you. I keep my word.~
==RTBalow~There are as many of your kin that are honest as there are liars. Like those who once send me down here.~
==CVSan25J~The red robes are my enemies just as they are yours.~
==RTBalow~One point in your favour - but not enough. I must test you before I trust you. I must think about it now. Leave me be for a time, come later. We have sooo much time.~EXIT

CHAIN
IF~Global("BalBridge","RTF048",5)~THEN RTBalow Trust
~A strange experience this *Trust*~
DO~SetGlobal("BalBridge","RTF048",6)~
==CVSan25J~Yet it has served both sides well. We are where we wanted to be.~
==RTBalow~How long I have yearned for it. Still my reign may be a bit larger now but it is still limited. I will not go up to the city and I cannot go back to where I once came from.~
==CVSan25J~You may come with us through these tunnels if you want.~
==RTBalow~Aah? No, I will investigate what is down here first. Maybe I will meet you again, maybe not.~
==CVSan25J~Good luck then.~
==RTBalow~Strange words, mortal girl.~DO~EscapeArea()~EXIT