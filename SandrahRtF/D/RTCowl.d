BEGIN RTCowl1
BEGIN RTCowl2

CHAIN
IF~Global("RTCowlApp","RTF020",1)~THEN RTCowl1 RTF20Hint
~You are unlicensed! This is an unsanctioned use of magical energy!~
==RTCowl2~No, no, you got it all wrong once again...~
=~That was then - now we have another slogan.~
==RTCowl1~For the Zulkir and the new magic!!~
==RTCowl2~For the rise of the Citadel.~
==CVSan25J~So the rumours were right, <CHARNAME>, the Cowls have found shelter with the Red Wizards...~
==RTCowl2~You will not have chance to spread that rumour further.~
DO~SetGlobal("RTCowlApp","RTF020",2)
CreateCreatureObject("MAGE16C",Myself,0,0,0)
CreateCreatureObject("MAGE18A",Myself,0,0,0)
CreateCreatureObject("MAGE18D",Myself,0,0,0)
Enemy() ActionOverride("RTCowl1",Enemy())~EXIT

CHAIN
IF~~THEN CVSan25J RedButton
~A nice warehouse you have established here, a nice *collection*, Nerkio.~
DO~ SetGlobal("RTFoundIce","GLOBAL",5)~
==CVColle~You cannot stop it, <CHARNAME>, most of it is shipped out already.~
==Corneil~There is no way you can prevent what is coming - you will not leave this place.~
==CVColle~No one will, neither you nor us.~
==CVSan25J~This button? What did you do?~
==Corneil~The self-destruction sequence has started. Try to attack us and we will all been blown to the abyss.~
==CVSan25J~You bluff, cowl, you cannot stop it anymore.~
==CVColle~Bitch...we still can enforce it.~
=~*The collector's hand pushes the button which settles down with a click...~
==CVSan25J~OUT OF HERE - RUN!!!!!~EXIT

CHAIN
IF WEIGHT #-3~Global("RTFoundIce","GLOBAL",8)~ THEN Madeen OutWDGrave
~Is it over, are they...dead?~
DO~SetGlobal("RTFoundIce","GLOBAL",8) SetGlobal("SanRTFPlot1","GLOBAL",7)~
==CVSan25J~If you talk about your former master then the answer is yes. Those fools destroyed themselves in order to destroy all the evidence for their deeds.~
==Madeen~ That is good news, good news...Corneil is my master no more since the cowled wizards had to leave Amn. I am with them no more since that time.~
==CVSan25J~Why are you here then?~
==Madeen~I was to do what you did, in a way. I have persued my former superior and his new friend. They took something from the beloved I lost and I knew for what purpose.~
==CVSan25J~You know about the clones?~
==Madeen~If it's that what these creatures they make are called - golems that look like people you know, not undead - not alive.~
==CVSan25J~What else do you know? Who is behind all of it?~
==Madeen~I don't really know - I left the cowls when they started to get involved with the red robed devils. I fled them and they took revenge on my family for it. That is all I know.~ DO~EscapeArea()~
==CVSan25J~There is nothing we can do here anymore, <CHARNAME>, the caves behind us have collapsed from the explosion. We will find no further evidence here.~
END
++~We should then travel to the Summer Camp to meet the others I propose. Together we should analyse all the facts we have found so far.~EXIT
++~Shauhana and Shar-Teel should be at this Summer Camp by now, we should join them and discuss our further actions.~EXIT

APPEND CVCOLLE
IF WEIGHT #-7~Global("RTFoundIce","GLOBAL",4)~THEN BEGIN Iceblk1
SAY~You really made it to here, your persistence is remarkable. Anyway this is your end - our end...~
IF~~THEN EXTERN CVSan25J RedButton
END
END

APPEND CORNEIL
IF WEIGHT #-7~Global("RTFoundIce","GLOBAL",4)~THEN BEGIN Iceblk2
SAY~You really made it to here, your persistence is remarkable. Anyway this is your end - our end...~
IF~~THEN EXTERN CVSan25J RedButton
END
END