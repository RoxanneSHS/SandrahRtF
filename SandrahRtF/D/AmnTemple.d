APPEND KAYL2

IF WEIGHT #-17~GlobalGT("RTClean","ar0903",0)~ THEN BEGIN News1
SAY~Greetings, <CHARNAME>, Prelate Keldorn is not in town at the moment, he has business up in Waterdeep. You will find Sir Ajantis in charge here at the moment.~
IF~GlobalLT("RTFSharInfo","GLOBAL",1)~THEN REPLY~Prelate Keldorn? I see...I will greet Ajantis for sure while I'm here.~EXIT
IF~GlobalGT("RTFSharInfo","GLOBAL",1)~THEN REPLY~I know, we met the Prelate up there already...I will greet Ajantis for sure while I'm here.~EXIT
IF~~THEN REPLY~Prelate Keldorn - Sir Ajantis...time has moved on and so have people.~EXIT
END
END

BEGIN RTAjan

IF ~Global("RTClean","ar0903",1)~THEN BEGIN News2
SAY~It's been a long time but you have returned to Amn. I am deputy of Prelate Keldorn at the moment, can I do anything for you?~
IF~GlobalGT("RTFSharInfo","GLOBAL",1)~THEN REPLY~We met your prelate at Waterdeep already. We assist him and Shar-Teel in the current problems.~ DO~SetGlobal("RTClean","ar0903",2)~GOTO News4
IF~~THEN REPLY~ We are again on a crusade against evil, Ajantis. Would you like joining us?~DO~SetGlobal("RTClean","ar0903",2)~GOTO News3
IF~~THEN REPLY~Something is going on in the Realms and we are here to investigate it.~DO~SetGlobal("RTClean","ar0903",2)~ GOTO News5
END

IF~~THEN BEGIN News3
SAY~As much as I wish to do that, you see that my duty is here at the moment. The temple requires my strength right here.~
IF~~THEN EXIT
END

IF~~THEN BEGIN News4
SAY~That is good to hear, friends, as much as I wish to join you in that, you see that my duty is here at the moment. The temple requires my strength right here.~
IF~~THEN EXIT
END

IF~~THEN BEGIN News5
SAY~That is good to hear, friends, it may be the same issue that has called our Prelate to Waterdeep. As much as I wish to join you in that, you see that my duty is here at the moment. The temple requires my strength right here.~
IF~~THEN EXIT
END

IF ~Global("RTClean","ar0903",2)~THEN BEGIN News6
SAY~I hope you make progress with your quest.~
IF~~THEN REPLY~ We are again on a crusade against evil, Ajantis. Would you like joining us again?~GOTO News3
IF~~THEN REPLY~ Thanks for asking, goodbye.~ EXIT
IF~~THEN REPLY~ Useless tinhead.~EXIT
END
