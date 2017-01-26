EXTEND_BOTTOM Keeper 1
IF~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN REPLY~I greet you in the name of love, hope and wisdom.~GOTO RTFEntr
END

APPEND Keeper
IF~~THEN BEGIN RTFEntr
SAY~May you find all three of them here in Candlekeep, <CHARNAME>.~
IF~~THEN DO~
SetGlobal("Criminal","GLOBAL",99)
ClearAllActions()
StartCutScene("Ch6cut01") ~EXIT
END
END

APPEND Read3
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN NoArrn
SAY~Greetings, <CHARNAME>, may you find what you seek at Candlekeep.~
IF~~THEN REPLY~ We are in search of a book concerning Cerameon of Westgate.~ GOTO RTBookN
IF~~THEN REPLY~I would be faster at it if you'd get out of my way, old fool.~EXIT
END

IF~~THEN BEGIN  RTBookN
SAY~You best ask one of the level coordinators for it.~
IF~~THEN EXIT
END
END

APPEND Poghm10
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN Babbl
SAY~You put your left foot in, you take your left foot out, you put your left foot in and you shake it all about... Oh! I, uh, didn't see you there... The wisdom of Oghma manifests itself in, uh, many ways... I'll be on my way, now. ~
IF~~THEN DO~EscapeArea()~EXIT
END
END

APPEND Tethto2
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN NoArrn
SAY~Greetings, <CHARNAME>, may you find what you seek at Candlekeep.~
IF~~THEN REPLY~ We are in search of a book concerning Cerameon of Westgate.~ GOTO RTBookt
IF~~THEN REPLY~I would be faster at it if you'd get out of my way, old fool.~EXIT
END

IF~~THEN BEGIN  RTBookt
SAY~We have it here at this level, that is true.~
IF~~THEN DO~EscapeArea()~EXIT
END
END

APPEND Ulraun
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN NoArrn
SAY~Greetings, <CHARNAME>, may you find what you seek at Candlekeep.~
IF~~THEN REPLY~ We are in search of a book concerning Cerameon of Westgate.~ GOTO RTBooku
IF~~THEN REPLY~I would be faster at it if you'd get out of my way, old fool.~EXIT
END

IF~~THEN BEGIN  RTBooku
SAY~We have it here at this level, that is true.~
IF~~THEN DO~EscapeArea()~EXIT
END
END

APPEND Watch6
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN Nochant
SAY~No chanting of the prophesy anymore. Love and Hope be with you, friends.~
IF~~THEN DO~EscapeArea()~EXIT
END
END

APPEND Chante2
IF WEIGHT #-1~Global("Criminal","GLOBAL",99)~THEN BEGIN NoArr
SAY~Greetings, <CHARNAME>, may you find what you seek at Candlekeep.~
IF~~THEN DO~EscapeArea()~EXIT
END
END

EXTEND_BOTTOM Poghm7 0
IF~Global("SanRTFPlot1","GLOBAL",8)~THEN REPLY~We are in search of a book concerning Cerameon of Westgate.~ GOTO RTBook
END

APPEND  Poghm7
IF~~THEN BEGIN RTBook
SAY~It is a very ancient toom that would be kept at the top level of the library, my friend.~
IF~~THEN EXIT
END
END

BEGIN RTOutWa
IF~ Global("Criminal","GLOBAL",99)~THEN BEGIN Leavecand
SAY~You want to leave us again, <CHARNAME>?~
IF~~THEN REPLY~ Not yet, Watcher?~EXIT
IF~~THEN REPLY~ I finished business for this time, my friend.~DO~ ClearAllActions()
StartCutScene("RTCaOut") ~EXIT
END

BEGIN RTSarev

CHAIN
IF~Global("RTSarAmb","BG2610",1)~THEN RTSarev NewBoss
~My new master will be delighted to learn of your death, my foolish, foolish old friends.~
DO~SetGlobal("RTSarAmb","BG2610",2)RealSetGlobalTimer("RTAmb","BG2610",30)~
==CVSan25J~What did this master promise you to make you pick up your weapon once again to fight <CHARNAME> - and me?~
==RTSarev~The power and the eternal life that Bhaal had promised but forsaken me, the heritage that has truely be mine all the time.~
==CVSan25J~Eternal life? Hm, there may be a price your new master requires for that. Did you take a close look at him to see what that means?~
==RTSarev~Ah, so you have met him already, I should have known that, my knowledgable little darling, yes it will be a power like his that awaits me.~
==CVSan25J~Eternal life as a lich - and you really find that state desireable?~
==RTSarev~It is all I have left to desire. The lifeform, the power, the will and ability to destroy - I found my true nature and the master will give it to me.~
==CVSan25J~Your *master* has never given to anyone what he has promised. You may have eternal existence but no power, Sarevok. You will be Velsharoon's thrall like anyone else who ever chose to serve the Lich-Lord.~
==RTSarev~With the power that <CHARNAME>'s soul will provide me I will be his master once he has served his task.~ DO~Enemy()~
==CVSan25J~You will go down in true ignorance, Sarevok. Your master has some thousands of years of experience to use ambitious mortals like you for his purpose. All of them ended as willing puppets of the undead Archmage of Necromancy.~ EXIT

INTERJECT_COPY_TRANS Winthr2 7 RtWinSeeIzzy
==BIzy25 IF~InParty("CVIzzy")~THEN~Heya, Grandpa Puffguts, how's tricks?~
==Winthr2 IF~InParty("CVIzzy")~THEN~If that ain't the little cuckoo learnin' to fly...So you finally fled the nest and terrorize the Realms jus' like your mama did.~
==BIzy25 IF~InParty("CVIzzy")~THEN~Be sure that I'll make myself a name that will ring as loud as Imoen the Magnificent, I swear and swear.~
==Winthr2 IF~InParty("CVIzzy")~THEN~Definitely - there was never no way to stop a girl whose fav'rite colour was pink. hihi.~
END