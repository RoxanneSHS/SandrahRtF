CHAIN
IF WEIGHT #-12~ GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0)~THEN Botsmith RTF1
~You?? Cespenar almost blown up by you with old home!!!~
==CVSan25J~But the contingency plan worked obviously.~
==Botsmith~Yes, yes, very much thank you - but is not thanks to unfaithful old master, baah.~
==CVSan25J~You must forgive <CHARNAME>, good imp, <PRO_HESHE> did not know that <PRO_HISHER> little pocket plane would cease to exist without Bhaal's fuel.~
==Botsmith~Blah, blah, blah, old master not know but you know - you more god or what?~
==CVSan25J~I know just more about those things that concern magic and energie matters and issues concerning the Weave - I was <CHARNAME>'s counsellor then as I am now, so it was my duty to take care.~
==Botsmith~Hmpf, if so - all is good. New home is good home and new boss is good boss. Also nobody to threaten to blow up new home...~
END
++~So now that the issue has been clarified, Cespenar, can you still provide your services to us?~+ 4
++~Sandrah, can you stop this nonsense PLEASE!!! Get lost imp.~EXIT

APPEND WDWATCH
IF WEIGHT #-1~ GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF006")Global("Watchcheck","RTF006",0)~THEN BEGIN Where
SAY~Where do you think you're going, lads?~
IF~~THEN REPLY~We follow the Hornswamp passage, we have the approval of the High Commander.~GOTO Where1
IF~~THEN REPLY~We came through the Hornswamp passage, we have important information for the High Commander.~GOTO Where1
IF~~THEN REPLY~None of you business, man, we do what you're not able to do.~GOTO Where2
END

IF~~THEN BEGIN Where1
SAY~Good luck, I don't envy you.~
IF~~THEN DO~SetGlobal("Watchcheck","RTF006",1)~EXIT
END

IF~~THEN BEGIN Where2
SAY~Big words like fools normally have on them. Chances are high we won't see you a second time though.~
IF~~THEN DO~SetGlobal("Watchcheck","RTF006",1)~EXIT
END
END

BEGIN RTPorley
IF~True()~THEN BEGIN EMInn1
SAY~Welcome to the East Market Inn in Waterdeep, traveller. Porley is at your service.~
IF~~THEN REPLY~We surely need a rest.~GOTO EMInn2
IF~~THEN REPLY~I need nothing at the moment.~GOTO EMInn3
IF~~THEN REPLY~What's happening around here these days?~GOTO EMInn4
IF~~THEN REPLY~Where can I purchase a bit of *special* wares?~GOTO EMInn5
END

IF~~THEN BEGIN EMInn2
SAY~This is what my house has to offer.~
IF~~THEN DO ~StartStore("RTEMart",LastTalkedToBy())~ EXIT
END

IF~~THEN BEGIN EMInn3
SAY~ Maybe next time. Enjoy your stay.~
IF~~THEN EXIT
END

IF~~THEN BEGIN EMInn4
SAY~ If you want to hear gossip of all kinds just step outside to the market.~
IF~~THEN EXIT
END

IF~~THEN BEGIN EMInn5
SAY~If you ask for *those* wares you will find a shady guy on the market whom I never heard of and would not tell you about...~
=~The real adventurer may have an interest in the Overland Shop near the Eastern Gate. Heard he's got a very special new assistant there who can forge the most curious things.~
IF~~THEN EXIT
END

CHAIN
IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF030") Global("HeadIn","RTF030",0) ~THEN WDWatch Hint7
~Greetings, <CHARNAME>, the leaders are inside. Go straight through the hall and enter the conference room at the other side.~
DO~SetGlobal("HeadIn","RTF030",1) ~
==CVSan25J~Let us do that, <CHARNAME>.~EXIT

BEGIN RTF7Monk
CHAIN 
IF~Global("Morc","RTF007",1)~THEN  RTF7Monk Dorc1
~You have a healer in your company, <PRO_SIRMAAM>, maybe a better one than I am.~
DO~SetGlobal("Morc","RTF007",2)~
==CVSan25J~What is the issue, good priest?~
==RTF7Monk~A wounded man with a wild tale appeared yesterday at the temple. How he made it into town I don't know - he is clan orc.~
=~He said he came from the Stormhorns but had never seen his home.~
==CVSan25J~How is he wounded?~
==RTF7Monk~We were unable to find that out. Let me show him to you.~EXIT

CHAIN
IF~Global("Morc","RTF007",3)~THEN  RTF7Monk Dorc2
~Here he is. I fear the worst...~
DO~SetGlobal("Morc","RTF007",4)~
==CVSan25J~Yes, there is nothing we can do any more, he is dead.~
=~*She examines the corpse carefully.*~
=~Very strange...~
==RTF7Monk~What is it you found?~
==CVSan25J~I wonder how he came to be alive in the first place - and how old he was.~
==RTF7Monk~I do not understand?~
==CVSan25J~There is no blood , orcish or other in his body. And his hands and hair...he could only have been a few weeks old according to their texture.~
==RTF7Monk~Many mysteries, my lady.~
==CVSan25J~His fate seems to be connected with that strange liquid he held onto until his last minute but more I cannot say at the moment.~
==RTF7Monk~We will bury him. Clan orcs are a civilized race.~EXIT

CHAIN
IF~Global("Morc","RTF007",4)~ THEN  RTF7Monk Shop
~May the temple of Tempus aid you with any service, <PRO_SIRMAAM>?~
END
++~Yes, show us what you offer.~+ Shop2
++~Not this time, goodbye.~EXIT

CHAIN
IF~~ THEN  RTF7Monk Shop2
~This is Tempus' offer.~
DO~StartStore("ddtempl1",LastTalkedToBy(Myself)) ~EXIT
