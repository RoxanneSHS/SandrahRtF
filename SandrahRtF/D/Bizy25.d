BEGIN Bizy25

CHAIN
IF~Global("RtFIzGir","GLOBAL",1)~THEN Bizy25 IzGir1
~Heya, big Orc prince boy, is that really the same Giran that I played with in the back streets of ol' Beregost.~
DO~SetGlobal("RtFIzGir","GLOBAL",2) RealSetGlobalTimer("IzGirT","LOCALS",1900)~
==BGIR25~Definitely - as you are without doubt the same Izzy that terrorized the sleepy little village we once called home with your wildfire temper.~
==Bizy25~Ooh, you were - eh, you still are...so cute. Who woulda had guessed you become the great warrior prince one day.~
==BGir25~With my stepfather Minsc and his friends I have become a valuable ranger - at least I hope I am. What about you? How did you fare?~
==Bizy25~I'm the great Imoen's one and only daughter, guess that! Imoen the Magnificent!~
==BGir25~You are a spellcaster then, like her?~
==Bizy25~Right, my boy, but also I open locks 'n' can disarm any trap regardless of difficulty.~
==BGir25~And you still steal?~
==Bizy25~Hey, hey, orc prince boy, I sometimes re-distribute goods from those who just pile 'em up to those who really need' em.~
==BGir25~Ah, well, <CHARNAME> and Sandrah would not have you in their company if that weren't true.~
==Bizy25~To step outside the law you must be honest, prince boy.~EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",3)~ THEN Bizy25 IzGir2
~Eeek, why do you carry that rat around, Giran? Is that your orc meal or what?~
DO~SetGlobal("RtFIzGir","GLOBAL",4)~
==BGir25~Meal? Are you crazy, Izzy! Boola is my hamster like every good berserker has one.~
==Bizy25~Aye...I seee...I remember mama told me about that once - a pan-galactic space traveller hamster or something like that, right?~
==BGir25~Pan-galactic what? Izzy, you are really strange sometimes. Boola is just a little hamster lady.~
==Bizy25~Then why does such a fearless warrior like you carry her around?~
==BGir25~Every berserker takes care of such a small creature. It shows that he can take responsibility for the safety of those who cannot defend themselves like the women and children.~
==Bizy25~Hm, not so stupid then, me guesses - even...I cant hardly imagine you with the orc girls, really...~
==BGir25~(Giran becomes silent.)~
==Bizy25~Ouch, have I stepped on someone's toes there?~
==BGir25~No, Izzy,...there is no...I mean...orc girls are different, eh, from...eh, from you...~
==Bizy25~Hey, confess it - they are not really your taste, no?~
==BGir25~Look, we have fallen behind the others quite a distance, let us catch up with them...~
==Bizy25~Try to outrun me if you can!~EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",5)~ THEN Bizy25 IzGirMo
~What is wrong with...uuuh...~
DO~SetGlobal("RtFIzGir","GLOBAL",6)~
==BGir25~Watch out, Izzy, stampeding moose, quick sneak up behind me so I can defend you...~
==Bizy25~They're so big!!~DO~ActionOverride("CVGiran",Attack("CVMoose")~EXIT

