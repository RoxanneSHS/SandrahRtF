CHAIN
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVUmo5") !InParty(Myself) NumTimesTalkedTo(0)~  THEN Yasra25P MeetUM1
@0
==Divalir1@1
==CVSan25J@2
==Divalir1@3
END
++@4+ MeetUM2
++@5+MeetUM3

CHAIN
IF~~THEN Yasra25P MeetUM2
@6
DO~SetGlobal("YasUMReady","LOCALS",1)~EXIT

CHAIN
IF~~THEN Yasra25P MeetUM3
@7
DO~SetGlobal("YasraenaJoined","GLOBAL",1) JoinParty()~EXIT

CHAIN
IF WEIGHT #-5~Global("YasUMReady","LOCALS",1) !Global("YasraenaJoined","GLOBAL",1)~ THEN Yasra25P MeetUM4
@8
END
++@4+ MeetUM2
++@9+MeetUM3