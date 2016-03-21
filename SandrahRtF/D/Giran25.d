BEGIN Giran25

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",0) ~THEN Giran25 Greet1
~ <CHARNAME>, you have returned in the hour of our need, a true friend. And Sandrah, you remember me still?~
DO~SetGlobal("SanRTFGiranOK","GLOBAL",1)~
==CVSan25J~The courageous little Giran once, now a broad shouldered fighter it seems, standing up to his father Minsc.~
==Giran25~ I hope it's not just sweet words and you are actually here to help. And...~
==CVSan25J~And...?~
==Giran25~I hope your remark about my fighter appearance was meant in earnest. (Blushes) I have gained already some reputation with the berserkers of Hai 'Ulthak.~
==CVSan25J~I see where this leads, my brave boy. It is time for your djahemma. With the Neutral Zone protecting the Clan lands it is also a kind of barrier for the adventurer to proof himself.~
==Giran25~Your reputation is well earned, wise Sandrah. But with the prospect of companions like you and <CHARNAME> my parents cannot deny it to me anymore.~
END
++~We will see what can be done, once we talked to your mother.~EXIT


CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",2)~THEN Giran25 Greet2
~You have talked to mother I heard. Will you help us?~
DO~SetGlobal("SanRTFGiranOK","GLOBAL",3)~
==CVSan25J~We will investigate the matter and make up our mind according to our findings.~
==Giran25~ A valid decision...have you considered that a good ranger with thorough knowledge of the land may enrich your company?~
END
++~You are indeed welcome to come with us, Giran~ +Join
++~We cannot take you this time, maybe later.~EXIT
++~Sorry, but our ranks are filled already this time.~EXIT
++~The vengeance of a goddess looms over my head if I'd reject you.~ +Join

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",3)~ THEN Giran25 Greet3
~Yes?~
END
++~You are welcome to come with us, Giran~ +Join
++~We cannot take you this time, maybe later.~EXIT
++~Sorry, but our ranks are filled already this time.~EXIT
++~The vengeance of a goddess looms over my head if I'd reject you this time.~ +Join

CHAIN
IF~~ THEN Giran25 Join
~My djahemma has thus begun. Thank you, <CHARNAME>.~
==CVShauq IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN~My son, my heart, I will not let you go without a gift to protect you and bring you back unharmed. May your foe fall before you.~
==Giran25 IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN~Your famous bow, Mother? But...you may need it...~
==CVShauq IF~AreaChecK("CVRTF8") Global("Gavebow","LOCALS",0)~THEN~I have not used it except to hunt deer now for ten summers. It belongs in the hands of a ranger who fights for the Clan. Now move, boy, there are deeds to be done.~
==Giran25~Let's go.~ DO~SetGlobal("SanRTFGiranOK","GLOBAL",4) JoinParty()~ EXIT