CHAIN
IF~ Global("RtFIzGir","GLOBAL",7)~ THEN Bizy25 IzGirMo2
~Stampeding moose??? I thought they were just harmless grass eaters.~
DO~SetGlobal("RtFIzGir","GLOBAL",8)~
==BGir25~At times they eat some specific herbs up here, it makes them wild, kind of like when we get drunk. You always have to keep an eye on them even if they are so harmless at other times.~
==BIzy25~Or you have to have a fearless ranger by ya side, ain't it so?...Say, is Boola alright?~
==BGir25~She is, but what about you, Izzy?~
==BIzy25~Oh, I'm...ouch, hey, looka here!!~
==BGir25~*As Giran steps forward to inspect Isobel's wrist she has outstretched to him, she quickly seizes him behind his neck and pulls him close. Mmmmpf - she places a big kiss on his forehead.*~
==BIzy25~Thanks and thanks, my big hero!!~
==BGir25~You are not hurt at all...~
==BIzy25~Thanks and thanks anyway - I feel save with you near just like I were some little hamster.~
==BGir25~(Smiles brightly) A new breed, a red-furred hamster throwing fireballs.~
==BIzy25~Purr...those are known to need much and much protection, ya know?~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("RtFIzGir","GLOBAL",9)~ THEN Bizy25 IzGirHeal
~Now hold still and let Izzy treat that, my orc prince boy...~
DO~SetGlobal("RtFIzGir","GLOBAL",10)~
==BGir25~Treat what? *He looks bewildered at the handkerchief Izzy has retrieved and starts to wet with her spittle*.~
==BIzy25~That bleeding wound of yours, of course, there...on your brow.~
==BGir25~That's nothing...~
==BIzy25~Psst. *She begins to rub eagerly, smearing the blood from the small cut on Giran's brow all over his cheek.* ~
=~If I don't get this bleeding unner control quickest you will attract those wolves or even werewolves upon us.~
==BGir25~(Sigh)~
==BIzy25~You do all times so much and much for me, my prince, I'm really glad I can pay some back to ya now.~
==BGir25~What do I do?~
==BIzy25~Dontcha deny and think I'm too blind to see how you're always sooo protective for me all the time. Like I were really your red-headed hamster girl in care.~
 ==BGir25~I...~
 ==BIzy25~Ha, I knew it and knew. You try to make it look so nat'ral and so. 'n your arrow takes out the beast jumpin' at me and ya sword hacks down the one tryin' to shoot me.~
