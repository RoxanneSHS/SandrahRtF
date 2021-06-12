BEGIN CVLey25J

IF~Global("RTRoute","RTF027",1)~THEN BEGIN Caves1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("RTRoute","RTF027",2)~EXIT
IF~~THEN REPLY@2DO~SetGlobal("RTRoute","RTF027",2)~EXIT
IF~~THEN REPLY@3DO~SetGlobal("RTRoute","RTF027",2)~EXIT
END

IF~Global("Pray","RTF044",1)~THEN BEGIN Caves2
SAY@4
IF~~THEN REPLY@5 GOTO Caves3
IF~~THEN REPLY@6GOTO Caves4
END

IF~~THEN BEGIN Caves3
SAY@7
=@8
=@9
=@10
IF~!PartyHasItem("key05")~ THEN GOTO Caves5
IF~PartyHasItem("key05")~ THEN GOTO Caves6
END

IF~~THEN BEGIN Caves4
SAY@11
=@12
=@9
IF~!PartyHasItem("key05")~ THEN GOTO Caves5
IF~PartyHasItem("key05")~ THEN GOTO Caves6
END

IF~~THEN BEGIN Caves5
SAY@13
IF~~THEN DO~SetGlobal("Pray","RTF044",2)~ EXIT
END

IF~~THEN BEGIN Caves6
SAY@14
IF~~THEN DO~SetGlobal("Pray","RTF044",2)~ EXIT
END

//Chains

CHAIN
IF ~Global("Bhaal77","rtf077",2)~ THEN CVLey25J Bhaal
@15
DO~SetGlobal("Bhaal77","rtf077",3)~
==CVSan25J@16
==CVLey25J@17
==CVSan25J@18
==CVLey25J@19
==CVSan25J@20
==CVLey25J@21
END
++@22EXIT
++@23EXIT


