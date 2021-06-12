CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1)Global("ShauMes","RTF002",0) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3)~THEN Shaorc1 Hint1
@0
DO~SetGlobal("ShauMes","RTF002",1)~
==CVSan25J@1
==Shaorc1@2
==CVSan25J@3
==Shaorc1@4
==CVSan25J@5
==Shaorc1@6
==CVSan25J@7
==Shaorc1@8EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3) ~THEN Shaorc3 Hint2
@9
==CVSan25J@10EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF030") Global("HeadIn","RTF030",0) ~THEN Shaorc3 Hint7
@11
DO~SetGlobal("HeadIn","RTF030",1) ~
==CVSan25J@12EXIT

CHAIN
IF~Global("SanRTFPlot2","GLOBAL",2) AreaCheck("RTF030")  ~THEN Shaorc3 HintF
@13
==CVSan25J@12EXIT

CHAIN
IF~Global("SanRTFPlot2","GLOBAL",2) AreaCheck("RTF030")  ~THEN WDWatch Hintg
@14
==CVSan25J@12EXIT

CHAIN
IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3) ~THEN Shaorc7 Hint3
@15EXIT

CHAIN
IF~Global("ShauMes","RTF002",2) ~THEN CVSan25J Orchint002
@16
DO~SetGlobal("ShauMes","RTF002",3) ~
=@17
END
++@18EXIT
++@19EXIT


BEGIN RTDuefi
BEGIN RTDuemin

CHAIN
IF~Global("Duerg","RTF003",2)~THEN CVSan25J Miners
@20
DO~SetGlobal("Duerg","RTF003",3)~
==RTDuefi@21
==RTDuemin@22
==CVSan25J@23
==RTDuefi@24DO~Attack("CVSandr")~
==CVSan25J@25
==RTDuemin@26DO~Attack(Player1)~EXIT

CHAIN
IF~Global("Duerg","RTF003",4)~THEN CVSan25J Scouts
@27
DO~SetGlobal("Duerg","RTF003",5)~
END
++@28+ Scouts2

CHAIN
IF~~THEN CVSan25J Scouts2
@29
==CVGIR25J IF~InParty("CVGiran")~THEN@30
==CVSan25J @31EXIT

APPEND SHAORC6
IF~GlobalGT("SanBeginRTF","GLOBAL",1) GlobalLT("SanRTFPlot1","GLOBAL",2)~ THEN BEGIN palace
SAY@32
IF~~THEN REPLY@33GOTO palace2
END

IF~~THEN BEGIN  palace2
SAY@34
IF~~THEN REPLY@35EXIT
END
END