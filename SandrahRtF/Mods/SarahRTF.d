APPEND WENRIC

IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1) Global("Hint1","LOCALS",0) ~THEN BEGIN Hint1
SAY~Things have much improved since we last saw each other.~
=~Our young human ranger, Sarah, holds them dangers at bay...even if ev'ry day she claims how she yearns for them adventures again.~
IF~~THEN REPLY~Sarah, is here! Let's go inside, I need to see her!~DO~SetGlobal("Hint1","LOCALS",1)~EXIT
IF~~THEN REPLY~Don't worry, we'll sneak away before she notices - otherwise she surely wants to come with us once again.~DO~SetGlobal("Hint1","LOCALS",1)~EXIT
END
END

APPEND K#Sara25
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1) Global("K#SarahHere","BG0401",1)~THEN BEGIN RTFStart
SAY~What in the...? <CHARNAME> ? What are you doing here?~
IF~~THEN REPLY~Good to see you too, Sarah. A lot is happening right now, and I could really use your help.~ DO~SetGlobal("K#SarahHere","BG0401",2)~GOTO RTFStart2
IF~~THEN REPLY~I heard you're here from Wenric outside. Just took the chance to say hello. - So, hello...see you next time.~ DO~SetGlobal("K#SarahHere","BG0401",2)~ EXIT
END

IF~~THEN BEGIN RTFStart2
SAY~These days with my task for the farmers up here I wouldn't really feel up to getting myself into something so adventurous again. But...you're my friend, and I'm sure you'd help me if I was in need.~
IF~~THEN REPLY~Of course, Sarah. I wouldn't have it any other way. I cannot disturb your new life again. Farewell.~ EXIT
IF~~THEN REPLY~Yes, well...I just really need the help if you don't mind.~ GOTO Join1
END

IF~~THEN BEGIN Join1
SAY~Great. I've been working on my archery too, so hopefully I'll be of some use to you.~
IF~~THEN DO~SetGlobal("K#SarahJoined","LOCALS",1) JoinParty()~EXIT
END
END

APPEND K#Sarah
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1) Global("K#SarahHere","BG0401",1)~THEN BEGIN RTFStartn
SAY~What in the...? <CHARNAME> ? What are you doing here?~
IF~~THEN REPLY~Good to see you too, Sarah. A lot is happening right now, and I could really use your help.~ DO~SetGlobal("K#SarahHere","BG0401",2)~GOTO RTFStartn2
IF~~THEN REPLY~I heard you're here from Wenric outside. Just took the chance to say hello. - So, hello...see you next time.~ DO~SetGlobal("K#SarahHere","BG0401",2)~ EXIT
END

IF~~THEN BEGIN RTFStartn2
SAY~These days with my task for the farmers up here I wouldn't really feel up to getting myself into something so adventurous again. But...you're my friend, and I'm sure you'd help me if I was in need.~
IF~~THEN REPLY~Of course, Sarah. I wouldn't have it any other way. I cannot disturb your new life again. Farewell.~ EXIT
IF~~THEN REPLY~Yes, well...I just really need the help if you don't mind.~ GOTO Joinn1
END

IF~~THEN BEGIN Joinn1
SAY~Great. I've been working on my archery too, so hopefully I'll be of some use to you.~
IF~~THEN DO~SetGlobal("K#SarahJoined","LOCALS",1) JoinParty()~EXIT
END
END