CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0) AreaCheck("CVRTF8")~THEN Shaorc1 Task
@0
==CVSan25J@1
==Shaorc1@2
==CVSan25J@3
==Shaorc1@4EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedToGT(0) AreaCheck("CVRTF8")~THEN Shaorc1 Hint
@5EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0) AreaCheck("CVRTF8")~THEN CVMinsc RtF1
@6
==CVSan25J@7
==CVMinsc@8DO~MoveToObjectNoInterrupt("CVShauq") ~EXIT


CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedToGT(0) AreaCheck("CVRTF8")~THEN CVMinsc RtF2
@9EXIT

CHAIN
IF~ GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8")OR(2)Global("SanRTFPlot1","GLOBAL",0) Global("SanRTFPlot1","GLOBAL",1) !Global("RTFFoundLab402","GLOBAL",3)Global("RTFShauInfo","GLOBAL",0) ~ THEN CVShauq InitRtF1
@10
DO~SetGlobal("SanRTFPlot1","GLOBAL",1) SetGlobal("RTFShauInfo","GLOBAL",1)~
==CVSan25J@11
==CVShauq@12
==CVSan25J@13
==CVShauq@14
=@15
=@16
==CVSan25J@17
==CVShauq@18
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",0)~THEN@19
==CVShauq IF ~Global("RTFSharInfo","GLOBAL",0)~THEN@20
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",2)~THEN@21
==CVShauq IF ~Global("RTFSharInfo","GLOBAL",2)~ THEN@22
==CVSan25J@23
==CVShauq@24
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",0)~THEN@25
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",2)~THEN@26
END
++@27+ InitRtF2

CHAIN
IF~~THEN CVShauq InitRtF2
@28
==CVSan25J@29
==CVShauq@30
=@31
END
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY@32 + InitRtF3
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY@33 EXTERN CVSan25J TakeGiran
++@34 + InitRtF3
++@35 + InitRtF3

CHAIN
IF~~THEN CVSan25J TakeGiran
@36
==CVShauq@37EXTERN CVShauq InitRtF3

CHAIN
IF~~THEN CVShauq InitRtF3
@38
=@39
==CVSan25J@40
DO~SetGlobal("SanRTFGiranOK","GLOBAL",2)~
==CVShauq@41
==CVSan25J@42
==CVShauq@43
END
++@44 DO~ActionOverride("CVGiran",MoveToObjectNoInterrupt(Player1))~EXIT


CHAIN
IF~ GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8") Global("SanRTFPlot1","GLOBAL",1)Global("RTFFoundLab402","GLOBAL",3) Global("RTFShauInfo","GLOBAL",0)~ THEN CVShauq InitRtF7
@10
DO~SetGlobal("SanRTFPlot1","GLOBAL",2)SetGlobal("RTFShauInfo","GLOBAL",4)~
==CVSan25J@11
==CVShauq@12
==CVSan25J@13
==CVShauq@14
=@15
=@16
==CVSan25J@45
=@46
==CVShauq@47
==CVSan25J@48
==CVShauq@49
==CVSan25J@50
==CVShauq@51
=@31
END
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY@32 + InitRtF3
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY@33 EXTERN CVSan25J TakeGiran
++@34 + InitRtF3
++@35 + InitRtF3

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8")Global("SanRTFPlot1","GLOBAL",1)Global("RTFFoundLab402","GLOBAL",3) Global("RTFShauInfo","GLOBAL",1)~  THEN CVShauq Labfound3
@52
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFShauInfo","GLOBAL",4)~
==CVSan25J@53
=@54
==CVShauq@47
==CVSan25J@48
==CVShauq@49
==CVSan25J@50
==CVShauq@51DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTGoRaven","LOCALS",4)~THEN CVSan25J CampAttack1
@55
DO~SetGlobal("RTGoRaven","LOCALS",5)SetGlobal("SanRTFPlot2","GLOBAL",2)~
==CVOrwarl@56
==CVSan25J@57
==CVOrwarl@58
=@59
==CVSan25J@60
==CVOrwarl@61
==CVSan25J@62
==CVOrwarl@63
==CVOrwarl@64
==CVSan25J@65
=@66
==CVOrwarl@67 DO~EscapeArea()~
==CVSan25J@68
END
++@69DO~AddJournalEntry(@2055,QUEST)~ EXIT
++@70DO~AddJournalEntry(@2055,QUEST)~EXIT


APPEND F_DWSmit
IF WEIGHT #-4~AreaCheck("CVRTF9")NumTimesTalkedTo(0) ~THEN BEGIN Storm1
SAY@71
IF~~THEN REPLY@72EXIT
IF~~THEN REPLY@73DO~StartStore("RTshaust",LastTalkedToBy()) ~EXIT
END

IF WEIGHT #-4~AreaCheck("CVRTF9")NumTimesTalkedToGT(0) ~THEN BEGIN Storm2
SAY@74
IF~~THEN REPLY@72EXIT
IF~~THEN REPLY@73DO~StartStore("RTshaust",LastTalkedToBy()) ~EXIT
END
END



