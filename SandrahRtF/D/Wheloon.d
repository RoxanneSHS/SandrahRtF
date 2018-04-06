BEGIN RTYouSha
BEGIN RTMoninj
BEGIN RTSharm

IF~See([PC]) GlobalGT("SanRTFPlot4","GLOBAL",4)~THEN BEGIN Intru
SAY~Enemies!!~
IF~~THEN DO~Enemy()~ EXIT
END

IF~AreaCheck("RTF141") RandomNum(2,1)~THEN BEGIN Warn1
SAY~You OPENLY wear the goddess symbols, hm, hm...~
IF~~THEN EXIT
END

IF~AreaCheck("RTF141") RandomNum(2,2)~THEN BEGIN Warn1
SAY~Don't walk around here carelessly, *friends*, traps are everywhere to train the acolyte's alertness.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF136") RandomNum(3,1)~THEN BEGIN Shamo1
SAY~Blessed be the Weave, <PRO_BROTHERSISTER>.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF136") RandomNum(3,2)~THEN BEGIN Shamo2
SAY~Our goddess is the dark moon in the night of despair.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF136") RandomNum(3,3)~THEN BEGIN Shamo3
SAY~You should not be here, leave us now.~
IF~~THEN EXIT
END

BEGIN RT141DC
IF~Global("Access","rtf141",1)~THEN BEGIN DownShar1
SAY~*As you inspect the alcove you notice a keyboard-like installation of knobs differentiated by different symbols carved into their top.*~
IF~~THEN REPLY~Press down the symbols in the order of the word *Shar*~GOTO DownShar2
IF~~THEN REPLY~Press down the symbols in the order of the word *Mystra*~GOTO DownShar2
IF~PartyHasItem("RTSharSy")~THEN REPLY~Press down the symbols in the order you found on the Shar symbol of the dead priest.~DO~SetGlobal("Access","rtf141",2)~GOTO DownShar3
IF~~THEN REPLY~Leave the alcove and the strange mechanism alone.~EXIT
END

IF~~THEN BEGIN DownShar2
SAY~*The symbols you have touched turn to a fiery red under your fingertips and you scream out in pain.*~
IF~DifficultyLT(HARD)~THEN DO~ApplyDamagePercent(Player1,70,MAGICFIRE)
ApplySpell(Player1,CLERIC_HOLD_PERSON)~EXIT
IF~DifficultyGT(NORMAL)~THEN DO~ApplyDamagePercent(Player1,49,MAGICFIRE)
ApplySpell(Player1,CLERIC_HOLD_PERSON)~EXIT
END

IF~~THEN BEGIN DownShar3
SAY~*The symbols you have touched turn to ash under your fingertips and an entrance to a staircase becomes accessible.*~
IF~~THEN DO~AddexperienceParty(8700)~EXIT
END


CHAIN
IF~AreaCheck("RTF130")~THEN RTYouSha Outs1
~Please, foreigners, I see there is a healer among you.~
==CVSan25J~Tell me what the problem is, you do not seem to be hurt or sick yourself.~
==RTYouSha~Oh, no...you...you are one of them...~
==CVSan25J~I am a priestess and healer in Mystra's name, is this a problem for you?~
==RTYouSha~I must...I have no choice, I must trust you...you are not of this temple after all.~
=~My friend inside has been hurt badly when she tried to escape Mystra's temple...~
==CVSan25J~Let us see and help her immediately. We can talk about the problem you had with the temple later on.~
==RTYouSha~(Sigh) I have a strange feeling with it still - but there is no choice unless I'll let her die. Come.~DO~EscapeArea()~EXIT

CHAIN
IF~AreaCheck("RTF139") Global("Shaheal","RTF139",0)~THEN RTYouSha Ins1
~My name is Shaalee and this is Lerabi. We come from a small village north of here, where some monks of Mystra's temple found her and her talent for the magic arts last year.~
DO~SetGlobal("Shaheal","RTF139",1)~
==RTMoninj~Aaah.~
==CVSan25J~Let us take care of Lerabi first before we hear your story. ~
==RTMoninj~Aaah.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("RTShaHe")~EXIT

CHAIN
IF~Global("Shaheal","RTF139",2)~THEN RTYouSha Ins2
~You are healed, oh, Lerabi, all will get well.~
DO~SetGlobal("Shaheal","RTF139",3)~
==RTMoninj~I am - but what did you do, fool!! You brought them here - all is in vain.~
==RTYouSha~But she is not from THAT temple and she came to heal you without questioning...~
==RTMoninj~Of course she did, she will hand me over to them, they are all the same...~
==CVSan25J~Calm down, Lerabi. My name is Sandrah and I come from Waterdeep. This is <CHARNAME>...~
==RTMoninj~Just like <CHARNAME> who is Mystra's companion? Or so I thought - until I found that love and hope is not to be expected from the Keeper of the Weave.~
==CVSan25J~You must have your reasons to believe such. In Mystra's name, we will find out what is going on in that temple that makes you so desperate.~
==RTYouSha~Lerabi, they have nothing to do with your capturers, so much is obvious. Whoever those people at the temple are, these here act and talk like I would expect from Mystra's true followers.~
==RTMoninj~*Lerabi bites her lower lip and looks into Sandrah's eyes, then into yours.*~
END
++~You return her questioning look and nod reassuringly.~EXTERN RTMoninj Ins3
++~We have already some reason to investigate that temple of Mystra, your story seems to confirm that something is wrong here.~ EXTERN RTMoninj Ins3
++~I swear to you, Lerabi, there is nobody more interested in finding out the truth about that temple than My..my companion Sandrah.~ EXTERN RTMoninj Ins3

