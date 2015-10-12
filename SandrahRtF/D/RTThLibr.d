BEGIN  RTLibLi

IF~Global("RTLiztrap","GLOBAL",3)~THEN BEGIN Blood
SAY~What have you done below? I ssmell blood - my brother's blood!~
IF~~THEN DO~SetGlobal("RTLiztrap","GLOBAL",2)~EXIT
END


IF~Global("RTLiztrap","GLOBAL",1)~THEN BEGIN Notor
SAY~You continue to dissturb uss...~
IF~~THEN DO~SetGlobal("RTLiztrap","GLOBAL",2)~EXIT
END

IF~Global("RTLiztrap","GLOBAL",0)~THEN BEGIN leave
SAY~Sssh, leave me to my studiess.~
IF~~THEN REPLY~Very well.~DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
IF~~THEN REPLY~As you wish.~DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
IF~~THEN REPLY~No reason to get excited. I leave you alone.~DO~SetGlobal("RTLiztrap","GLOBAL",1)~EXIT
END

BEGIN RTLibMa
CHAIN
IF~Global("SpokeLib","RTF058",0)~THEN RTLibMa Book1
~Greetings, may I help you, seekers?~
DO~SetGlobal("SpokeLib","RTF058",1)~
==CVSan25J~We are really, seekers. Greetings, librarian. I'm looking for a history of the Odesseiron family.~
==RTLibMa~Hm...a dangerous request...but, oh, Oghma, the truth must prevail!~
==CVSan25J~Is there a problem, we do not want to endanger you?~
==RTLibMa~You will see yourself in a minute, mylady.~
=~Here is the tome. You may look at it but you cannot take it.~
==CVSan25J~*Sandrah quickly searches through the pages - starting from the last one...~
=~Mmh...I think I see what you mean. <CHARNAME>, the last pages of the book have been totally blackened out with ink. Someone does not want anyone to see the most recent events around the family.~
==RTLibMa~(Sigh) Science and history in Thay are not independent from the red wizards and their politics.~
==CVSan25J~You need not to endanger yourself further, my friend. We understand.~
=~Have you by any chance read in this book before it was manipulated?~
==RTLibMa~Psst. (Mumbles) The last of the family is still alive even if authorities declare him dead and not to be mentioned anymore.~
==CVSan25J~(Whispers) Edwin Odesseiron?~
==RTLibMa~Oghma may bless you - and him.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("SpokeLib","RTF058",1)~THEN RTLibMa Book2
~Please leave me, I cannot be seen with you. Too dangerous...~ EXIT
