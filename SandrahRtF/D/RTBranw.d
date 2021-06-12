BEGIN RTBranw

IF~Global("RTFoundBran","GLOBAL",1)~THEN BEGIN Auril5
SAY@0
IF~~THEN REPLY@1 DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
IF~~THEN REPLY@2 DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
IF~~THEN REPLY@3EXIT
END

IF~~THEN BEGIN Auril2
SAY@4
IF~~THEN DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
END

CHAIN
IF~ AreaCheck("RTF095") GlobalGT("SanRTFPlot3","GLOBAL",3)~ THEN RTBranw Auril3
@5
DO~SetGlobal("RTFoundBran","GLOBAL",1)~
==CVSan25J@6
==RTBranw@7
==CVSan25J@8
==RTBranw@9
==CVSan25J@10
==RTBranw@11
==CVSan25J@12
==RTBranw@13
=@14
END
++@15 + Auril2
++@16+ Auril2

CHAIN
IF~AreaCheck("RTF095")Global("RTFoundBran","GLOBAL",0)~THEN RTBranw Auril1
@5
DO~SetGlobal("RTFoundBran","GLOBAL",1)~
==CVSan25J@6
==RTBranw@7
==CVSan25J@8
==RTBranw@9
==CVSan25J@10
==RTBranw@11
==CVSan25J@12
==RTBranw@13
==CVSan25J@17
==RTBranw@18
==CVSan25J@19
==RTBranw@20
==CVSan25J@21
==RTBranw@22
==CVSan25J@23
==RTBranw@24 DO~AddJournalEntry(@2069,QUEST)~
=@14
END
++@15 + Auril2
++@16+ Auril2



