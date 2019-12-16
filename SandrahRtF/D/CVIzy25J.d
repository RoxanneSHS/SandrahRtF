BEGIN RTIzPlo1
BEGIN RTSharl
BEGIN CVIzy25J

IF~Global("IzzyGods","LOCALS",1)~THEN BEGIN Advantage1
SAY~Ya 'ave the largest biggest advantage over dem gods tryin' to make lotsa trouble down here, <CHARNAME>.~
IF~~THEN REPLY~Which is?~GOTO Advantage2
IF~~THEN REPLY~(Sigh)I close my eyes and I hear Imoen babbling and babbling on and on...~ GOTO Advantage3
END

IF~~ THEN BEGIN Advantage2
SAY~Slowpoke, yours is the advantage you're from round here and know your world and its peoples - they just don't.~
IF~~THEN REPLY~We've been through many cases where the gods have failed here on Toril just for underestimating the mortals, that's right, Izzy.~GOTO Advantage4
END

IF~~ THEN BEGIN Advantage3
SAY~Yeah, she warned me to ignore your nasty remarks and just always see your oh-so-golden heart ya tryin' to hide, she says...anyway, slowpoke, yours is the advantage you're from round here and know your world and its peoples - they just don't.~
IF~~THEN REPLY~We've been through many cases where the gods have failed here on Toril just for underestimating the mortals, that's right, Izzy.~GOTO Advantage4
END

IF~~ THEN BEGIN Advantage4
SAY~And you just dont never do make that mistake to underestimate lil' Izzy, I tell ya.~
IF~~THEN DO~SetGlobal("IzzyGods","LOCALS",2)~ EXIT
END

IF~Global("Izzyplot","GLOBAL",1)~THEN BEGIN IzPlotSt1
SAY~*During your negotiation with Saemon you have observed that Isobel was approaching several of the Shadow Thieves, obviously inquiring for something.*~
IF~~THEN REPLY~Your mother will kill me if I loose you to the Shadow Thieves!~GOTO IzPlotSt2
IF~~THEN REPLY~Trying to get some first handed lectures from the masters of your *trade*, Izzy?~ GOTO IzPlotSt2
IF~~THEN REPLY~Running your own investigation on our case, my dear? Did you find out more than me?~ GOTO IzPlotSt2
END

IF~~THEN BEGIN IzPlotSt2
SAY~Nay, slowpoke, I'm on some REAL serious business here...listen...~
=~(Her cheerful face in deed becomes serious.) Mama has reminded me of Sharlenia before I left home.~
IF~~THEN REPLY~And who is that?~ GOTO IzPlotSt3
IF~~THEN REPLY~Go on, please.~ GOTO IzPlotSt3
END

IF~~THEN BEGIN IzPlotSt3
SAY~She's one of our girls at the orphanage of course...you not met her, I see. She's got away some moons ago with that mh-so-very-cute Rhobald of Athkatla. Mama was upset, calling the boy a smelly rat and all such...didn't trust him none but Sharlenia was too much grown and head-strong to be held back.~
IF~~THEN REPLY~And he was a Shadow Thief?~GOTO IzPlotSt4
END

IF~~THEN BEGIN IzPlotSt4
SAY~Mama was pretty sure he was...and alas, it's true, some here knew him.~
IF~~THEN REPLY~Knew?~ GOTO IzPlotSt5
IF~~THEN REPLY~Sounds like the start of a new quest to me...~ GOTO IzPlotSt5
END

IF~~THEN BEGIN IzPlotSt5
SAY~Oh, please and please, <CHARNAME>, I know Mama really cares to know that all is fine with each of us, she cares and cares much. We only just have to drop by Rhobald's mother in the Bridge District and check that all is fine and good and Mama will be sooo happy...and me, too!~
=~Just say yes and yes.~
IF~~THEN REPLY~Does not sound like a big effort, it's just around the corner.~DO~SetGlobal("Izzyplot","GLOBAL",2) AddJournalEntry(@2046,QUEST)~EXIT
END

IF~Global("Izzyplot","GLOBAL",5)~THEN BEGIN IzPlotSt6
SAY~*Izzy seems to be more affected by the scene with Shabella than anyone else. But maybe the reason is some other - you have seen her talk to several thieves in the Guild while you were dealing with the Mistress.*~
IF~~THEN REPLY~Have you received news about your missing girl Sharlenia and her boyfriend?~ GOTO IzPlotSt7
IF~~THEN REPLY~What is it, Izzy?~ GOTO IzPlotSt7
END