==BGir25~Of course I do. A ranger must protect the spell caster...~
==BIzy25~Hush, I know it all and all. *She places a kiss on Giran's cheek.*~
==BGir25~What...~
==BIzy25~Hey, did that orc mama of yours never do that. No healing is complete without it. Get well soon, my boy.~
==BGir25~(Laughs) Maybe I shouldn't. Maybe your debt is not yet repaid...~EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",11) ~THEN Bizy25 IzGirsur
~Ya look very grimlish this morn, Giri, tryin' to scare away monsters with ya face?~
DO~SetGlobal("RtFIzGir","GLOBAL",12)~
==BGir25~Izzy, a ranger sleeps lightly...~
==BIzy25~Eeeeh...good to know...I...eh...I can feel save all the time then.~
==BGir25~You could but a thief could not.~
==BIzy25~Whatcha mean, orc prince darlin', heh?~
==BGir25~I talk about silent little feet tip-toeing through the camp at night to where other people's belongings are stored.~
==BIzy25~Aah...it's not what ya thinkin' not at all no.~
==BGir25~You do not know what I am thinking, Izzy. Actually I thought there would be a reasonable explanation to it and you would be able to give it to me.~
==BIzy25~Of course there is!!!...but I'm not givin' it.~
==BGir25~???~
==BIzy25~Idiot! It was meant to be a surprise, spoil sport!~
==BGir25~A surprise for me - from you?~
==BIzy25~*Angrily stamps her foot*. Of course...how can one sleep with open eyes and still not see the obvious...Aaah - men! *She rushes away red faced.*~
==BGir25~What was that?...Aaah - girls!~EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",13) ~THEN Bizy25 IzGirbath
~SQUEAL!!!! *Boola's eyes are wide and full of panic as Izzy carries the hamster towards the water.*~
DO~SetGlobal("RtFIzGir","GLOBAL",14) RealSetGlobalTimer("IzGirRomTime","LOCALS",3800)~
==BGir25~IZZY! What the hell do you think you are doing with Boola?~
==BIzy25~What's it look like, he? We gonna take a bath of course, she...eh...smells -or shall I say stinks...~
==BGir25~You cannot do that with her fur, please set her down, she will clean herself out here in the sun.~
==BIzy25~Gotcha, orc boy! Now that we've taken care of your hamster we can attack the TRUE source of the problem!~
==BGir25~Which is?~
==BIzy25~Her stench comes from her unwashed master of course, hihi...~
=~Looka here, orc prince. ~
=~*She points at the river* - This water. ~
=~*She pokes her finger into Giran's breast* - This smelly dirty fighter orc.~
=~*She elegantly lets her tunic slide from her body and points at herself.* - This is girl who wants clean nice boy at her side.~
=~*Her quick dexterous thief's fingers open and remove Giran's armour in a second.* - Time for a bath, come on, slowpoke.~
==BGir25~*There is no obvious resistance from the naked ranger as Izzy drags him by the hand down towards the river where they both splash laughing into the ripples.*~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",15) ~THEN Bizy25 IzGirRom1
~*Isobel and Giran lie on their backs in the sunshine lazily gazing at the sky.*~
DO~SetGlobal("RtFIzGir","GLOBAL",16) ~
==BGir25~At times you remind me of those orc girls back home...~
==BIzy25~Get outa the sun quickest, prince boy, ya brain is meltin' away already!!~
==BGir25~I mean - if they want a man for themselves they just get at him and take him...~
==BIzy25~Baaah, are you now complainin' or what? Listen, slowpoke, you're the one to blame here. Isn't it the boy's work to do all that romantic courtin' stuff and such. But my pasha lets ol' Izzy do all the workin'...~
==BGir25~You are the girl, for sure, but you are also the thief.~
==BIzy25~What's that got to do with it?~
==BGir25~I am the ranger and as such I know how to trap my victim. You need a good bait for a trap to work.~
==BIzy25~You wanna trap this here thief? Make the bait interesting, orc prince!~
==BGir25~I think I did. What is the greatest temptation for a thief to steal?~
==BIzy25~You tell me and be quickest at it.~
==BGir25~Always what is hardest to get, right?~
==BIzy25~You think there is such a thing for me?~
=~*She quickly rolls over to him and kneels on his chest in an instant. Pinching his arms down with her weight she kisses him on the mouth.*~
=~Am I trapped now or are you?~
==BGir25~*Kisses her slowly and with pleasure.*~
=~Does it matter?~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("Izzypink","RTF057",1)~THEN Bizy25 PinkBoots
~WOW, this is THE shop I's waited and waited for since ages...looka here!~
DO~SetGlobal("Izzypink","RTF057",2)~
==CVSan25J~One thing about Thay that has to be respected is that they know what quality is worth in clothes.~
==Bizy25~Watcha think, cleverest Sandrah, can we put dem red robes out in the sun to bleach'em to pink?~
==CVSan25J~We probably have not enough time to stay in one place and wait for the miracle to happen...~
==Bizy25~THERE!!!! PINK BOOTS!!! (Points excitedly at a store table.)~
=~(Sigh) If I had just a prince boy who cared much and much for me and enough to buy them...~
==CVGir25J IF~InParty("CVGiran")~ THEN~There is quite enough pink on you already, little hamster. And those slippers you wear show your delicate feet very well, why hide them in boots?~
==Bizy25 IF~InParty("CVGiran")~ THEN~Gee, was that a compliment? My orc prince, what's gotten into you? Can it be repeated and done again?~
==CVGir25J IF~InParty("CVGiran")~ THEN~Talking about your precious feet, Izzy, a ranger's skills include the *bestest* of toe massages you can imagine.~
==Bizy25 IF~InParty("CVGiran")~ THEN~No need to imagine - that was a promise! One good thing about your honour and reliability thing's that you'll def'nitely keep it. This eve, my boy!~
==CVGir25J IF~InParty("CVGiran")~ THEN~*Grins brightly.*~ EXIT

CHAIN
IF~Global("RTInCell","RTF061",1) ~THEN Bizy25 Jailbreak
~Ha, you lawless lawguys and all, d'ya think these locks could hold Izzy and her friends for jus' a minute. I'll have us outa here quickest.~
DO~SetGlobal("RTInCell","RTF061",2) RealSetGlobalTimer("RTInCellD","RTF061",180)~
==CVSan25J~No doubt you could easily let us free, Izzy. We could explore the building a bit if you want - but we really should take the chance to go to court.~
==Bizy25~You ain't jokin' are ya? Haven't you seen how the law works in this land?~
==CVGir25J IF~InParty("CVGiran")~ THEN~A thief from the Sword Coast is more honest and lawful than the judges in Thay.~
==Bizy25 IF~InParty("CVGiran")~ THEN~My!! Prince boy, admit that my skills are the mostest useful of us all at this moment.~
==Bizy25 IF~!InParty("CVGiran")~ THEN~A thief from the Sword Coast is more honest and lawful than the judges in Thay. Admit that my skills are the mostest useful of us all at this moment.~
==CVGir25J IF~InParty("CVGiran")~ THEN~You are a really great - and lovely - lock picker, Izzy, but Sandrah is right, this faked trial is our chance to get into the Court building where we can retrieve the stolen key. You can get us out after our success.~
==CVSan25J IF~!InParty("CVGiran")~ THEN~You are a really great lock picker, Izzy, but this faked trial is our chance to get into the Court building where we can retrieve the stolen key. You can get us out after our success.~
==Bizy25 ~You can bet on that for surest.~EXIT

