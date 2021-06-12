BEGIN RTLordAO
BEGIN RTPhaer
BEGIN RTRedWil
BEGIN RTLichle

IF~NumTimesTalkedTo(0)~THEN BEGIN Why
SAY@0 
IF~~THEN DO~Enemy()~ EXIT
END

BEGIN RTCitMec
IF~Global("Drilling","RTF170",6)~THEN BEGIN GetHome
SAY@1
IF~~THEN DO~EscapeArea()~EXIT
END

IF~NumTimesTalkedTo(0)~THEN BEGIN First
SAY@2
IF~~THEN EXTERN CVSan25J Mecha1
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Second
SAY@3
IF~PartyHasItem("RTCitKey")Global("IamFree","LOCALS",0)~THEN REPLY@4DO~SetGlobal("IamFree","LOCALS",1)~GOTO FoundKey
IF~!PartyHasItem("RTCitKey")Global("IamFree","LOCALS",0)~THEN REPLY@5EXIT
IF~Global("IamFree","LOCALS",1)PartyHasItem("RTCitBo")OR(2)GlobalLT("Drilling","RTF170",2)Global("Hadlfit","RTF170",0)~THEN REPLY@6 GOTO FoundBook
IF~Global("IamFree","LOCALS",1)Global("Hadlfit","RTF170",0) PartyHasItem("Misc92")~THEN REPLY@7GOTO FoundHandl
IF~Global("IamFree","LOCALS",1)Global("Hadlfit","RTF170",1)~THEN REPLY@8GOTO FitHandl
IF~Global("IamFree","LOCALS",1)PartyHasItem("Misc7z")GlobalLT("Drilling","RTF170",2)~THEN REPLY@9GOTO FoundCoal
IF~Global("IamFree","LOCALS",1)~THEN REPLY@5EXIT
IF~Global("IamFree","LOCALS",1)PartyHasItem("RTCitBo")Global("Drilling","RTF170",2)Global("Hadlfit","RTF170",2)~THEN REPLY@10DO~SetGlobal("Drilling","RTF170",3)~GOTO MechReady
IF~Global("Drilling","RTF170",3)~THEN REPLY@11 GOTO MechReady
END

IF~~THEN BEGIN MechReady
SAY@12
IF~~THEN REPLY@13DO~TakePartyItem("RTCitBo")~GOTO MechReady2
IF~~THEN REPLY@14EXIT
END

IF~~THEN BEGIN MechReady2
SAY@15
=@16
IF~~THEN DO~SetGlobal("Drilling","RTF170",4)~EXIT
END


IF~~THEN BEGIN FoundKey
SAY@17
IF~~THEN DO~TakePartyItem("RTCitKey")~EXTERN CVSan25J Mecha2
END

IF~~THEN BEGIN FoundBook
SAY@18
IF~~THEN EXIT
END

IF~~THEN BEGIN FoundHandl
SAY@19
IF~~THEN EXIT
END

IF~~THEN BEGIN FitHandl
SAY@20
IF~~THEN DO~SetGlobal("Hadlfit","RTF170",2)~EXIT
END

IF~~THEN BEGIN FoundCoal
SAY@21
IF~~THEN EXIT
END

CHAIN
IF WEIGHT #-3~AreaCheck("RTF071") Global("SharDes","RTF071",0)~THEN CVSharg BezDes1
@22
=@23
DO~SetGlobal("SharDes","RTF071",1)~
==CVSan25J@24
=@25
==CVSharg@26
==CVSan25J@27
==CVSharg@28
==CVSan25J@29
==CVSharg@30
==CVSan25J@31
==CVSharg@32EXIT

