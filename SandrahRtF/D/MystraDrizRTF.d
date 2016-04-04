CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("MeetRTFM","LOCALS",0) ~THEN SanMyst InitialRTF
~Welcome, <CHARNAME>, welcome granddaughter.~
DO~SetGlobal("MeetRTFM","LOCALS",1) SetName(@2054)~
==CVSan25J~Grandmother! Finally we have found a way to address each other as we always should have done.~
==SanMyst~Your deeds as Mystra ripple even into this remote corner of the Prime, my dear. You and the true Love and Hope really fulfill the expectations that have been set upon you.~
=~Maybe a bit more than some can accept...you are not here to visit a happy old couple, arent't you?~
==CVSan25J~(Sighs) As much as I would like to have this as a nice visit to a loving elder couple - you know it is not. We are on the prime as those who cannot accept all we have done start to react on it.~
==SanMyst~If they chose the Prime as their playground, they made a mistake. This is our plane, yours, mine, and <CHARNAME>'s. All gods who were so foolish in the past have been shattered by the true power of the mortals.~
==CVSan25J~We all agree on that - but maybe they had little choice as their allies are down here.~
==SanMyst~Their allies or maybe the ones who put the fuel to the fire, we will see.~
=~You are aware that both of us have lost our complete godly knowledge of all that was and all that Mystra has ever known while in our mortal form.~
==CVSan25J~Still I have all the lore I had in my lifetime plus the one I gained during my godhood.~
==SanMyst~The same is true for me, my child. We can always combine our wisdom to understand what is going on and why. This house is open to you and <CHANAME> whenever you need help.~
END
++~This is good to know, Mys...I mean, Midnight.~+ InitialRTF2

CHAIN
IF~Global("MeetRTFM","LOCALS",1) ~ THEN SanMyst InitialRTF2
~Is there something I can help you with this time, <CHARNAME>?~
END
++~We still need to find facts to analyse the situation. We will return to make use of your generous offer in time, Midnight.~EXIT
IF~ GlobalGT("SanRTFPlot1","GLOBAL",2)Global("TalosIn","LOCALS",0)~THEN REPLY ~We met Talos down here, he seems to be involved in the plot against us.~+ Talos1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",4)Global("TalosIn","LOCALS",0)~THEN REPLY ~We encountered your former mate Cyric who ambushed us with his snipers. It is not clear what role he plays in the plot against us.~+ Cyric1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",7) Global("VelshIn","LOCALS",0)~THEN REPLY ~We met a ghostly opponent - Sandrah referred to him as Lord of the Forsaken crypt.~+ Velsh1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",8) Global("VelshIn","LOCALS",0)~THEN REPLY ~ A lich king named Velsharoon seems to play an important role in the events.~ + Velsh1
IF~ Global("SanRTFPlot1","GLOBAL",8)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY ~ Sandrah thinks we should seek for a book by Cerameon in Candlekeep.~ + Candl1
IF~ Global("SanRTFPlot1","GLOBAL",9)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY ~ We have found this book by Cerameon in Candlekeep.~ + Candl1
IF~Global("SanRTFPlot3","GLOBAL",6) Global("RTThayRep","LOCALS",0)~THEN REPLY~We have returned from Thay, Midnight, we have quite some report to make and Sandrah likes to receive your advice on some matters.~ DO~SetGlobal("RTThayRep","LOCALS",1)~EXTERN CVSan25J ThayRepNoTalos1
IF~Global("SanRTFPlot3","GLOBAL",7) Global("RTThayRep","LOCALS",0)~THEN REPLY~ We have returned from Thay, Midnight, we have quite some report to make and Sandrah likes to receive your advice on some matters.~ DO~SetGlobal("RTThayRep","LOCALS",1)~EXTERN CVSan25J ThayRepNoTalos1
IF~Global("SanRTFPlot3","GLOBAL",7) Global("RTThayRep","LOCALS",1) GlobalLT("SanRTFPlot4","GLOBAL",3)~THEN REPLY~ We return from the Wood of Sharp Teeth and we have *closed* the new academy there. It seems that Talos is eliminated from the phalanx of our opponents.~DO~ SetGlobal("RTThayRep","LOCALS",2)~EXTERN CVSan25J ThayRepDefTalos1
IF~Global("SanRTFPlot4","GLOBAL",6) Global("ToFinal","LOCALS",0)~THEN REPLY~We are here to consult with you one last time as Thay is now our destination to finish this struggle and bring peace to the Realms.~+ Summary1  

