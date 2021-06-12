CHAIN
IF WEIGHT #-1~GlobalGT("SanBeginRTF","GLOBAL",1) Global("RTFSharInfo","GLOBAL",0)OR(2)Global("SanRTFPlot1","GLOBAL",0) Global("SanRTFPlot1","GLOBAL",1) ~ THEN CVShabab GetStarted
@0
DO~SetGlobal("RTFSharInfo","GLOBAL",1)~
==CVSAN25J@1
==CVShabab@2
== CVShabab IF~GlobalGT("SanSharInt","GLOBAL",40)~THEN@3
== CVShabab IF~GlobalLT("SanSharInt","GLOBAL",40)~THEN@4
== SanKaba @5
== SanGori @6
==CVSAN25J@7
== CVShabab@8DO~SetGlobal("Sharopens","CVElm7",2) EscapeAreaMove("RTF001",618,582,7)~EXIT


CHAIN
IF WEIGHT #-2~ Global("RTFSharInfo","GLOBAL",1) GlobalLT("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab InitRtF1
@9
DO~SetGlobal("SanRTFPlot1","GLOBAL",1) SetGlobal("RTFSharInfo","GLOBAL",2)~
==CVSan25J@10
==Belt@11
==Keldda@12
==Keldo25a @13
==CVSan25J@14
==Keldo25a@15
==CVShabab@16
=@17
==CVSan25J@18
==CVShabab@19
=@20
=@21
==CVSan25J@22
==Keldda@23
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",0)~THEN@24
==Belt IF ~Global("RTFShauInfo","GLOBAL",0)~THEN@25
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",1)~THEN@26
==CVShabab IF ~Global("RTFShauInfo","GLOBAL",1)~THEN@27
==CVSan25J@28
==Keldo25a@29
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",0)~THEN@30
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",1)~THEN@31
END
++@32+ InitRtF2

CHAIN
IF~~THEN CVShabab InitRtF2
@33
==CVSan25J@34
==CVShabab@35
=@36
END
++@37
EXIT

ADD_TRANS_TRIGGER Belt 0
~!AreaCheck("RTF001")~

CHAIN
IF WEIGHT #-2~ Global("RTFSharInfo","GLOBAL",1) Global("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab Labfound1
@9
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFSharInfo","GLOBAL",4)~
==CVSan25J@10
==Belt@11
==Keldda@12
==Keldo25a @13
==CVSan25J@14
==Keldo25a@38
==CVShabab@16
=@17
==CVSan25J@18
==CVShabab@19
=@20
=@21
==CVSan25J@39
=@40
==Keldda@41
==CVSan25J@42
==Belt@43
==CVSan25J@44
==CVShabab@45DO~ActionOverride("Belt",EscapeArea()) ActionOverride("Keldorn",EscapeArea())ActionOverride("CVShabab",EscapeArea())~EXIT

CHAIN
IF WEIGHT #-2~ GlobalGT("RTFSharInfo","GLOBAL",1) Global("SanRTFPlot1","GLOBAL",1) Global("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab Labfound2
@46
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFSharInfo","GLOBAL",4)~
==CVSan25J@47
=@40
==Keldda@41
==CVSan25J@42
==Belt@43
==CVSan25J@44
==CVShabab@45DO~ActionOverride("Belt",EscapeArea()) ActionOverride("Keldorn",EscapeArea())ActionOverride("CVShabab",EscapeArea())~EXIT