IF~~THEN BEGIN IzPlotSt7
SAY~Ah, that fool Rhobald! Looks like he's got Sharlenia into some trouble deep. Thieving is one thing...slave trade is..eh...criminal.~
IF~~THEN REPLY~Good to hear you say that.~ GOTO IzPlotSt8
END

IF~~THEN BEGIN IzPlotSt8
SAY~From what I hear my half-sister and this boy stepped on some toes with their senseless actions...Samas Kul - who's that guy?~
IF~~THEN REPLY~Someone we will need to face sooner or later anyway.~DO~SetGlobal("Izzyplot","GLOBAL",6) AddJournalEntry(@2048,QUEST)~EXIT
END

CHAIN
IF~Global("Izzyplot","GLOBAL",7)~THEN RTSharl MetThay1
~Izzy...? IZZY!!~
DO~SetGlobal("Izzyplot","GLOBAL",8)~ 
==CVIzy25J~Sharlenia...? SHARLENIA!!~
DO~AddXPObject("CVIzzy",26500) AddexperienceParty(10000) EraseJournalEntry(@2046)EraseJournalEntry(@2047) EraseJournalEntry(@2048) ~
==RTSharl~I would have expected anyone here, but you. Did Mama send you after me?~
==CVIzy25J~She was VERY troubled not to hear from you - but she's not as troubled as me when I followed your scent - a real spiral downwards.~
==RTSharl~(Sigh) You are SO right, Izzy.~
=~(Sigh - she looks down in horror at the dead body of a young man at her feet.)~
=~I hope it may be over now. You and your friends really have the nerve to eliminate Samas Kul's precious pets.~
==CVIzy25J~Stinking lizard men. But now we must and must get you outa here quickest!~
==CVSan25J~Listen, you two. There is a ship in the harbour, a ship from Athkatla and a captain that owes us a bit. Sharlenia, you will surely be able to sneak out of here and make it to Saemon's ship. We may follow you in a while when we finished our other business here.~
==RTSharl~With the beasts out of the way I will make it to the ship. I await you eagerly, Izzy.~DO~EscapeAreaMove("RTF098",718,470,3) ~EXIT


CHAIN
IF~Global("Izzyplot","GLOBAL",3)~THEN RTIzPlo1 GoneThay1
~Oh no, not more adventurers...~
DO~SetGlobal("Izzyplot","GLOBAL",4)~
==CVIzy25J~Fear nothing of us, heya, we're the good ones, lady.~
==RTIzPlo1~There ain't no such thing as a good adventurer or honest thief...~
==CVIzy25J~You haven't seen it all yet, yeah, ya just talk to one right now, Isobel of Beregost, daughter of Imoen the Magnificent!~
==RTIzPlo1~But then you must be...eh, related to Sharlenia.~
==CVIzy25J~Yep, we're kinda sisters in a way. How is she? Can I bring good news home to Mama? ~
==RTIzPlo1~Ah, I can't blame her. It wasn't she who put that idea about Thay in my boy's mind. May well be it was really him who dragged her out of town.~
==CVIzy25J~Thay?~
==RTIzPlo1~Rhobald always has those ideas of getting bigger and better than all else...Thay sounded like paradise to him. I say - anything east of the Firewine has never brought nothing but trouble to anyone of the Realms...~ DO~EscapeArea()~
==CVIzy25J~I ain't sure if Mama likes that or not - but, so what, SHE never stayed at home to be Mrs. Nicegirl, didn't she?~
END
++~We will not find out much more about those two, I am afraid, unless for any reason we should ever make it to Thay.~DO~AddJournalEntry(@2047,QUEST)~ EXIT

CHAIN
IF~AreaCheck("RTF098")~THEN RTSharl OutThay1
~Izzy, you made it to safety! I heard the noise and the captain was getting a bit nervous and send us below deck.~
==CVIzy25J~We are out of bloody Thay - at least for now...(She gives you and Sandrah a glance) I ain't too sure about some fools or heroes or maybe both in a same one person who already plan to return where we jus' bailed out.~
==RTSharl ~Oh, Izzy, as if you wouldn't be the number one volunteer to follow them, just like our Mama did.~
==CVIzy25J~Yeah, Imoen the Magnificent, to hell and back...I studied her deeds not in vain.~
==RTSharl ~Just like her you made a better choice in companions - I am done with adventuring and trying to make a fortune, just let me return to little old Beregost.~
==CVIzy25J~Ha, we'll assure that, right, <CHARNAME>? Ain't no bloody Fire Giant slave driver prevent that none.~EXIT


