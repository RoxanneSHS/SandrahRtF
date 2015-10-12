BEGIN RTAerie

CHAIN
IF~AreaCheck("RTF112") Global("RTWed","RTF112",0)~ THEN RTAerie Wed1
~ Oh, what a surprise, see, Joneleth, which guests have come to our feast!!~
DO~SetGlobal("RTWed","RTF112",1)~
==RTIren~In deed a surprise, I was not expecting any outsider to witness my final total defeat.~
==RTAerie~Darling, you promised me to smile all day, didn't you.~
==RTIren~The old scars and burns cannot keep the grimace up much longer. But well, since you are here - uninvited but nonetheless - you may as well have your fun with my cheerful bride.~
==CVSan25J~Your bride...congratulations to you from all of us. A happy and love filled future for you.~
==RTIren~Don't be too hasty, that cleric has still not shown up for the ceremony. Why can't they walk or teleport over here, all this mind boggling fluttering...he's probably crashed into a tree or something...~
==RTAerie~All here are expert flyers, believe me, he will be here in a minute and we can celebrate.~
==CVLey25J IF~InParty("Leyala") Global("SanRomPath","GLOBAL",1)~THEN~Maybe a nun and priestess of the God of Love is what you would need to commence with your wedding?~
==CVLey25J IF~InParty("Leyala") Global("SanRomPath","GLOBAL",2)~THEN~Maybe a nun and priestess of the Goddess of Love is what you would need to commence with your wedding?~
==RTAerie IF~InParty("Leyala")~ THEN~Oh, how perfect. What could be better than that, my Joneleth.~ DO~AddXPObject("Leyala",12500)~
==CVSan25J IF~!InParty("Leyala") Global("SanRomPath","GLOBAL",1)~THEN~Maybe the God of Love himself is what you would need to commence with your wedding?~
==CVSan25J IF~!InParty("Leyala") Global("SanRomPath","GLOBAL",2)~THEN~Maybe the Goddess of Love herself is what you would need to commence with your wedding?~
==RTIren~(Sigh) Anything will do better than waiting here till my old feet get sore, let's get this done...please.~
==RTAerie~Oh, I see that fire in your eyes that tells me you cannot await what comes afterwards, my love.~
==RTIren~Mmh - you know how to convince me, you teasing sparrow.~EXIT

CHAIN
IF~Global("AerieCreated","ar0601",1)~THEN RTAerie JonLove1
~Oooh, <CHARNAME>, Sandrah...what a surprise to see you here!!~
DO~SetGlobal("AerieCreated","ar0601",2)~
END
++~And not a minute too soon it seems, poor victim of Irenicus!~+ JonLove2
++~What is going on here, Aerie?~ + JonLove2
++~We will free you, fear nothing.~ + JonLove2

CHAIN
IF~~THEN RTAerie JonLove2
~Ooops, landing still needs to be practiced a bit...~
==CVSan25J~You seem to be quite cheerful down here - not a miserable captive damsel in a fierce mage's dungeon.~
==RTAerie~Captive?? Fierce Mage?? Dungeon?? Oh, my, you got it all wrong (laughs amused).~
==CVSan25J~You are here on your free will using the torrents created by these large ventilators to fly?~
==RTAerie~Can you imagine how wonderful that is!! After all this time I can fly again, thanks to him...~
==CVSan25J~Joneleth *helped* you?~
==RTAerie~Oh, yes, he struggled so long and spend endless days and nights (sigh) over his experiments and research. He was so frustrated when the wings he tried to make for me failed again and again. I had long accepted my fate but you know how stubborn he can be. He swore to make me fly again and he would not stop until he succeeded.~
==CVSan25J~You live here - with him?~
==RTAerie~Of course, this is now my home. Joneleth finally found this solution you just saw, he taught me to change into a flying creature at will. It is not truely my own wings he returned to me but the sensation of flying once again has been restored.~
==CVSan25J~What is the price you had to pay for that, Aerie?~
==RTAerie~The price?~
=~You are all so completely wrong about Joneleth, really. He is not the monster you encountered, not at all. The price? He has all he may ask for already, he has...me.~
==CVSan25J~You love him?~
==RTAerie~I can be just as stubborn and persistent as he is. I will soon have him agree to come with me to Faenya-Dale to meet the Avariel and swear the oath.~
==CVSan25J~You will marry him. Congratulation, Aerie, I am sure you will succeed. He is an elf after all and maybe you are the one to return him to his roots.~
==RTAerie~It was sooo nice to see you again. I will fly a few more rounds before supper. Farewell.~ DO~ Polymorph(WYVERN_FAMILIAR)~EXIT