CHAIN
IF~Global("SharDes","RTF071",2)~THEN RTLordAO SharInter1
@33
DO~SetGlobal("SharDes","RTF071",3) SetGlobal("SanRTFPlot4","GLOBAL",8)~
==CVSan25J@34
=@35
==RTLordAO@36
=@37
==CVSharg@38
==RTLordAO@39
=@40
==CVSan25J@41
==RTLordAO@42
==CVSan25J@43
==RTLordAO@44
==CVSan25J@45
==RTLordAO@46
==CVSan25J@47
==CVSharg@48
==RTLordAO@49
=@50
=@51
=@52
==CVSan25J@53DO~EraseJournalEntry(@1943)~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",15)~THEN CVSzas InPrison1
@54
DO~ SetGlobal("CitEntpl","GLOBAL",16)~
==CVSan25J@55
==CVSzas@56
==RTSamas@57
==CVSzas@58
==CVSan25J@59
==RTSamas@60
==CVSzas@61
==CVSan25J@62
==RTSamas@63
==CVSzas@64
==CVSan25J@65
==CVSzas@66
=@67
=@68
==CVSan25J@69
==CVSzas@70
DO~StartCutsceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","CVSzass")
Wait(2)
CreateVisualEffectObject("sppolymp","RTSamas")
CreateVisualEffectObject("spportal","RTSamas")
CreateVisualEffect("raiser",[1546.831])
Wait(2)
CreateVisualEffectObject("SPDEATH3","RTSamas")
Wait(2)
ActionOverride("RTSamas",DestroySelf())
Wait(2)
EndCutsceneMode()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",16)~THEN CVSzas InPrison2
@71
DO~ SetGlobal("CitEntpl","GLOBAL",17) SetGlobal("SanRTFPlot5","GLOBAL",4)~
==CVSan25J@72
==CVSzas@73
==CVSan25J@74
==CVSzas@75
==CVSan25J@76
==CVSzas@77
==CVSan25J@78
==CVSzas@79
=@80
==CVSan25J@81
==CVSzas@82
==CVSan25J@83
==CVSzas@84
==CVSan25J@85
==CVSzas@86DO~AddJournalEntry(@2091,QUEST)~EXIT

CHAIN
IF~AreaCheck("RTF172") See("CVSandr") Range("CVSandr",25)!Allegiance(Myself,ENEMY)~THEN CVCyr01 Citadl1
@87
DO~Enemy()RealSetGlobalTimer("Clonetime","RTF172",350)~EXIT

CHAIN
IF~Global("CyrGetMid","GLOBAL",1)~ THEN CVCyr01 Citadl1
@88
DO~SetGlobal("CyrGetMid","GLOBAL",2) SetGlobal("SanRTFPlot5","GLOBAL",6)~
==CVSan25J@89
==CVSzas@90DO~Enemy() SetGlobal("SzassFight","Global",1) RealSetGlobalTimer("Reinforce","RTF172",240)~
==CVCyr01@91
==CVCyr01@92
==CVSan25J@93
==CVCyr01@94
DO~AddJournalEntry(@2093,QUEST) SetGlobal("Chapter","Global",29) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~~THEN CVSan25J Mecha1
@95
==RTCitMec@96
==CVSan25J@97
==RTCitMec@98
==CVSan25J@99
==RTCitMec@100
==CVSan25J@101
==RTCitMec@102
=@103
==CVSan25J@104
==RTCitMec@105
END
++@106+ Mecha1b
++@107 + Mecha1b
++@108 + Mecha1b

CHAIN
IF~~THEN CVSan25J Mecha1b
@109
DO~SetGlobal("RTCitKeySearch","GLOBAL",1)~
==RTCitMec@110
END
++@111 EXIT
++@112 EXIT
++@113EXIT

CHAIN
IF~~THEN CVSan25J Mecha2
@114
==RTCitMec@115
==CVSan25J@116
==RTCitMec@117
=@118
=@119
=@120
==CVSan25J @121
EXIT

CHAIN
IF~Global("RTCitKeySearch","GLOBAL",2)~THEN RTPhaer InCitadl
@122
DO~SetGlobal("RTCitKeySearch","GLOBAL",3)~
==CVSan25J@123
=@124
==RTPhaer@125
==RTPhaer IF~Global("SanRomPath","GLOBAL",1)~THEN@126
END
++@127 + InCitadl2
++@128 + InCitadl2
++@129+ InCitadl2

CHAIN
IF~~THEN RTPhaer InCitadl2
@130
=@131
DO~Enemy()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN RTRedWil 171
@132
DO~Enemy()~EXIT

CHAIN
IF~Global("Wayout","RTF172",3)~THEN RTCandre SzassDef
@133
DO~SetGlobal("Wayout","RTF172",4)~
==CVSan25J@134
==RTEdwin@135
==CVSan25J@136
==RTCandre@137
==CVSan25J@138
==RTCandre@139
==CVSan25J@140
END
++@141 EXTERN CVSan25J SzassDef2
++@142 EXTERN CVSan25J SzassDef2

CHAIN
IF~~THEN  CVSan25J SzassDef2
@143
=@144
END
++@145 + SzassDef3
++@146 + SzassDef3

CHAIN
IF~~THEN  CVSan25J SzassDef3
@147
=@148
END
++@149EXIT
++@150EXIT