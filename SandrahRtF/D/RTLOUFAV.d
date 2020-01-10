BEGIN RTImrae
BEGIN RTLolth
BEGIN RTLouUD
BEGIN RTLouFav

IF ~ Global("RTLouPlot","GLOBAL",2)~ THEN BEGIN 0
SAY ~Here are the petty surfacers who shelter the daughter of the traitress Sendai. I am Shyntlara, favourite of Lolth.~
=~She has chosen to reject Lolth - blinded by the ambition of her mother to rise equal to the Spider Queen. Surrender her to me and I may let the rest of you alive.~
IF ~~ THEN REPLY ~I think not, drow! Together we have defeated enemies much stronger than you. ~ GOTO 2
IF ~~ THEN REPLY ~L'Urieet and I stand as one, Shyntlara. If you want her you will have to get through me!~ GOTO 2
IF ~~ THEN REPLY ~You will not find Sendai' daughter easy prey. Even alone she is more than a match for you!~ GOTO 2
END

IF ~~ THEN BEGIN 2
SAY~Ah, but you will not fight me together, surfacer. ~
=~Lolth has granted me the power to separate you from your companions, L'Urieet. Her vengeance shall be highly personal. They will struggle helplessly to find you while you face me ... and all your worst nightmares ... alone!~
IF ~  IfValidForPartyDialogue("VICONIA") ~ THEN GOTO 3
IF ~  !IfValidForPartyDialogue("VICONIA")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
SAY ~Oh, and Viconia ... we haven't forgotten about you either. Your turn will come. ~
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
SAY~And now for the fun part ... your ravishment!~
IF ~~ THEN REPLY~ That will not occur, you will not get her!~ EXTERN CVLOU25J Abdu1
END

IF ~~ THEN BEGIN 6
  SAY  ~Fool! By your own deeds shall Mother Lolth judge you! With the Spider Queen's favour my power is vast.~
=~I look forward to overseeing your transformation into a Drider personally, L'Urieet. I think you'll like being trapped as a creature of pure, base, bestial instinct.~
= ~And if you flee ... she will feast on you now! Face me! Face your doom!~
IF ~~ THEN DO ~SetGlobal("RTLouPlot","GLOBAL",3)~ EXIT
END

CHAIN
IF~~THEN CVLOU25J Abdu1
~I never served your spider queen nor any other god.~
==RTLouFav~You're even worse, child of the renegade who wanted godhood alongside our holy Lolth.~
==BVICON25 IF~InParty("Viconia")~THEN~Shar will be my protector from you, waela.~
==RTLouFav~You will kneel and bleed before the rightful ruler of ALL drow!~
END
++~You have heard her, Shyntlara, she will never be one of you. Now leave us be.~ EXTERN RTLouFav 6

CHAIN
IF~ Global("RTLouPlot","GLOBAL",10) ~THEN RTLouFav Taker
~The time is now, L'Urieet! You will come to face Lolth.~
DO~SetGlobal("RTLouPlot","GLOBAL",11) ~
=~And you, surfacers, better forget you ever knew her.~
==CVLOU25J ~You and your goddess have no right to involve me into your play.~
==RTLouFav ~We have any right - you are drow and you exist only to serve Lolth.~
==CVSan25J~You will do nothing to her...~
==RTLouFav ~I will not give you the chance to intervene, she comes with me by Lolth own power dragging her to Ust Natha's altar. We will await the Spider Queen to judge her. You have no means to prevent it.~DO~ SetGlobal("Loureedjoined","GLOBAL",9) ClearAllActions() StartCutSceneMode() Wait(2) ActionOverride("Loureed",LeaveParty()) ActionOverride("Loureed",ReallyForceSpell(Myself,DRYAD_TELEPORT)) Wait(4) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTBackInUD","GLOBAL",3)~THEN RTImrae  InCage
~Surfacers openly walking our streets in full armour! You would not live another minute if I were not confined in this damned cage!~
DO~ SetGlobal("RTBackInUD","GLOBAL",4)~
==CVSan25J~Imrae? And why ARE you in that cage? It seems to me you have become the ruling matron of Ust Natha meanwhile, even you appear to be de-throned and captured by your betters at the moment.~
==RTImrae~(Hiss) I ruled until that damned prisoner appeared and the revenger of the Spider Queen, that hateful Shyntlara.~
==CVSan25J~Did you object her, did you really try to aid our companion - this is hard to believe?~
==RTImrae~Baah, wael! Lolth has an eternal memory when it comes to those who have opposed her. Like my own foolish brother Egeissag.~
==CVSan25J~Egeissag? The same Captain Egeissag we defeated in Sendai's service once?~
==RTImrae~Don't speak of that traitor's name, Sendai.~
=~And now that bastard daughter of hers appeared to remind Lolth of the guilt of our family.~
==CVSan25J~So your brother Egeissag was L'Urieet's father.~
==RTImrae~I hate to admit it, but as there is no escape for my city from Lolth's endless rage and you will oppose her to free your companion, we are in some way allies today.~
END
++~What information can you provide us with?~+  OutCage
++~How is the situation in Ust Natha?~+  OutCage
++~Where do they keep L'Urieet, is she still alive?~+  OutCage