CHAIN
IF~~THEN CVSan25J ThayRepNoTalos1
~Grandmother, this is what we learned in Thay...(Sandrah gives a report about the recent events.)~
==SanMyst~Xephistagoras had me captured already once in his own attempt to gain access to the Weave's power. I share your view about his plan for an excessive draining of energy from the Weave.~
==SanMyst IF~Global("SanRTFPlot3","GLOBAL",6)~THEN ~IF he is really in the old Bhaal temple in the Wood of Sharp Teeth you should pay him a visit now, chances are good that you can defeat him before he can summon any help from his allys.~
END
IF~Global("SanRTFPlot3","GLOBAL",7)~THEN REPLY~That is the obvious step, but what about thereafter?~+ ThayRepDefTalos1
IF~Global("SanRTFPlot3","GLOBAL",7)~THEN REPLY~I recall the events you refer to, Midnight. But what about mobilizing our own allys? ~+ ThayRepDefTalos1
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY~That is the obvious step, but what about thereafter?~EXTERN SanMyst ThayRepDefTalos2
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY~I recall the events you refer to, Midnight. But what about mobilizing our own allys? ~EXTERN SanMyst ThayRepDefTalos2
IF~Global("SanRTFPlot3","GLOBAL",6)~THEN REPLY~Fine. Let us do this step first before we return to discuss further options depending on what we learn there.~EXIT

CHAIN
IF~~THEN SanMyst ThayRepDefTalos2
~Let us talk about that once you have made that first step. We may gain further insight into our foe's phalanx' structure by the visit to the new academy.~
END
++~We will return soon, do not worry.~EXIT

CHAIN
IF~~THEN CVSan25J ThayRepDefTalos1
~AO has banned Talos from the Prime for the time being, although I already requested him to make this ban a permanent one. ~
==SanMyst~You risk a lot, granddaughter, you take your responsibility for your former home very serious.~ 
==CVSan25J~Without risk there will be no change. The stagnation will continue and evil gods will haunt Faerun and continue to misuse it as a playground for their childish games and intrigues for more power.~
==SanMyst~Once again I see a confirmation for my decision to hand over the Weave to you. You attempt what I could not.~
==CVSan25J~I was thinking about getting some powerful supporters into action as well who could be able to face respective members of the phalanx.~
==SanMyst~Whom were you thinking of, my child?~
==CVSan25J~Kelemvor possibly...~
==SanMyst~(She nods in agreement.)~
==CVSan25J~...and to face Szass Tam himself - what about a lich as the best weapon against a lich?~
==SanMyst~Yes!?~
==CVSan25J~Szass Tam uses wisdom and spellcraft that is as old as Netheril, there is only one except for Mystra with equivalent knowledge.~
==SanMyst~Larloch, the Shadow King.~ DO~SetGlobal("SanRTFPlot4","GLOBAL",1)~
=~Due to my former relationship with Kelemvor I propose that I will try to arrange a meeting between the two of you. It will take some time but it will be possible.~
==CVSan25J IF~Global("SanRTFPlot3","GLOBAL",6)~THEN~We will visit the Wood of Sharp Teeth meanwhile.~
==CVSan25J IF~Global("SanRTFPlot3","GLOBAL",7)~THEN~We will go and see the Shadow King and the Warlock's Crypt meanwhile.~
EXIT

CHAIN
IF~~THEN SanMyst Talos1
~Talos? Well, he always was at odds with Sandrah and you...still, I doubt that the Storm Lord is really so foolish to oppose two gods of your level at once where he cannot even cope with one of you alone.~
DO~SetGlobal("TalosIn","LOCALS",1)~
==CVSan25J~He may be involved and play his role but he is not alone - and he is not in lead of the whole intrigue.~
==SanMyst~I think that much is obvious. Unless you have further clues all there is to say that Talos is an obvious ally for anyone who likes to gather forces against you two.~
END
++~We still need to find facts to analyse the situation. We will return to make use of your generous offer in time, Midnight.~EXIT
IF~ GlobalGT("SanRTFPlot1","GLOBAL",4)Global("TalosIn","LOCALS",0)~THEN REPLY ~We encountered your former mate Cyric who ambushed us with his snipers. It is not clear what role he plays in the plot against us.~+ Cyric1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",7)Global("VelshIn","LOCALS",0)~THEN REPLY ~We met a ghostly opponent - Sandrah referred to him as Lord of the Forsaken crypt.~+ Velsh1
IF~ GlobalGT("SanRTFPlot1","GLOBAL",8)Global("VelshIn","LOCALS",0)~THEN REPLY ~ A lich king named Velsharoon seems to play an important role in the events.~ + Velsh1
IF~ GlobalGT("SanRTFPlot2","GLOBAL",1)Global("VelshIn","LOCALS",1)~THEN REPLY ~ We found out more about Velsharoon.~ + Velsh6
IF~ Global("SanRTFPlot1","GLOBAL",8)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY ~ Sandrah thinks we should seek for a book by Cerameon in Candlekeep.~ + Candl1
IF~ Global("SanRTFPlot1","GLOBAL",9)Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY ~ We have found this book by Cerameon in Candlekeep.~ + Candl1


