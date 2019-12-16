//LEYALA
//=============
APPEND CVLey25J

IF~IsGabber(Player1) Global("Guide","ar5500",3) AreaCheck("ar5500")~THEN BEGIN Guide4
SAY~Have you changed your mind and let me proof my worth as a guide to Ravencrest?~
IF~~THEN REPLY~(Smile) You have certainly already proven your worth for us, Leyala, do not be too shy.~EXIT
IF~~THEN REPLY~Of course, Leyala, lead on.~DO~SetGlobal("Guide","ar5500",6) ~EXIT
END

IF~ IsGabber(Player1)~ THEN BEGIN LeyalaPCInit
SAY ~*Leyala smiles as you approach her, a smile that can break every man's or woman's heart.~
IF~GlobalGT("SanRTFPlot2","GLOBAL",3)AreaCheck("ar5500")~THEN REPLY~Can you guide us again to the monastery, sweet nun?~GOTO MoveMonstr
IF~~THEN REPLY~I am impressed by your skills, little one. It is good you are with us.~EXIT
IF~Global("Hoodmove","LOCALS",0)~THEN REPLY~*You cannot restrain yourself but to move her hood a bit further from her face to get a better view.*~GOTO Hoodmove1
IF~Global("Hoodmove","LOCALS",1)~THEN REPLY~*You cannot restrain yourself but to move her hood a bit further from her face to get a better view.*~GOTO Hoodmove2
IF~~THEN REPLY~*You try to return her smile although you have the feeling your face just becomes a silly grimace.*~EXIT
IF~Global("Hoodmove","LOCALS",2)Global("SanRomPath","GLOBAL",1)!AreaType(OUTDOOR)~THEN REPLY~You are very desirable, little one, would you remove more than just your hood for me?~GOTO Hoodmove3m
IF~Global("Hoodmove","LOCALS",2)Global("SanRomPath","GLOBAL",2)!AreaType(OUTDOOR)~THEN REPLY~Little one, would you mind to share some of the experience you teach others in love with me tonight?~GOTO Hoodmove3f
END

IF~~THEN BEGIN MoveMonstr
SAY~I am glad you ask me, <CHARNAME>. Let us go.~
IF~~THEN DO~SetGlobal("Guide","ar5500",6)~EXIT
END

IF~~THEN BEGIN Hoodmove1
SAY~*She casts her eyes down but gently touches your hand on her hood for a short moment.~
IF~~THEN DO~SetGlobal("Hoodmove","LOCALS",1)~EXIT
END

IF~~THEN BEGIN Hoodmove2
SAY~*She gently takes your hand from her hood and kisses your fingertips lightly.~
IF~~THEN DO~SetGlobal("Hoodmove","LOCALS",2)~EXIT
END

IF~~THEN BEGIN Hoodmove3m
SAY~Anything you desire, my god, how could I deny you. I will give to you with pleasure.~
IF~~THEN GOTO NightSc
END

IF~~THEN BEGIN Hoodmove3f
SAY~Anything you have allowed me to learn, my goddess, how could I deny you. I will prove myself worthy with great pleasure.~
IF~~THEN GOTO NightSc
END

IF~~THEN BEGIN  NightSc
SAY~*She lets her robe drop at the side of your bedroll with true grace and displays her well-trained slim body. Her movements are concentrated and tempting, not unequal to her combat style.*~
=~*She sneaks up close to you, starting to touch and caress you tenderly. Your body relaxes under the treatment of her fingertips. While your mind starts to drift with her touches you hardly recognise that her lips have joined the process.*~
=~*Her touches and kisses become more and more intense, you feel her tongue probe for more sensitive parts of your body.*~
=~*Your breathing gets heavier as you cannot restrain your arousal any more. You loose yourself completely to the nun's art.*~
=~*She senses your condition and expertly starts to fuel it even more. Your own hands have automatically begun to explore her body as well and you feel her respond passionately.*~
=~Ah...yes...please...mh....oh...~
IF~~THEN REPLY~Yes...yes...YES...~DO~SetGlobal("Hoodmove","LOCALS",3) RestParty()~EXIT
END

END

//Melicamp
//=============
APPEND RTMeli

IF~IsGabber(Player1) Global("RTVisithedge","GLOBAL",1)~THEN BEGIN Melipid
SAY~*The sorcerer smiles shyly as you approach him.*~
IF~~THEN REPLY~Why did you part with Thalantyr?~GOTO MelipidT
IF~Global("RTMeliQuest","GLOBAL",11)~THEN REPLY~What about your treasure?~GOTO Meliunp2
END

IF~~THEN BEGIN MelipidT
SAY~He always let me feel my mistakes too painfully rather than to help me correct them.~
IF~~THEN REPLY~You're a bit paranoid, Melicamp, he is a kind man and splendid mage.~GOTO MelipidT2
IF~~THEN REPLY~I had the impression he was quite forgiving to you.~GOTO MelipidT2
IF~~THEN REPLY~Years as an apprentice have to be like that. It motivates you to make progress.  ~GOTO MelipidT2
END

