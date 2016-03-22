BEGIN CVIzy25
BEGIN RTFImo

CHAIN
IF~ NumTimesTalkedTo(0)~THEN CVIzy25 FirstSaw
~Heya...My!!! I'll drop dead jus' where I stand if that ain't San...but, hey no, it's not that goddesses walk in any time of the day to our house...~
DO~SetGlobal("SanIzzyJoin","GLOBAL",1)~
==CVSan25J ~ You must be Iz...I mean, Isobel. You are still here, little one?~
==CVIzy25~ Hey, Sandrah or Mystra or what...it's okay to say Izzy these days...mom 'n' dad have given up with that Isobel fine talking as mom never was bestest at it anyway.~
==CVSan25J ~ Mom and dad? You have found new parents, Izzy?~
==CVIzy25~ Guess you walk into here 'coz of them, 'tis not hard to figure that out. Wanna see your besta friend again, right?~
==CVSan25J ~Oh, now I understand! Of course, this had to turn out that way - you are Imoen's daughter.~
==CVIzy25~ You'll never see bester mom and daughter, Sandrah. I learned and learned everything first handedly from Imoen the Magnificent. Heya, <CHARNAME>, ain't no day in this house that your name not get mentioned and all you did do together.~
END
++~Pleased to meet you, Izzy, a fine young woman you have become, Imoen must be proud of you.~ + FirstSaw2

CHAIN
IF~~THEN CVIzy25 FirstSaw2
~Most of times yes, unless my fireballs don't listen to what I told dem to hit - or ol' Taerom really has once agin constructed a lock that ol' Izzy cant pick in a seconds fly.~
==CVSan25J ~You sound like you prepare yourself for the adventurer's life like you dreamed  already as a child. A mage and lock-picker like any party would need one.~
==CVIzy25~That's me!! Fit and ready to go - - but, my, where's my hospitality...you must and must come upstairs with me to see mom and dad. AND don't forget to mention that you are here to seek for companions for your next great adventure...like the besta spellcaster and thief within three days up and down the Sword Coast. Come, slowpokes...~
END
++~If that is not our old Imoen mirrored, I don't know .(Laugh and follow her.)~ DO~ClearAllActions() EscapeAreaMove("BG3321",552,407,7)~EXIT

CHAIN
IF~AreaCheck("BG3321")~THEN CVIzy25 GoWith
~Look, mama, papa, there they are jus' like I told 'n' you wont believe none!~
==RTFImo~Really, OH, <CHARNAME>, what a surprise...how are you...how's my besta friend...how's such life as a god...why are you here...????~
==Henning2~Oh, Imoen, will you not give our guests a chance to answer at least one of your questions.~
==CVSan25J~All is well still in Beregost. Your good deeds with the children all along the Sword Coast are well recognized, my besta friend. But for us something new is brewing darkly. We have been send by the Overgod himself to clarify matters on the Prime.~
==RTFImo~(Imoen looks concerned - all of a sudden you see your old friend and *sister* turn into the serious council member and caring mother she has become meanwhile.)~
=~Gods walk Faerun in their mortal avatars, that is never a good sign. I remember what that meant last time...Times of Trouble.~
==CVSan25J~I would not be pessimistic so early already, but something is amiss. <CHARNAME> and me have not only made friends with our actions since our ascencion.~
==RTFImo~I can imagine old Cyric thinking of a nasty intrigue every single day...and that stupid Stormlord that never left you alone...~
==CVSan25J~A valid candidate list, if still not complete. We investigate it and we need companions from the Realms to accompany us in it...~
==CVIzy25~They need a lockpick urgently, they already confirmed, mama. They need one to cast spells...~
==RTFImo~Izzy, this is the goddess of all magic, forgot? Why should she need a spellcaster?~
==CVIzy25~You needa and needa let me go, PLEASE, this is my home - not my prison!~
==RTFImo~(Sigh) That last is true.~
=~<CHARNAME>, I beg you, please. We cannot hold the girl in the house much longer, she has grown up and needs to see something of the world. Remember how we started out together, will ya?~
=~I will not let her run off with the next weird adventuring crew that passes through town. With you and Sandrah that is different. You will care on our behalf.~
==Henning2~Imoen is right - it will happen sooner or later and to know her in your care would really make things easier - even if your company might be a magnet for danger as well.~
==CVIzy25~It's agreed then, yes and yes, isn't it? Say yes, yes and yes, <CHARNAME>!~
END
++~Yes, yes, and yes.~+Gowith2
++~No, no, and no. You are too young and like your father said, we will surely be target for the utmost foe of the Realms.~+Gowith3

CHAIN
IF~~THEN CVIzy25 Gowith2
~Hurray!!~
==RTFImo~Cleaning the house recently I found a few things I rarely have use for these days myself.~
==CVIzy25~Your famous coat? Oh, bestest of all bestest mamas...I will make you proud of me.~
==Henning2~I gave it to your mother to protect her in her adventuring days. There is no better use for it than by you now, our beloved daughter. Take this ring I had made for her as well.~
==RTFImo~No more tearjerkin' scenes now, all is said and be off.~
==CVIzy25~No one stops Isobel the Magnificent!~DO~GiveItemCreate("imofurc","CVIzzy",1,0,0)GiveItemCreate("sanhenri","CVIzzy",1,0,0)SetGlobal("RTFIzyJoin","GLOBAL",1)JoinParty()~EXIT

CHAIN
IF~~THEN CVIzy25 Gowith3
~You can't do that!~
==RTFImo~You can't do that!~
==Henning2~You can't do that!~
==CVSan25J~You cannot do that. If you do not take care of her then I will. We cannot allow her running off with the next amateur adventurer band and let her get in trouble with them.~
END
++~(Sigh)~ + Gowith4

CHAIN
IF~~THEN CVIzy25 Gowith4
~Oh mama's besta friend, your sooooo goood. No one stops Isobel the Magnificent!~
==RTFImo~Cleaning the house recently I found a few things I rarely have use for these days myself.~
==CVIzy25~Your famous coat? Oh, bestest of all bestest mamas...I will make you proud of me.~
==Henning2~I gave it to your mother to protect her in her adventuring days. There is no better use for it than by you now, our beloved daughter. Take this ring I had made for her as well.~
==RTFImo~No more tearjerkin' scenes now, all is said and be off.~
==CVIzy25~Watcha waitin' for, slowpokes. Adventures await us.~ 
DO~GiveItemCreate("imofurc","CVIzzy",1,0,0)GiveItemCreate("sanhenri","CVIzzy",1,0,0)SetGlobal("RTFIzyJoin","GLOBAL",1)JoinParty()~EXIT