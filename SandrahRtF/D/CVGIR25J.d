BEGIN CVGIR25J

IF~IsGabber(Player1)Global("RTVisithedge","GLOBAL",1)~THEN BEGIN Yes1
SAY~Yes?~
IF~ Global("RTGirOrcask","LOCALS",0) ~THEN REPLY~ Did you really feel at home with the orcs up in the Stormhorns?  ~DO~SetGlobal("RTGirOrcask","LOCALS",1)~ GOTO Orcask1  IF~~THEN REPLY~Ah, nothing.~EXIT
END

IF~~THEN BEGIN Orcask1
SAY~I had a real family again - and...the orcs are much different from what you may perceive at first sight once you get to know and understand them.~
IF~~THEN REPLY~Which of their virtues are important for you?~ GOTO Orcask2
IF~~THEN REPLY~Do you think they are better fighters than the southern men?~  GOTO Orcask3
END

IF~~THEN BEGIN Orcask2
SAY~ They set the welfare of their loved ones and their family above all, next comes their loyalty to the Clan and the Queen. They are steadfast and unbending when it comes to these values.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Orcask3
SAY~They may appear bloodthirsty to you but they are not. They are peaceful at heart and do not enjoy war any more than the other races - excluding possibly the drow.~
IF~~THEN EXIT
END