CHAIN
IF~~THEN SanMyst Cyric1
~Cyric, of course, he could not have been missing. No plot involving you would be complete without him.~
DO~SetGlobal("TalosIn","LOCALS",1)~
==CVSan25J~He still begrudges <CHARNAME> for the power of the Throne of Bhaal and the essence he spoiled in Cyric's view. The question is what made him act at this time.~
==SanMyst~He might have found the allies he needed to feel strong enough - or he has been found by some who needed a powerful natural opponent against you.~
=~Whichever of the alternatives, Cyric should never be underestimated, chaotic and changing as his actions and path may be. He will always seek his own advantage out of any alliance.~
==CVSan25J~If he has his own agenda that fact may be used by us to OUR advantage, provided we find out more about the complete scheme. Cyric is powerful but also a weak link in any chain.~
==SanMyst~I agree, granddaughter. Isolate him or discriminate him to his allies and weaken the front against you. But it is still too early to make precise plans right now. Just remember the option when the moment comes for you to strike back.~EXIT

CHAIN
IF~~THEN SanMyst Velsh1
~Velsharoon, the Archmage of Necromancy!!~
DO~SetGlobal("VelshIn","LOCALS",1)~
==CVSan25J~I already blame myself for having neglected this aspect of my duties while still on Celestia.~
==SanMyst~We all have our blind spots, child, yours is the hatred against that misuse of magical powers that the necromancers perform. You are not alone in that opinion but the goddess of ALL Magic has a responsibility.~
==CVSan25J~How did you manage it in your time as Mystra?~
==SanMyst~Velsharoon originates from Thay, the arch-necromancer later appeared in Halruaa, where he and a Halruaan elder fought over the country turning their battlefield into a desolate ruin. Ultimately, he entered the Plains of Purple Dust, north of Raurin,where he set up a tower and began exploring ruins of ancient Imaskar. He discovered in a very old ruin a set of texts penned by the Storm Lord Talos, requiring the blood of adventurers, which would allow him to achieve immortality and divinity; however, after achieving godhood the astute Velsharoon was swift to realize that the Storm Lord would exploit his newfound divinity for his own purposes, ultimately destroying Velsharoon.~
==CVSan25J~This explains a bit about the relationship to Talos we encountered, <CHARNAME>.~
==SanMyst~After discovering that Talos intended to use him, Velsharoon pledged his allegiance instead to Azuth. Talos was furious at this betrayal, and attempted to act in vengeance. This is when I intervened to protect my protege Azuth whom he now serves. ~
==CVSan25J~So, at least nominally he serves Azuth and by that, inderectly Mystra. ~
==SanMyst~Velsharoon is an old schemer and might have renewed his old alliance with Talos. And - by the way - he despises the *newcomer* Cyric.~ EXIT

CHAIN
IF~~THEN SanMyst Velsh6
~ Let me know, please.~
DO~SetGlobal("VelshIn","LOCALS",2)~
==CVSan25J~He and his undead minions made an attack at Ghotal's former summer camp where the representatives of the Sword Coast, Amn, and the Clan Orcs held a conference.~
= ~Kelemvor.~
==CVSan25J~Your former mate, murdered by Cyric? What has he to do with all that?~
==SanMyst~Probably nothing...but maybe we should change that to occupy Velsharoon until we know what he is really up to.~
END
++~Honestly, I am lost at the moment.~+ Velsh7

