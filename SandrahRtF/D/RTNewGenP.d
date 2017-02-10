BEGIN CVLey25P
BEGIN CVGir25P
BEGIN CVIzy25P
BEGIN RTMeliP
BEGIN CVLou25P

//Melicamp parting
CHAIN
IF~Global("MeliJoin","LOCALS",1)~ THEN RTMeliP GoM
~(Sigh) I had hoped to improve my skills while travelling with you. Well, I still have to learn. I will humbly ask my old Master Thalantyr to give me another chance.~
==RTMeliP IF~InParty("Leyala")~THEN~*He gives Leyala a certain smile.* Take good care, my dear.~
==CVLey25J IF~InParty("Leyala")~THEN~Take good care, Melicamp.~
==RTMeliP~*He looks at you expectantly.*~
END
++~Oops, my mistake, Melicamp, stay with us please.~DO~JoinParty() ~EXIT
++~You can improve until we return.~+GoMH

CHAIN
IF~~THEN RTMeliP GoMH
~I will travel to the High Hedge now.~DO~ SetGlobal("MeliJoin","LOCALS",0) LeaveParty() EscapeAreaMove("BG3202",180,329,0)~
EXIT

CHAIN
IF~Global("MeliJoin","LOCALS",0)~ THEN RTMeliP RejoinM
~Greetings, once again. I have much improved my skills - just in case you may need the help of a sorcerer in your party.~
END
++~This is why I came here, Melicamp. Welcome back.~DO~SetGlobal("MeliJoin","LOCALS",1)
JoinParty() ~EXIT
++~I cannot drag an apprentice with me, Melicamp, sorry. Maybe another time.~EXIT

//Isobel parting
CHAIN
IF~Global("RTFIzyJoin","GLOBAL",1)~THEN CVIzy25P GoI
~You will be lost and more lost without ol' Izzy, I can tell you but you will learn soon yaself. I will have NO problem to make it back to Beregost.~
==CVGir25J IF~InParty("CVGiran")~THEN~If <CHARNAME> will not find his way back to you...hm, I certainly will as soon as I fullfilled my oath to finish this quest.~
==CVIzy25P IF~InParty("CVGiran")~THEN~I'll count the days, orc prince boy.~
END
++~It will be just for a small while, Izzy.~ + GoIR
++~Oops, I didn't mean to do that, stay with is.~DO~ SetGlobal("RTFIzyJoin","GLOBAL",1) JoinParty() ~EXIT

CHAIN
IF~~THEN CVIzy25P GoIR
~See ya.~
DO~SetGlobal("RTFIzyJoin","GLOBAL",0) LeaveParty() EscapeAreaMove("BG3320",466,341,0)~ EXIT

CHAIN
IF~Global("RTFIzyJoin","GLOBAL",0)~THEN CVIzy25P RejoinI
~Looka who's there again! Wanna let me have some more fun and fun with y'all, <CHARNAME>?~
END
++~I can hardly do without your skills and such, Izzy.~DO~ SetGlobal("RTFIzyJoin","GLOBAL",1) JoinParty() ~EXIT
++~I just wanted to check you arrived here well. Good to know where to find you.~EXIT

//Leyala parting
CHAIN
IF~Global("CVLEYJoin","GLOBAL",2)~THEN CVLey25P GoL
~Love will remain in my heart - hope will grow daily that you return to seek my company once more.~
==CVLey25P IF~InParty("RTMeli")~THEN~*She gives Melicamp a certain smile.* Take good care, my dear.~
==RTMeli IF~InParty("RTMeli")~THEN~Take good care, Leyala.~
END
++~It is only temporary, my dear nun.~+ GolWD
++~Stay with us, Leyala, this was an error.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) ActionOverride("Leyala",JoinParty()) ~EXIT

CHAIN
IF~~THEN CVLey25P GolWD
~I will travel to the Waterdeep temple now.~DO~ SetGlobal("CVLEYJoin","GLOBAL",1) LeaveParty() EscapeAreaMove("CVElm2",1596,1400,5)~
EXIT

CHAIN
IF~Global("CVLEYJoin","GLOBAL",1) Global("SanRomPath","GLOBAL",1)~THEN  CVLey25P RejoinLf
~Have you returned to make use of your servant this time, my beloved God?~
END
++~Not this time, Leyala.~EXIT
++~Come with me, my faithful nun.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~EXIT

CHAIN
IF~Global("CVLEYJoin","GLOBAL",1) Global("SanRomPath","GLOBAL",2)~THEN  CVLey25P RejoinLf
~Have you returned to make use of your servant this time, my beloved Goddess?~
END
++~Not this time, Leyala.~EXIT
++~Come with me, my faithful nun.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~EXIT

//Giran Parting
CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",4)~THEN CVGir25P GoG
~My djahemma is not yet finished. I will return to the Stormhorns to look for further tasks.~
==CVIzy25J IF~InParty("CVIzzy")~THEN~If nasty <CHARNAME> will not find his way back to ya...hm, I swear and swear that I certainly will as soon as I fullfilled my bloody oath to finish this quest.~
==CVGir25P IF~InParty("CVizzy")~THEN~I'll count the days, my red haired hamster.~
END
++~It is only temporary, my dear Giran.~+ GoGSH
++~Stay with us, Giran, this was an error.~DO~SetGlobal("SanRTFGiranOK","GLOBAL",4)JoinParty() ~EXIT

CHAIN
IF~~THEN CVGir25P GoGSH
~Much success for your quest.~DO~SetGlobal("SanRTFGiranOK","GLOBAL",7) LeaveParty() EscapeAreaMove("CVRTF8",1564,1443,3)~ EXIT

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",7)~THEN CVGir25P RejoinG
~I am ready to join forces with you again, <CHARNAME>.~
END
++~Yes, welcome back, Giran.~ DO~SetGlobal("SanRTFGiranOK","GLOBAL",4)JoinParty() ~EXIT
++~Not yet, I will come for you later.~EXIT

// L'Urieet Parting

CHAIN
IF~Global("Loureedjoined","GLOBAL",9)~THEN CVLou25P UDleave
~I will stay here.~ EXIT

CHAIN
IF~Global("Loureedjoined","GLOBAL",1)~THEN CVLou25P GoUD
~It was my mistake to count on the loyalty of a god, any god. I have to blame only myself for being kicked out like that.~
==CVSan25J~Where do you plan to go to?~
==CVLou25P~Probably back to Qilandrha's place but maybe not directly. Maybe you care, Sandrah, but <CHARNAME> does not.~
END
++~Oops, I did not mean it, stay with us.~DO~SetGlobal("Loureedjoined","GLOBAL",1)JoinParty() ~EXIT
++~It will only be for a short while, my dear.~+ GoUDR

CHAIN
IF~~THEN  CVLou25P GoUDR
~If you say so.~
DO~SetGlobal("Loureedjoined","GLOBAL",4) LeaveParty() EscapeAreaMove("CVUMO5",1772,1363,3)~ EXIT

CHAIN
IF~ Global("Loureedjoined","GLOBAL",4)~THEN CVLou25P RejoinUD
~Yes?~
END
++~Come and join us again, L'Urieet.~ DO~SetGlobal("Loureedjoined","GLOBAL",1)JoinParty() ~EXIT
++~I hope all is well with you, I will come for you later.~EXIT