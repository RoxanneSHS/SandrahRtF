BEGIN CVLey25J

IF~Global("RTRoute","RTF027",1)~THEN BEGIN Caves1
SAY~Do not follow this marker, it is another bandit trap. The true path leads through the tunnel and then northbound, <CHARNAME>.~
IF~~THEN REPLY~Yes, ma'am.~DO~SetGlobal("RTRoute","RTF027",2)~EXIT
IF~~THEN REPLY~You are a very valuable member of our party, my little nun, thank you.~DO~SetGlobal("RTRoute","RTF027",2)~EXIT
IF~~THEN REPLY~I do not regret to have taken you along, Leyala.~DO~SetGlobal("RTRoute","RTF027",2)~EXIT
END

IF~Global("Pray","RTF044",1)~THEN BEGIN Caves2
SAY~*Leyala has got down on her knees facing the nearby fountain. Her eyes are closed as if in prayer or meditation.*~
IF~~THEN REPLY~*Stand aside and let her finish her exercise.*~ GOTO Caves3
IF~~THEN REPLY~Ehem, we have no time for such things down here, little one.~GOTO Caves4
END

IF~~THEN BEGIN Caves3
SAY~*She finishes quickly and rises again*.~
=~This place is the mourner's fountain, <CHARNAME>, and although I'm not really a mourner it is the place for me to recall for an instant the ones I have lost, my parents and my grandmother who raised me before I joined the Waterdeep temple.~
=~It gives me strength and confidence for what lies ahead.~
=~Thank you for your patience, your respect means much to me. *She gives you one of her heart-melting smiles as reward.*~
IF~!PartyHasItem("key05")~ THEN GOTO Caves5
IF~PartyHasItem("key05")~ THEN GOTO Caves6
END

IF~~THEN BEGIN Caves4
SAY~*She finishes quickly and rises again*. ~
=~This place is the mourner's fountain, <CHARNAME>, and although I'm not really a mourner it is the place for me to recall for an instant the ones I have lost, my parent and my grandmother who raised me before I joined the Waterdeep temple.~
=~It gives me strength and confidence for what lies ahead.~
IF~!PartyHasItem("key05")~ THEN GOTO Caves5
IF~PartyHasItem("key05")~ THEN GOTO Caves6
END

IF~~THEN BEGIN Caves5
SAY~The descending stairs are here behind the fountain but we need the sun key Iylos mentioned to see through it.~
IF~~THEN DO~SetGlobal("Pray","RTF044",2)~ EXIT
END

IF~~THEN BEGIN Caves6
SAY~The descending stairs are here behind the fountain and the sun key will help us to see through it.~
IF~~THEN DO~SetGlobal("Pray","RTF044",2)~ EXIT
END

//Chains

CHAIN
IF ~Global("Bhaal77","rtf077",2)~ THEN CVLey25J Bhaal
~This might have been your temple, <CHARNAME>, and I am glad it is not.~
DO~SetGlobal("Bhaal77","rtf077",3)~
==CVSan25J~A temple of Love and Hope in Thay really would be change indeed.~
==CVLey25J~Even in this land it must be in the hearts of the people, even if it is not obvious and not visible in a temple.~
==CVSan25J~Who knows what comes out of this adventure...~
==CVLey25J~What about Mystra's temples around here?~
==CVSan25J~(Laughs harshly) At this time Mystra is probably the most hated deity in Thay and especially by the red wizards. Followers are part of the underground organisation here.~
==CVLey25J~I dearly hope for a change then.~
END
++~You are a true disciple of Hope and I share it with you just as Sandrah will support it. Let's go to work for it.~EXIT
++~We are in a struggle, almost a war. Such a thunderstorm often clears the air and opens the chances for re-building. Let's do the first step now.~EXIT


