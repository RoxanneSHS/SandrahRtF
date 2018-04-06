CHAIN
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVUmo5") !InParty(Myself) NumTimesTalkedTo(0)~  THEN Yasra25P MeetUM1
~<CHARNAME>! Who would have guessed we will see each other again. I have finally found a home here with Divalir.~
==Divalir1~Sandrah's sister worships a goddess we can follow and provides shelter for elves and drow alike. It is the place were hope is reborn every day.~
==CVSan25J~Many of our former companions have found a new home with Qilandrha. I dearly love my sister for what she achieves.~
==Divalir1~Are you coming again the request my beloved wife's services, <CHARNAME>?~
END
++~Fear nothing, I just pay a visit to old friends.~+ MeetUM2
++~Yes, her company was sadly missed. I will return her to you again safely when our quest is done.~+MeetUM3

CHAIN
IF~~THEN Yasra25P MeetUM2
~I will join you should you require me. Divalir will await my return. Come whenever you need me.~
DO~SetGlobal("YasUMReady","LOCALS",1)~EXIT

CHAIN
IF~~THEN Yasra25P MeetUM3
~The time to part for a while has come, Divalir. I will count each day until I return to you.~
DO~SetGlobal("YasraenaJoined","GLOBAL",1) JoinParty()~EXIT

CHAIN
IF WEIGHT #-5~Global("YasUMReady","LOCALS",1) !Global("YasraenaJoined","GLOBAL",1)~ THEN Yasra25P MeetUM4
~You have returned for me, <CHARNAME>?~
END
++~Fear nothing, I just pay a visit to old friends.~+ MeetUM2
++~Yes, your company was sadly missed. Divalir, I will return her to you again safely when our quest is done.~+MeetUM3