CHAIN
IF~~THEN RTMoninj Ins3
~I discovered my natural understanding of the magical very early and when the monks of Mystra detected me and invited me for the education at the temple I was happy to follow and my parents were happy to let me go as we all thought highly of the Goddess and what she and <CHARNAME> had achieved recently.~
=~I found many with similar talents than mine when I came to the temple and we all made much progress in learning to handle our gifts. What was a bit disappointing was that all the spells we learned were somehow related with aggression and destruction.~
==CVSan25J~Sadly enough such skills are still necessary throughout Faerun these days.~
==RTMoninj~Yes, to defend yourself against enemies of the people and the goddess - you have healed me within a moment from my injuries - none at the temple teaches such skills. They talk of despair and darkness in such a case as if it was something to embrace voluntarily.~
=~As a child I thought of the Weave as something shimmering, light and positive, not as a Dark Moon that grows strength out of nothingness.~
==CVSan25J~This is the teaching of the temple?..The credo of the Nightsinger, the prayers of the Nightcloaks!~
==RTMoninj~These are the names I overheard from one of our teachers, even if I know now that I was not supposed to hear them.~
==CVSan25J~I can imagine that. Those are not words of those who follow the True Weave, those who act and teach in Mystra's name. The Weave these priests and monks serve is the Shadow Weave and its dark keeper, the Lady of Loss.~
END
++~The temple of Mystra is a facade to recruit for Shar!~ EXTERN CVSan25J Ins4
++~Shar's priests and the Order of the Dark Moon have conquered Mystra's temple.~ EXTERN CVSan25J Ins4

CHAIN
IF~~THEN CVSan25J Ins4
~Lerabi, we will end Shar's misuse of Mystra's name, we will clean that temple.~
=~If you want to see Mystra's true face and want to follow the way you had once planned, I recommend you to go to my temple at Waterdeep. Please, take your time there and see what the Lady of Mysteries is really like. Tell the priests that Sandrah of Waterdeep has sent you and you will be welcome.~
==RTYouSha~I will come with you this time, Lerabi. Let us go together.~DO~EscapeArea()~
==RTMoninj~Be very careful, Sandrah. The monks and priests at the temple are powerful. Many of those who studied with me have willingly assimilated the lectures of the Dark Goddess.~DO~EscapeArea()~EXIT

BEGIN RTWelo

IF~RandomNum(5,1)~THEN BEGIN Welo1
SAY~I heard Mornbryn's Shield has been sacked by Thay recently.~
IF~~THEN EXIT
END

IF~ RandomNum(5,2)~THEN BEGIN Welo2
SAY~I wonder what those Mystra devotees are really up to, mysterious.~
IF~~THEN EXIT
END

IF~RandomNum(5,3)~THEN BEGIN Welo3
SAY~It hasn't rained since four moons now, I tell you, those at the temple fumble around with our weather.~
IF~~THEN EXIT
END

IF~RandomNum(5,4)~THEN BEGIN Welo4
SAY~Halthrop's eldest went with those monks, they haven't seen her since then.~
IF~~THEN EXIT
END

IF~RandomNum(5,5)~THEN BEGIN Welo5
SAY~They wouldn't sell me a single potion over at that temple - what are they good for at all.~
IF~~THEN EXIT
END

BEGIN RTWelo2
IF~GlobalLT("SanRTFPlot4","GLOBAL",5)~THEN BEGIN Inn1
SAY~Ah, new faces, bet you're on your way to the temple of Mystra.~
IF~~THEN REPLY~We hear a lot of strange things about the temple...~GOTO Inn2
IF~~THEN REPLY~None of your business, man, show us your services.~GOTO Inn3
IF~~THEN REPLY~None of your business, goodbye.~EXIT
END

IF~~THEN BEGIN Inn2
SAY~I thought Mystra was a neutral and even helpful goddess but those guys at the temple are really keeping everything very secret.~
IF~~THEN REPLY~Mystra is the Mistress of Mysteries, (wink at Sandrah), you never know with that lady...~GOTO Inn4
IF~~THEN REPLY~We heard the temple is not very open to common townsfolk.~GOTO Inn4
END

IF~~THEN BEGIN Inn3
SAY~Supplies are few with the recent crisis in Mornbryn's Shield and the temple not offering anything to us common folks.~
IF~~THEN DO~StartStore("shop03",LastTalkedToBy(Myself))~EXIT
END

IF~~THEN BEGIN Inn4
SAY~Those shady robed monks are always on the lookout for gifted youngsters and somehow they lure them to the temple to train their magical gifts. No one has ever heard of them returning from there.~
IF~~THEN REPLY~Probably an issue for skilled adventurers like us to take a look at.~EXIT
IF~~THEN REPLY~The usual rumour about things folks don't understand.~EXIT
IF~~THEN REPLY~The usual rumours, I guess. I'd rather take a look at your real wares.~GOTO Inn3
END

BEGIN RTDamopr
IF~See([PC]) GlobalGT("SanRTFPlot4","GLOBAL",4)~THEN BEGIN Intru
SAY~Enemy intruders!!~
IF~~THEN DO~Enemy()~ EXIT
END


IF~AreaCheck("RTF141") RandomNum(3,1)~THEN BEGIN Warn3
SAY~You OPENLY wear the goddess symbols, hm, hm...~
IF~~THEN EXIT
END

IF~AreaCheck("RTF141") RandomNum(3,2)~THEN BEGIN Warn4
SAY~Don't walk around here carelessly, *friends*, traps are everywhere to train the acolyte's alertness.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF141") RandomNum(3,3)~THEN BEGIN Warn5
SAY~You should not be here.~
IF~~THEN EXIT
END