CHAIN
IF~~THEN RTImrae  OutCage
~Let me out of here first and I will tell you what me and my trusted know.~
==CVSan25J~I will transport us all to the tavern right now. I cannot use more powerful magic just now or the Spider Queen will immediately know about our presence.~
DO~ SetGlobal("SanTravel","GLOBAL",410) ActionOverride("RTImrae",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ~ EXIT

CHAIN
IF~ Global("RTBackInUD","GLOBAL",5)~THEN RTImrae PriorLolth
~Ah, free again!~
DO~ SetGlobal("RTBackInUD","GLOBAL",6)~
==UDDrow10~Lolth will have us all suffer, our houses are doomed.~
==UDDrow06~The wraith of the Spider Queen will spare no one in Ust Natha.~
==RTImrae~Silence, fools? Will you whimper like surfacers or go down fighting like drow?~
==UDDrow07~We cannot fight Lolth!~
==RTImrae~What else can we do, she will forgive none of us?~
==CVSan25J~You can hang your head and wait for the axe to fall or you can stand up and fight against that unjust tyranny. You have already lost everything - except for your pride and your life.~
==UDDrow10~I will not be another victim on Lolth's altar. An outsider, a surfacer must come to tell us we are drow - DROW, not Lolth's fodder.~
==RTImrae~The Spider Queen has betrayed her most loyal disciples in her blind action of hatred. She will destroy us all for the deeds that none of us have committed unless we stop her.~
==UDDrow07~The Spider Queen be cursed.~
==CVSan25J~We should all keep our blood cool and our minds considering a strategy to get her out of town.~
==UDDrow06~She is in the main temple with just a few of her revengers and their victim.~
==UDDrow10~There must be a chance for all of us to overcome her in her mortal avatar.~
==CVSan25J~A less open approach may be more promising here.~
==RTImrae~What do you mean?~
==CVSan25J~A few captured surfacers to accompany L'Urieet's sacrifice for the glory of Lolth could be delivered to the temple as a symbol of Ust Natha's redemption attempt.~
==RTImrae~You have proven once before you are able and brave enough to betray even drow matrons and handmaidens. Now try your luck with the Spider Queen herself.~ DO~AddJournalEntry(@2086,QUEST)~ EXIT

CHAIN
IF~ Global("RTBackInUD","GLOBAL",6)~THEN RTLouFav PriorLolth
~Were you not advised to stay in your quarters, citizens of the doomed city! And who the hell let YOU out...~
DO~ SetGlobal("RTBackInUD","GLOBAL",7)~
==RTImrae~But we bring you these powerful surfacers to accompany the traitress' punishment. They will be a valuable sacrifice to Lolth.~DO~EscapeArea()~
==RTLouFav~Ah, how wonderful! Those waels were spared by my wraith but now they come to sacrifice themselves for their stupid surfacer notions of loyalty and friendship. Lolth will be happy to mix their blood with that of Sendai's daughter.~
=~Move inside, my little lambs, the goddess awaits you.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTBackInUD","GLOBAL",7)~THEN  RTLouUD  FaceLolth
~<CHARNAME>?! Mystra?!~
DO~ SetGlobal("RTBackInUD","GLOBAL",8)~
==RTLolth~(Hiss) Who dares...?~
==RTLouFav~How did you call these surfacers?~ DO~DestroyItem("ImoenHP1")~
==CVSan25J~Lolth, I propose to retreat urgently. Our friend L'Urieet is neither your strayed disciple nor your possession. You will not execute your revenge on an innocent.~
==RTLolth~She is drow and she is mine! You make not the rules of the Underdark...Mystra?~
==RTLouUD~Neither do you impose them! You have made more than one mistake this time, Spider Queen, following only blinded revenge.~
==CVSan25J~You have lost a city of once faithful followers already today...~
==RTLolth~They will be crushed beneath my heel!~
==RTLouUD~Not without opposition.~
==CVSan25J~You will be more than lucky if you make it out of this self constructed trap alive. Does your hatred really make you so blind as not to see whom you are facing?~
==RTLolth~A city full of doomed waels, the daughter of a traitor who wanted to be a goddess herself - baah. You wait in the pit for your turn!!~  DO~ActionOverride("RTLouUD",ReallyForceSpell(Myself,DRYAD_TELEPORT)) SetGlobal("DrowCityHostile","GLOBAL",1)~
=~And what more? A minor surfacer deity who stumbled into darkness to be eliminated.~DO~ActionOverride("RTLouFav",Enemy())~EXIT

CHAIN
IF WEIGHT #-5~Global("RTLouPlot","GLOBAL",16)~THEN Senbeh01 WayDown
~It's always fun and excitement when you come along, little ones.~
DO~SetGlobal("RTLouPlot","GLOBAL",17) ~
==CVSan25J~Our old friend again...last time we met you in Sendai's lair, right?~
==Senbeh01~You came just in time to relief me of one of those endless boring tasks my hive had contracted for me.~
=~How about gambling, solving little riddles, all this fun stuff you mortals like to do to make your short life even shorter. ~
==CVSan25J~You have just recalled yourself that you still owe us a little favour for helping you out last time.~
==Senbeh01~Do I?...Maybe...maybe not...you have something in mind, little lady?~
==CVSan25J~There is a cave of your kin near Ust Natha...~
==Senbeh01~OH NO!!! NEVER EVER!!~
=~That place is the greatest bore in the multiverse. Never will I go there, NEVER.~
==CVSan25J~Calm down, old friend, you need not to go there. We will endure it for you.~
==Senbeh01~You really would, how can I repay such kindness?~
==CVSan25J~Just kindly show us the way and we will be off.~
==Senbeh01~Nothing's easier than that. Just wooosh...~DO ~SetGlobal("SanTravel","GLOBAL",100)~ EXIT

CHAIN
IF~GlobalGT("RTBackInUD","GLOBAL",7)AreaCheck("RTF076")~THEN  RTLouUD  StayUD
~<CHARNAME>, Mystra, it has been achieved! ~
DO~ SetGlobal("RTBackInUD","GLOBAL",12)~
==RTImrae~It was good to set on the power of the outsiders this time, L'Urieet.~
==RTLouUD~The Spider Queen has lost much today. The spell plague has already weakened her - now WE, Ust Natha, the first City, has proven that drow can survive beyond Lolth's constant threat.~
==RTImrae~There will be attempts to gain back what was lost today. We have defeated her avatar but Lolth still exists, even if weakened.~
==RTLouUD~There will also be support from other drow who had suffered and doubted the cruel goddess. Many follow her out of sheer fear only. We have proven it can be overcome.~
==CVSan25J~You sound like one who has achieved much more than just survival today.~
==RTLouUD~You remember well our talks during our common travel?~
==CVSan25J~Your vision of a drow society without Lolth's shadow where your kin can prove their strength and value alone.~
==RTLouUD~Ust Natha will be the first city, once more. The First City of Free Drow.~
==RTImrae~You will stay here with us, you will help us build it, Sendai's daughter?~
==RTLouUD~Yes, I will , but I will never be called by this name again.~ DO~EscapeArea()~
==RTImrae~So be it, L'Urieet, a new house will be established in this city, its matron will be commander of the defence. Choose well the male and priestesses to found the new line, young one.~ DO~EscapeArea()~
==CVSan25J~The blessing of Mystra means little to you, I know, but the best wishes of your friends do.~
END
++~Farewell, L'Urieet, love and hope for you and the free drow.~DO~AddexperienceParty(60000) EraseJournalEntry(@2086) EraseJournalEntry(@2085)EraseJournalEntry(@2059)~EXIT
