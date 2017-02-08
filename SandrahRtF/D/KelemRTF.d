BEGIN RTKELEM
BEGIN RTSharp
BEGIN RTSenda
BEGIN RTBodhi
BEGIN RTVelsh

CHAIN
IF WEIGHT #-1~Global("RTopen","BG4500",1)~THEN Sankaba Firew
~Have you come to visit those who have departed?~
DO~SetGlobal("RTopen","BG4500",2)~
==CVSan25J~Mother, you have never departed me, neither me nor my father.~
==Sankaba~I know that, my daughter, you are so full of the love that we had when we seeded you. You were born out of love and inherited it.~
==CVSan25J~You know what I did and who I am...I had always wanted to share that with the mother I could not remember but who was always alive for me.~
==Sankaba~Alive through the memory of my sweetheart Elminster. I know it all and I know for whom you have come. He awaits you.~
=~He awaits you and <CHARNAME> - many others await you too, all in the Fugue Plane, Kelemvor's realm, know about your coming.~
==CVSan25J~Not all will greet us with love like you do. Still there is no other way for us.~
==Sankaba~Take what little I can give you, alas it is all that you need. I will lead the way now. Come, my beloved daughter.~DO~GiveItemCreate("NTPBLET1",Player1,1,0,0) GiveItemCreate("RTKalflo","CVSandr",1,0,0) ~EXIT

CHAIN
IF WEIGHT #-4~Global("SanRTFPlot4","GLOBAL",2) Global("TazHelp","RTF120",0)~THEN Tazok Kelem1
~Are you astonished to meet me here, my killers?~
DO~SetGlobal("TazHelp","RTF120",1)~
==CVSan25J~Killers may not be the right word, we ended your life but it was your own making, Tazok.~
==Tazok~The gods and the tablets of fate have decreed otherwise. The poor half-orc hated by all and mistreated and misused all life was the victim not the criminal.~
=~The blood of the one standing beside you is to blame - but that blood will flow now.~EXIT

CHAIN 
IF WEIGHT #-4~Global("SanRTFPlot4","GLOBAL",2) NumTimesTalkedTo(0)~THEN Firkra02 Kelem2
~The old game had a winner as it turned out. The black blood was powerful even if now you follow another path. Gorion, the old fool and his mad croony Elminster were right in the end.~
==CVSan25J~What has given YOU the priviledge to be here instead of the abyss, where I would expect such an evil creature like you belongs?~
==Firkra02~You don't know the answer, you who estimate your own knowledge so high, hahaha??~
=~It's the priviledge of my old race, older than you fledgling gods of the High Fool Ao. We have inherited the right to choose our own place...I have all the fire I need inside so I decided to wait here - FOR YOU!~DO~Enemy()~EXIT

CHAIN
IF~AreaCheck("RTF120") Dead("RTSarev") Global("SarevT","RTF120",1)~THEN RTSarev Kelem3
~You have shown mercy, <CHARNAME>, you allowed me to enter this peaceful realm after a life full of turmoil. Peaceful it was until this day.~
DO~SetGlobal("SarevT","RTF120",2)~
=~I owe you, so I will help you to survive the attacks of those you have fallen by your hands. Shall I be your ally on this level of Kelemvor's Realm, the Fugue Plane?~
END
++~I know how much that offer costs you, Sarevok, and I do not reject it.~DO~SetGlobal("SarevT","RTF120",3)~EXIT
++~I will have nothing to do with you, *brother*, your former betrayals have sentenced you in my eyes already.~ DO~ActionOverride("RTSarev",EscapeArea())~EXIT

CHAIN
IF~AreaCheck("RTF120") !Dead("RTSarev")Global("SarevT","RTF120",1)~THEN RTSarev Kelem4
~It is not your deeds or your mercy that have brought me to this place, <CHARNAME>. I would still be in Velsharoon's slavery by your decision.~
DO~SetGlobal("SarevT","RTF120",2)~
==CVSan25J~The Vaunted Lich has not forgiven you your failure at Candlekeep?~
==RTSarev~He just laughted and left me for dead. Kelemvor himself it was who showed mercy and saved me from the Abyss. He decreed my innocence to what Bhaal's blood had caused me to do. Not everyone has the guidance and strength to follow the path that was open to <CHARNAME>. Only one of the spawns was ever offered this perspective.~
==CVSan25J~(Mumbles) Actually two, even the gods were always unaware of Qilandrha. Well done, father.~
==RTSarev~I don't owe you, but I will help you to survive the attacks of those you have fallen by your hands to gain my eternal stay in Kelemvor's Realm. Shall I be your ally on this level?~
END
++~I know how much that offer costs you, Sarevok, and I do not reject it.~DO~SetGlobal("SarevT","RTF120",3)~EXIT
++~I will have nothing to do with you, *brother*, your former betrayals have sentenced you in my eyes already.~ DO~ActionOverride("RTSarev",EscapeArea())~EXIT