CHAIN
IF~~THEN SanMyst Velsh7
~Velsharoon loathes Kelemvor for his opposition of undeath, which is logical. The necromancers deny to the Lord of the End of Everything what is rightfully his. Other gods receive power from their worshippers but Kelemvor gains power from the dead souls he receives. ~
==CVSan25J~Any attempt of Velsharoon to gain power is a direct assault at Kelemvor's portifolio.~
==SanMyst~Make the Lord of Death see it that way, my grandchild, and you have an unseen ally on your side. I know my former knight well enough to be sure he will not directly get in league with you. He is not one to make pacts with anyone.~
==CVSan25J~Still...if we could make him aware of the approaching danger for him, he may decide to act against the necromancers on his own.~
==SanMyst~Exactly. The Lich-Lord will all of a sudden have to face another unexpected enemy, which gives you some relief.~
=~I will try to use my former connections to Kelemvor to arrange for you two to talk a bit. This may take some time, so you will receive a message should I succeed.~EXIT

CHAIN
IF~~THEN SanMyst Candl1
~One of Sandrah's ancient ancestors, the Defender of Westgate, a follower of Mystra wielding a most deadly hammer against her enemies.~
DO~SetGlobal("SanRTFPlot2","GLOBAL",1)~
==CVSan25J~Grandmother, in her battle she finally had to cut off her enemies' supplies that appeared to be endless by the sacrifice of just that hammer.~
==SanMyst~I see what you mean, my learned child. Thay used a system of magically created tunnels from their base to certain locations in the Western Realms of old. There existed portals here where their magicians and monsters would transport to.~
==CVSan25J~The clones we have found are not produced here but most probably as far away as Thay. They are deployed here and only some minor installations that we have destroyed were used for repair and maintenance.~
==SanMyst~You think they re-use the old portals? That may well be the case. However, the main portal was sealed by the heroine back then with her hammer. She lost her right hand by doing so, but it stopped the endless resources of the eastern hordes.~
==CVSan25J~I believe our enemies have connections to Thay and they have access to all the old lore. If they re-activate the old main portal their clone invasion may reach another dimension.~
==SanMyst~Her journal should tell you where that gate was. The way it was sealed it cannot be opened from the far side but only from here.~
END
++~We must find it before they do.~EXIT
++~They have not succeeded yet and we must prevent that by all means.~EXIT

CHAIN
IF~~THEN SanMyst Summary1
~So - let us summarize what you have achieved and what needs still to be done - and how.~
DO~SetGlobal("ToFinal","LOCALS",1)~
==CVSan25J~Talos has been permanently removed from the phalanx.~
==SanMyst~Shar's activities have already shown initial results - but she is far from being defeated, Sandrah. Her plot may have failed and her influence in the phalanx will permanently decrease as a result but she still rules the Shadow Weave.~
==CVSan25J~I am aware of that, grandmother. However, if I have to face her - sooner or later it is unavoidable - she will be isolated and she will have weakened her own source in the Shadow Weave already.~
==SanMyst~Next is Cyric who is to <CHARNAME> what Shar is to you.~
==CVSan25J~Do not forget he always boasts to be my grandfather.~
=~The more we advance the more becomes clear that he is at the very heart of the matter.~
==SanMyst~He, or Szass Tam, we still do not know who is using whom if not both complement each other in the end.~
==CVSan25J~Still every progress we make is a hit that hurts Cyric, grandmother. The Lord of Lies never fights his battles in person. Reducing the allies he has gathered is always a point we gain in the battle with him.~
==SanMyst~Yes, to some extend - sometimes you also do his own dirty job for him. You know well that it is in most cases only a matter of time until he backstabs a *friend* he no longer seems to need.~
==CVSan25J~Which brings us to one of his early victims. I hope that Kelemvor has made his decision with respect to Velsharoon.~
==SanMyst~He has. You may want to take the chance to witness it by yourself.~
END
++~I am more than eager to see it, Midnight.~ + Summary2
++~It is enough for me to know that it is taken care of.~ + Summary2

CHAIN
IF~~THEN SanMyst Summary2
~The invitation is by the Lord of the End of Everything himself.~
DO~SetGlobal("ToFinal","LOCALS",2) ClearAllActions() StartCutSceneMode() StartCutScene("CVCut407")~EXIT



//Drizzt

CHAIN
IF~AreaCheck("RTF018") Global("MeetRTF","LOCALS",0) ~THEN CVDrizR MeetRTF
~Greetings and welcome to our humble home, my friends!~
DO~SetGlobal("MeetRTF","LOCALS",1) ~
==CVSan25J~Humble? It is a wonderful place and the view is one of the greatest in the Realms.~
==CVDrizR~The mistress of the house makes this place the only place this battered old drow still wishes to see.~
==CVSan25J~You and her - finally. You look all but battered or old, Drizzt, my love. The happiness in your eyes betrays you.~
==CVDrizR~I knew you would understand me - and of course your grandmother's decision - even after what has been between us, Sandrah.~
==CVSan25J~You were always honest to me, Drizzt. I know you have loved me but I also know that she was always at the centre of your heart and soul.~
==CVDrizR~And now she is the centre of my life as well.~
==CVSan25J~*Sandrah kisses Drizzt one final time. You know they have both decided that everything is as it should be from now on.*~EXIT