CHAIN
IF~Global("Izzypink","RTF107",1)~THEN Bizy25 PinkRoom
~WOW, this guy likes pomposities like none else, he!~
DO~SetGlobal("Izzypink","RTF107",2)~
==CVSan25J~Wealth does not automatically produce good taste.~
==CVGir25J IF~InParty("CVGiran")~ THEN~It makes me angry to think of all the suffering slaves required to produce this perverted display of one man's wealth.~
==Bizy25 IF~InParty("CVGiran")~ THEN~It's not my taste anyway, orky boy.~
==Bizy25 IF~!InParty("CVGiran")~ THEN~It's not my taste anyway, it's incomplete.~
==Bizy25~Where's the pink room after all?~EXIT

CHAIN
IF~Global("RTIzCow","RTF081",1)~THEN Bizy25 Cowstamp
~Gee, d'ya think those cows can act jus' as weird as dem moose, my protector hero ranger boy?~
DO~SetGlobal("RTIzCow","RTF081",2)~
==CVGir25J~You refer to that stampede we once encountered?~
==Bizy25~If they'd knowed how many of their kind I've eaten already they might get some weird ideas, dontcha think?~
==CVGir25J~Maybe you should consider your eating habits, my hamster. Just in case you encounter some of them without a fence...~
==Bizy25~...or without my strong fearless protector, eh? (She clings to Giran's arm playing the helpless little girl she surely is not.)~
==CVGir25J~I propose to make sure that your boy is always near, how about that?~
==Bizy25~Isn't that what I do and do each 'n' every day? (Kisses him.) We need more cows and moose on Faerun so you cant leave me unprotected for the shortest moment.~EXIT

CHAIN
IF~Global("Cita","RTF160",3)~THEN Bizy25 PinkFuture
~My prince orc boy love...~
DO~SetGlobal("Cita","RTF160",4)~
==CVGir25J~My thieving little princess?~
==Bizy25~Will I really be that for you...your princess...I mean - in the Stormhorns and such with the orcs and so...?~
==CVGir25J~You will be MY princess, so much is true.~
=~Listen, I have thought about that scenario for long - you and me, two humans, leading and ruling the proud strong Clan Orcs. It is not what I think is right and it is not what I think you want from life.~
==Bizy25~But I want you and you and you...~
==CVGir25J~Hey, I told you to listen, my hamster beauty. So - I have a friend among the orcs, Farngiel, the son of Welrick. He is strong and he is already wise in his young years. Whenever the youngsters in the Berserker Lodge had to meet a challenge we followed him as a leader - including me. When the time will come for decision, I will promote and support Farngiel - he is the right one to lead the Clans, not some human - not me.~
==Bizy25~(Blushes) You impress me so much and much, my greatestest hero...while everyone wants power and more power all the time, you would go and give it to another instead? And all just to love a little red headed thief!!~
==CVGir25J~Yes.~
==Bizy25~I...I just love and love and love you...~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("IzGirUD","LOCALS",1)~THEN Bizy25 drow
~*The goddess of all magic has given your party the appearance of drow while in the Underdark.*~
DO~SetGlobal("IzGirUD","LOCALS",2)~
==CVGir25J~Uuh, you look...very...tempting in this drow avatar.~
==Bizy25~What?~
==CVGir25J~So seductive...~
==Bizy25~(Smack!) That spell has changed more than your skin, orc boy. Are you sayin' I was an ugly little duckling before? You...YOU...MALE!~
==CVGir25J~Uuh, I apologize, my mistress.~
==Bizy25~Ha, you will have a new definition what PAIN is when I'm through with you this evening, (Hiss!)~EXIT