CHAIN
IF~ AreaCheck("RTF120")~THEN RTSharp Att120
~For Shar!~DO~Enemy()~EXIT

CHAIN
IF~AreaCheck("RTF121") Global("Bodhimeet","RTF121",0)~THEN RTBodhi KelemBo
~Ha, I see the puzzled look on your faces, silly ones. I am surely the last creature you expected to meet here, <CHARNAME>. Me and your Drow Bhaalsister over in the southern wing. Ha, we have a lot of fun chasing each other around...~
=~...it is good practice, you know. Practice for a day like this, when prey is delivered to our doorstep.~
DO~SetGlobal("Bodhimeet","RTF121",1)~
==CVSan25J~Sendai is here as well? You are right, the abyss is the place I would have expected you to be.~
==RTBodhi~I received this doubtful last present from my beloved brother, that enduring fool. His silly fluttering new wife must have given him those demented ideas about forgiving and repention. He is lost forever it seems.~
END
++~I propose to accept your brother's gift, Bodhi, otherwise our meeting here will end like all others before.~+ Kelembo1
++~Your brother may be forgiving these days - I am not. I still remember what you did to my *sister* Imoen.~+ Kelembo1

CHAIN
IF~~THEN RTBodhi Kelembo1
~This place is boring, even with Sendai for sparring. All will change once I have gained the essence of Love and Hope to corrupt.~
==CVSan25J~Cyric will reward you in his own special way for it. ~
==RTBodhi~If we bring him your head on a platter as a side dish he surely will celebrate with us and make us his new Chosen.~DO~Enemy() SetGlobalTimer("xyxVampireDomination","LOCALS",ONE_ROUND) ForceSpell(LastSeenBy(Myself),VAMPIRE_DOMINATION)~EXIT

CHAIN
IF~AreaCheck("RTF121") Global("Sendmeet","RTF121",0)~THEN RTSenda KelemSe
~I heard the turmoil in the other rooms and was sure that the demented vampire had found someone who dared to enter our privacy.~
=~Only a newcomer or a complete fool would dare to come to our level here.~
DO~SetGlobal("Sendmeet","RTF121",1)~
==CVLOU25J IF~InParty("Loureed")~THEN~I was a bit astonished to hear about your presence here from that vampire.~
==RTSenda IF~InParty("Loureed")~THEN~Is that how my seed has misgrown? So you're a mercenary for the greatest fool in the multiverse, the one to reject our father's powers for the love and hope set in a falling goddess.~
==CVLOU25J IF~InParty("Loureed")~THEN~You are here today as the result of a series of your own errors. I am not sure whether I am proud to be at the side of the ones who teach you another lesson or ashamed that I do feel nothing for my *mother*, not even hatred. You are already dead and gone for me and you will stay that way - you are no part of my life.~
==CVSan25J~We heard that Bodhi was spared the descent to the Abyss by a good word from her brother Irenicus. Who may your advocat have been?~
==RTSenda~Are you really so dumb that you have to ask?~
END
++~Yes, you have a <PRO_BROTHERSISTER>, too. I stand for Love and Hope and there was hope for you as well. I had friends and I had Gorion to help me handle the heritage I was born with, you had a society that nursed the dark seed in you - even worse, you had to use it to survive. Now the Throne of Bhaal is no more and your struggle can end.~+ KelemSe1

