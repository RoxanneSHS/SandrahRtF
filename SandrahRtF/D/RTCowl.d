BEGIN RTCowl1
BEGIN RTCowl2

CHAIN
IF~Global("RTCowlApp","RTF020",1)~THEN RTCowl1 RTF20Hint
@0
==RTCowl2@1
=@2
==RTCowl1@3
==RTCowl2@4
==CVSan25J@5
==RTCowl2@6
DO~SetGlobal("RTCowlApp","RTF020",2)
CreateCreatureObject("MAGE16C",Myself,0,0,0)
CreateCreatureObject("MAGE18A",Myself,0,0,0)
CreateCreatureObject("MAGE18D",Myself,0,0,0)
Enemy() ActionOverride("RTCowl1",Enemy())~EXIT

CHAIN
IF~~THEN CVSan25J RedButton
@7
DO~ SetGlobal("RTFoundIce","GLOBAL",5)~
==CVColle@8
==Corneil@9
==CVColle@10
==CVSan25J@11
==Corneil@12
==CVSan25J@13
==CVColle@14
=@15
==CVSan25J@16EXIT

CHAIN
IF WEIGHT #-3~Global("RTFoundIce","GLOBAL",8)~ THEN Madeen OutWDGrave
@17
DO~SetGlobal("RTFoundIce","GLOBAL",8) SetGlobal("SanRTFPlot1","GLOBAL",7)EraseJournalEntry(@2044) EraseJournalEntry(@2049) EraseJournalEntry(@2050)~
==CVSan25J@18
==Madeen@19
==CVSan25J@20
==Madeen@21
==CVSan25J@22
==Madeen@23
==CVSan25J@24
==Madeen@25 DO~EscapeArea()~
==CVSan25J@26
END
++@27DO~AddJournalEntry(@2053,QUEST)~EXIT
++@28DO~AddJournalEntry(@2053,QUEST)~EXIT

APPEND CVCOLLE
IF WEIGHT #-7~Global("RTFoundIce","GLOBAL",4)~THEN BEGIN Iceblk1
SAY@29
IF~~THEN EXTERN CVSan25J RedButton
END
END

APPEND CORNEIL
IF WEIGHT #-7~Global("RTFoundIce","GLOBAL",4)~THEN BEGIN Iceblk2
SAY@29
IF~~THEN EXTERN CVSan25J RedButton
END
END