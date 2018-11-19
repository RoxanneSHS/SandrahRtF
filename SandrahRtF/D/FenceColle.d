CHAIN
IF WEIGHT #-3 ~Global("SanRTFColl","GLOBAL",1) ~THEN Sethle CollHint1
~ You...you again...I have done nothing to endure your presence once more.~
==CVSan25J~We are looking for very special artifacts today, things that the previous owner has no need for any more due to his current condition. ~
DO~SetGlobal("SanRTFPlot1","GLOBAL",6) SetGlobal("SanRTFColl","GLOBAL",2) ~
==Sethle~What would that condition be like, lady?~
==CVSan25J~The person would be dead.~
==Sethle~I will not do these things again, I swore it to Kelemvor, I am glad the red robed devil is not coming any more.~
==CVSan25J~The Collector has not returned for some time, you mean?~
==Sethle~I hope he will stay in the north forever.~
==CVSan25J~The north? You mean Waterdeep?~
==Sethle~Probably...what do I know - what do I care.~DO~EscapeArea()~EXIT

EXTEND_BOTTOM  BmThief 0
IF ~Global("SanRTFColl","GLOBAL",1)~THEN REPLY~ I am looking for very special artefacts today, things that the previous owner has no need for anymore due to his current condition. ~GOTO CollHint1
END

EXTEND_BOTTOM  BmThief 4
IF ~Global("SanRTFColl","GLOBAL",1)~THEN REPLY~ I am looking for very special artefacts today, things that the previous owner has no need for anymore due to his current condition.  ~GOTO CollHint1
END

APPEND  BmThief
IF~~THEN BEGIN CollHint1
SAY~What would that condition be like, my friend?~
IF~AreaCheck("RTF006") ~THEN REPLY~The person would be dead.~GOTO CollHint3
IF~!AreaCheck("RTF006") ~THEN REPLY~The person would be dead.~GOTO CollHint2
END

IF~~THEN BEGIN CollHint2
SAY~I run a business, my friend, not a graveyard. You probably need to look there.~
IF~~THEN REPLY~I will do that~EXIT
END

IF~~THEN BEGIN CollHint3
SAY~Uh, you start to get as scary as that red robed dealer guy.~
IF~~THEN REPLY~You mean the Collector?~GOTO CollHint4
END

IF~~THEN BEGIN CollHint4
SAY~I send him to the graveyard same as I would advise to you. There's a lot of madmen running around free these days.~
IF~~THEN DO~SetGlobal("SanRTFPlot1","GLOBAL",6) SetGlobal("SanRTFColl","GLOBAL",2) EscapeArea()~EXIT
END
END