CHAIN
IF~~THEN RTSenda KelemSe1
~I was always surprised how a weakling like you could overcome me and even Melissan. The gods did not play fair. One thing about this Realm is that none intervenes here. Here we are beyond the end of everything. I will help you take a step forward for your eternal stay and I will step back to take this *second chance* you promised me.~
DO~Enemy()SetGlobalTimer("ChainContingency","LOCALS",1000) ReallyForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_ENERGY)
ReallyForceSpell(Myself,WIZARD_SPELL_TURNING)~EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",2) ~ THEN RTKelem Ally1
~I have expected you, Mystra. I do not apologize for any inconvenience on your way in. You have reaped plenty for my Realm and still do.~
DO~SetGlobal("SanRTFPlot4","GLOBAL",3)~
==CVSan25J~Greetings, Kelemvor. I have not chosen any of those battles that have filled your realm, nor do I seek further confrontation. I do what cannot be avoided.~
=~Still those that are due for you are yours after the battle is fought - a fact that separates me from my enemies.~
==RTKelem~Other gods define their power and impact by the number of their followship. Mine comes from the souls I receive.~
==CVSan25J~This may not be the case for all future. Those that deny to the Lord of the Dead what is rightfully his are getting stronger and their hunger and greed grows daily.~
==RTKelem~There have always been necromancers and other gods who have taken their share from my harvest, just like mice pick some grains from the farmers.~
==CVSan25J~One party has decided to tip the scales of the balance to their side recently. A new sort has appeared led by Velsharoon...~
==RTKelem~Ah, that scheming fool, pet dog of the idiot Talos, he has always loathed me for opposing the abnormal undead and liches that are his domain. Have you come to tell me old stories, Mystra. I have expected more from you, given the bloodline you come from.~
==CVSan25J~The pet has freed himself from the leash. He has found a wolfish teacher, one whose hunger is unsateable. Szass Tam is no mouse that picks the eventual grain to survive. He has in mind an empire built by his undead, his clones and his liches. Nothing more for you to harvest regardless how many losses his great battles might bring.~
==RTKelem~Hm, Szass Tam - Thay...the stream of new souls from there has indeed reduced to a rivulet. I had guessed they might have found peace after all this time of constant war.~
==CVSan25J~Just the opposite, Kelemvor, they build new armies of clones and undead to fight the Realms - and the Gods.~
==RTKelem~I will not partake in any of those foolish quarrels you celestials have all the time. If you came for an ally you came to the wrong place, do not insult me with your proposals.~
==CVSan25J~You must have misunderstood me, good friend. I am not looking for an ally in you. Pacts among the gods are always broken once one side sees the chance for an advantage. Such scheming is beyond us, is it not?~
==RTKelem~Good to hear, my dear. If it is not a supporter you have sought here, why did you come?~
==CVSan25J~There is a balance to keep, Kelemvor. For everything born something else must go and make space. This is where you have your task. Currently those who are due to pass to you are entering the cycle once again. Where will that end?~
=~We will leave you to your thoughts and decisions now. If you see any need to act you know where and against whom. I know you will do the right thing.~
==RTKelem~Hm, I will - just like you just did, young one. Take the way up from here, it is more convenient.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("Velshf","RTF340",2)~ THEN RTVelsh Firew1
~What has happened...this is not where I wanted to go??~
DO~SetGlobal("Velshf","RTF340",3) RealSetGlobalTimer("VelshFT","RTF340",120)RealSetGlobalTimer("VelshVul","LOCALS",100)~
==RTKelem~I have summoned you here, Vaunted...~
==RTVelsh~You dare to call me such to my face, skelleton?~
==RTKelem~I dare even more, necrophant - I dare to stop your excessive leeching of what rightfully belongs to the End of All.~
==RTVelsh~Kelemvor!!~
==RTKelem~This place I choose as it has seen the folly and the end of those who aimed to rule more than they were supposed to.~
==RTVelsh~History seldom repeats itself in the same way, the epic battle of the Firewine destroyed both of the decayed spellcasters - are you mad enough to attempt the same?~
==RTKelem~The balance between the living and the dead must be restored. What the price for it will be none of us knows. I am willing to pay what is required - are you willing to do the same?~
==RTVelsh~The balance, ah, well...Life and death are the twin faces of eternal existence. To surrender to either one is to resign oneself to obscurity. True power lies in the twilight zone between life and death. By seeking to explore and extend the mortal condition and form - even mortal life itself - knowledge of the world and its infinite complexity, is extended.~
==RTKelem~The Prime is not a plane designed for infinity, its limits must be respected. For each that comes another must go, nothing and no one can be here forever.~
==RTVelsh~I let no one interfere with the pursuit of such research, for the end result will more than justify the necessary sacrifices along the path. Knowledge is power, and knowledge of life and death brings power over all beings, living and unliving.~
==RTKelem~Clarity must be to as to your own existence, Vaunted. It will be living or unliving after this day but nothing in between.~
==RTVelsh~Such ignorance has cost you once and will do so again.~DO~Enemy()~EXIT

CHAIN
IF~Global("Kele123","LOCALS",1)~ THEN RTKelem Blacktow1
~This is the place my mortal life has been ended. I have expected you, Mystra.~
DO~SetGlobal("Kele123","LOCALS",2)~
==CVSan25J~Greetings again, Kelemvor. We have come for the one who had his hand in your fate long ago in this place. For him and for the woman that was the reason for Cyric's deed.~
==RTKelem ~She is not for me to possess any more as she has chosen a mortal life over eternity. Nor has the traitor any right to keep her against her will. Let us end it here and now. Come.~EXIT
