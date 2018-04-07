BEGIN CVLou25J

IF~Global("Loureed900","LOCALS",1)~ THEN BEGIN Templ1
SAY~A shame to see the money and power spent to crawl before those impertinent power creatures that call themselves *Gods*!~
IF~~THEN REPLY~(Ignore her).~EXIT
IF~~THEN REPLY~You do not worship Eilistraee?~ GOTO Templ2e
IF~~THEN REPLY~You do not worship Lolth?~ GOTO Templ2l
IF~~THEN REPLY~You seem to forget you accompany some of them.~ GOTO Templ2u
END

IF~~THEN BEGIN  Templ2e
SAY~Even if Eilistraee is better than Lolth, a society build on faith is weak. Mortals need no faith to be strong and make Faerun their own.~
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~And what about Lolth?~ DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2l
IF~Global("Loureed900","LOCALS",2)~THEN REPLY~At least not those as strong as you.~EXIT
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~How about those present?~DO~SetGlobal("Loureed900","LOCALS",2)~ GOTO Templ2u
END

IF~~THEN BEGIN  Templ2l
SAY~I despise nothing more than that hateful tyrant. The drow race will never achieve anything if they bleed out themselves for that bitch.~
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~And what about Eilistraee?~ DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2e
IF~Global("Loureed900","LOCALS",2)~THEN REPLY~It seems not all of them are as strong as you.~EXIT
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~How about those present?~DO~SetGlobal("Loureed900","LOCALS",2)~ GOTO Templ2u
END

IF~~THEN BEGIN  Templ2u
SAY~You seem to be different. You hail from the Prime and it is still your world. You and Sandrah obviously care for your former fellow beings - not only for your influence and power. Maybe we can achieve something together.~
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~And what about Lolth?~ DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2l
IF~Global("Loureed900","LOCALS",1)~THEN REPLY~And what about Eilistraee?~ DO~SetGlobal("Loureed900","LOCALS",2)~GOTO Templ2e
IF~Global("Loureed900","LOCALS",2)~THEN REPLY~Do not anticipate all of the mortals are as strong as you.~EXIT
END

IF~Global("RTLouPlot","GLOBAL",9)~THEN BEGIN abduct
SAY~Beware, <CHARNAME>!!~
=~It comes nearer again, that terrible hissing, the signature of Lolth!~
IF~~THEN DO~SetGlobal("RTLouPlot","GLOBAL",10) CreateCreatureObjectDoor("RTLoufav",Myself,0,0,0) CreateCreatureObjectDoor("RTLouspi",Player1,0,0,0) CreateCreatureObjectDoor("RTLouspi",Player2,0,0,0)~EXIT
END

IF~Global("Loureed900","LOCALS",3)~THEN BEGIN BeatSen1
SAY~It is no wonder that you defeated all the other Bhaalspawns and were able to rise to godhood. And maybe it is even a valid choice you made.~
IF~~THEN REPLY~I was never alone, I always had support from comrades who felt like I did.~ GOTO  BeatSen2
IF~~THEN REPLY~This is a strange thing to say for one who hates all gods.~DO~SetGlobal("Loureed900","LOCALS",4) RealSetGlobalTimer("LoureedT","LOCALS",1000)~GOTO  BeatSen2
END

IF~~THEN BEGIN BeatSen2
SAY~You were not only stronger than your siblings - you were also the only one capable to imagine a use of the power outside the path of the Throne of Murder. It is unexpected to see the taint my mother worshipped so much being turned into its opposite.~
=~Even a drow can understand the concept of love and hope.~
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY~Maybe you do not need a goddess at all to find those aspects in your own heart.~ EXIT
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY~Maybe you do not need a god at all to find those aspects in your own heart.~ EXIT
END

CHAIN
IF~Global("RTLouMiss","LOCALS",1) ~ THEN CVLou25J LougodsM
~Gods are useless tyrants, dead gods even more. Dead friends are with us even when departed.~
DO~SetGlobal("RTLouMiss","LOCALS",2)~
==PelligJ~Gods are only dead when their believers desert them. Friends will stay alive as long as we keep their memory and example.~
==CVLou25J~By this logic Mystra's neither dead for you nor for me. I'm not a believer but I count myself among Sandrah's friends. I have not lost hope yet.~
==PelligJ~There is hope in all she left behind for us. First of all she left us a task to do.~
==CVLou25J~Count on me to fulfil this task just like she would have done the same for me.~
==PelligJ~Be assured she will give you back what you give for her now.~EXIT