IF~~THEN BEGIN  MelipidT2
SAY~Maybe I was a bit too sensible. Often he pointed out what I could have seen myself.~
=~In hindsight he was a good teacher, I was just no patient student.~
IF~~THEN EXIT
END

END

//Izzy
//=============

//L'Urieet
//=============
APPEND CVLou25J

IF~IsGabber(Player1) Global("RTVisithedge","GLOBAL",1)~THEN BEGIN loupid
SAY~*The drow mage looks at you with steel-grey eyes, her feelings impenetrable.*~
IF~~THEN REPLY~You hold no grudge against me, the killer of your mother?~GOTO Murd1
IF~~THEN REPLY~I was wondering about your age, L'Urieet...~GOTO Age1
IF~GlobalGT("LouredB","GLOBAL",5)~THEN REPLY~You despise gods in general, L'Urieet, still you travel in their company - and you are a priestess yourself.~GOTO Reli1
END

IF~~THEN BEGIN Murd1
SAY~You are no killer, you defended yourself - and with that the Prime as well. And at the same time you have freed me from her regime.~
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~You could be the daughter of a goddess today.~GOTO Murd2
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~I am glad you see it that way.~GOTO Murd2
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~You could be the daughter of a goddess today.~GOTO Murd3
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~I am glad you see it that way.~GOTO Murd3
END

IF~~THEN BEGIN Murd2
SAY~You know how it feels to be the daughter of the God of Murder, don't you?~
IF~~THEN REPLY~I always appreciated the extra power that came with it.~EXIT
IF~~THEN REPLY~You are lucky to be spared that experience.~EXIT
IF~~THEN REPLY~You're too weak for such a challenge anyway.~EXIT
END

IF~~THEN BEGIN Murd3
SAY~You know how it feels to be the son of the God of Murder, don't you?~
IF~~THEN REPLY~I always appreciated the extra power that came with it.~EXIT
IF~~THEN REPLY~You are lucky to be spared that experience.~EXIT
IF~~THEN REPLY~You're too weak for such a challenge anyway.~EXIT
END

IF~~THEN BEGIN Age1
SAY~I think I know what you mean, <CHARNAME>. Melissan once was issuing a similar remark about my mother and the other Bhaalspawn, Yaga Shura. She thought all of the seed of the God of Murder was sown at about the same time, shortly prior to his end in the Time of Troubles.~
IF~~THEN REPLY~You almost read my thoughts...~ GOTO Age2
IF~~THEN REPLY~So, that was not the case?~ GOTO Age2
END

IF~~THEN BEGIN Age2
SAY~The God of Murder lay with women even before he became aware of his possible end and he planned his resurrection. Probably spawns like my mother, that Fire Giant, and also the Dragonspawn nourished his idea when he sensed the power and essence they had inherited from him.~
=~Apart from yourself and Qilandrha those early spawns were much stronger than any from the later phase.~
IF~~THEN REPLY~The old bastard may have run out of steam during his later day mass production.~ EXIT
IF~~THEN REPLY~When he started to spawn in excess he also provided smaller portions of the essence, it seems.~EXIT
END

IF~~THEN BEGIN Reli1
SAY~You are my companions, I aid your quest and you help me - to explore Faerun, its possibilities and...myself.~
IF~~THEN REPLY~You do not see the deities in us but mere companions?~GOTO Reli2
END

IF~~THEN BEGIN Reli2
SAY~*Mere* companions, you emphasize that incorrectly, <CHARNAME>.~
=~Companions, maybe even friends, are a higher value for me than some weird celestials playing their games with us.~
IF~~THEN REPLY~Your assessment reminds me of Sandrah - still she found a goddess and grandmother she could relate to.~ GOTO Reli3
IF~~THEN REPLY~You sound very much like Sandrah in her mortal days - and both of you found a god or goddess that gave you some meaning if not just some spellcraft.~GOTO Reli3
END

IF~~THEN BEGIN Reli3
SAY~My mother tried to raise me as disciple to Shar and I gained my initial abilities from that source even if could never connect to her, just like I never could follow my mother.~
=~I tried to find a logical relationship with a deity on my own to keep my access to the Weave and my spells without having to sacrifice myself to religious stupidities.~
IF~~THEN REPLY~And such is possible, (laugh), except maybe with Mystra these days?~GOTO Reli4
END

IF~~THEN BEGIN Reli4
SAY~When I decided to travel and explore, it appeared logical to me to support fellow travellers with my skills and receive their help in return. As such Shaundakul, Rider of the Winds, is my choice and I rather see him as a wiser fellow companion than my ruling master.~
IF~~THEN REPLY~(Laugh)...and if my lore is correct, he is in opposition to Shar at all times.~EXIT
END
END

CHAIN
IF~~THEN RTMeli Meliunp2
~I have already consulted with *another expert* and she has a plan.~
==CVSan25J~We need a quiet place outdoors where we can observe the constellations. If you rest with the party we can finish our studies meanwhile.~
END
IF~~THEN REPLY~We will soon find that time for you.~ EXIT
IF~~THEN REPLY~I think that can be arranged shortly.~ EXIT