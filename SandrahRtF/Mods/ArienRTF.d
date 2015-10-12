APPEND MWARN25
IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN AriRTF1
SAY~Good place with Clan, good love with orc man, good meeting <CHARNAME> again.~
=~You is truly you? Want Ariena to smash things to pulp again with you?~
IF~~THEN REPLY~Yes, Ariena, will you please travel with me again?~DO~SetGlobal("Ariena25Joined","LOCALS",1) JoinParty()~EXIT
IF~~THEN REPLY~No, I don't. I am just checking on you to see you don't rack the place.~EXIT
END
END