CHAIN
IF~ AreaCheck("RTF018") Global("MeetRTF","LOCALS",1) ~THEN CVDrizR MeetRTF2
~You are welcome always, <CHARNAME>.~
END
++~Thank you, old friend.~EXIT
IF~GlobalGT("RTLouPlot","GLOBAL",0) GlobalLT("RTLouPlot","GLOBAL",15) ~THEN REPLY~We must ask you for events very much in the past and maybe hurting you. Which route did you take out of the Underdark?~+ EscUP

CHAIN
IF~~THEN  CVDrizR  EscUP
~You surely have good reasons to ask for it.~
DO~SetGlobal("RTLouPlot","GLOBAL",15) ~
==CVSan25J~A companion has been kidnapped to the Underdark and Adlon is blocking the only access we have knowledge about. Surely there are other routes we can take.~
==CVDrizR~You have definitely no fear to face a strong colony of beholders, gauths and similar creatures, not like some lone desperate drow refugee had when crawling through their tunnels...~
==CVSan25J~Beholders...of course.~
==CVDrizR~All their tunnels connect to each other, find an entrance to one and you can pass into the next.~
END
++~The one of the Unseeing Eye is accessible from Athkatla, right?~EXIT

CHAIN
IF~AreaCheck("RTF006") Global("RTF4Driz","rtf006",1) ~THEN CVDrizR PointKel
~It seems I am still pretty quick on those old legs.~
DO~SetGlobal("RTF4Driz","rtf006",2) ~
==CVSan25J~Are you fishing for compliments, my friend, no one ever has called you old in that respect.~
==CVDrizR~Have you succeeded with Larloch?~
==CVSan25J~Not a very easy guy to handle but he is on our side now. Shar had already attempted to gain his services against me.~
==CVDrizR~Grrr, that black witch. Good to hear she was not as convincing as the Mistress of the True Weave. I will be happy to report this back to Midnight.~
=~We have been busy as well in the meantime. Kelemvor is expecting your visit.~
==CVSan25J~We are really progressing, <CHARNAME>. What is the arrangement, Drizzt?~
==CVDrizR~He says you will find the entrance to his realm where the dead are plenty and long forgotten. No gravestones tell of their life and mad last battle.~
END
++~The fields of death - hm, but there is the mausoleum after all?~ + PointKel2
++~The Firewine, where ancient mages destroyed a city and left only ruins?~ + PointKel2
++~The Undercity in Baldur's Gate, where we defeated Sarevok, but Bhaal harvested there not Myrkul or his successor?~ + PointKel2

CHAIN
IF~~ THEN CVDrizR PointKel2
~There is a warning appended to the invitation, <CHARNAME>.~
=~Kelemvor will receive you and Mystra peacefully but his realm is full of those who do not. You have sent many to their end with him.~
==CVSan25J~The remains of those we have defeated are either with Kelemvor or with Demorgorgon respectively. Interesting to see who is there.~
==CVDrizR~Interesting maybe, but dangerous for sure. How will you defeat those who are already defeated and kill those who are already dead?~DO~EscapeArea()~
END
++~Thank you for the message - and the warning, Drizzt.~EXIT

CHAIN
IF~AreaCheck("RTF123") Global("RTF5Driz","rtf123",1) ~THEN CVDrizR PointCyr
~I have waited for your appearance, <CHARNAME>. I knew to venture alone against Cyric would only endanger my beloved.~
DO~SetGlobal("RTF5Driz","rtf123",2) ~
==CVSan25J~It must be hard to restrain yourself, Drizzt. But he wants only what he thinks <CHARNAME> possesses.~
==CVDrizR~Thinks...you mean...you cannot provide the ransom for Midnight?~
==CVSan25J~Bhaal's essence has been destroyed when we ascended. Midnight was there herself to execute the act together with the Solar. Cyric is the fool he has always been.~
==CVDrizR~Ha, a pleasant thought - but dangerous for her.~
==CVSan25J~Worry not, my friend, you will soon hold her again safely.~
==CVDrizR~Move carefully, the old Blackstaff Tower is full of his deceptions, traps, and assassins. I will scout ahead and meet you once we find my beloved.~DO~EscapeArea()~EXIT

