BEGIN RTLarlo
BEGIN RTLarImp

IF~Global("RTLarRidl","GLOBAL",0)~THEN BEGIN Millstone1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("RTLarRidl","GLOBAL",1) RealSetGlobalTimer("Riddlrun","RTF151",900) DestroySelf()~EXIT
IF~~THEN REPLY@2DO~SetGlobal("RTLarRidl","GLOBAL",1)RealSetGlobalTimer("Riddlrun","RTF151",900)DestroySelf()~EXIT
END

IF~Global("RTLarRidl","GLOBAL",3)~THEN BEGIN Millstone2
SAY@3
=@4
IF~~THEN REPLY@5GOTO Wake
IF~~THEN REPLY@6GOTO Sleep
END

IF~~THEN BEGIN Sleep
SAY@7
IF~~THEN REPLY@8
DO~SetGlobal("RTLarRidl","GLOBAL",6)DestroySelf()~EXIT
END

IF~~THEN BEGIN Wake
SAY@9
IF~~THEN REPLY@10 DO~SetGlobal("RTLarRidl","GLOBAL",4) TakePartyItem("Sanrock") ScreenShake([286.346],6)DestroySelf()~EXIT
END

IF~Global("RTLarRidl","GLOBAL",6)~THEN BEGIN Millstone3
SAY@11
IF~~THEN DO~SetGlobal("RTLarRidl","GLOBAL",7) Enemy()~EXIT
END

BEGIN RTLarDra
IF~AreaCheck("RTF151") NumTimesTalkedTo(0)~THEN BEGIN Wake
SAY@12 
=@13
IF~~THEN EXIT
END

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",1)~THEN RTLarlo SharV1
@14
DO~ SetGlobal("SanRTFPlot4","GLOBAL",2)~
==CVSan25J@15
==RTLarlo@16
==CVSan25J@17
==RTLarlo@18
END
++@19 + SharV2
++@20+ SharV2
++@21 + SharV2

CHAIN
IF~~THEN RTLarlo SharV2
@22
==CVSan25J@23
==RTLarlo@24
==CVSan25J@25
==RTLarlo@26
==CVSan25J@27
==RTLarlo@28
==CVSan25J@29
==RTLarlo@30
==CVSan25J@31
==RTLarlo@32
==CVSan25J@33
=@34
==RTLarlo@35
==CVSan25J@36
==RTLarlo@37
=@38
==CVSan25J@39
==RTLarlo@40
==CVSan25J@41
==RTLarlo@42
==CVSan25J IF~Global("CVR140","GLOBAL",0)~THEN @43
==CVSan25J IF~Global("CVR140","GLOBAL",1)~THEN @44
END
IF~ Global("CVR140","GLOBAL",1)~THEN REPLY@45EXIT
IF~ Global("CVR140","GLOBAL",0)~THEN REPLY@46EXTERN CVSan25J Whelway

CHAIN
IF~~THEN CVSan25J Whelway
@47EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",2) AreaCheck("rtf153")~ THEN RTLarlo SharV4
@48EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",3)~THEN RTLarlo SharTr1
@49
DO~SetGlobal("SanRTFPlot4","GLOBAL",4)~
==CVSharG@50
=@51
==CVSan25J@52
==CVSharG@53
==RTLarlo@54
==CVSharG@55
==RTLarlo@56
=@57
==CVSharG@58
==CVSan25J@59
==RTLarlo@60DO~Enemy()~
==CVSharG@61DO~Enemy()~
==CVSharG IF~InParty("Loureed")~THEN@62
==CVLOU25J IF~InParty("Loureed")~THEN@63EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",5)Global("RTLarDec","LOCALS",0)AreaCheck("RTF143")~THEN RTLarlo SharTr2
@64
DO~SetGlobal("RTLarDec","LOCALS",1)SetGlobal("RTSimbul","RTF143",4)~
==CVSharG@65
==RTLarlo@66
==CVSharG@67
==RTLarlo@68
==CVSharG@69
==RTLarlo@70
==CVSharG@71EXIT

CHAIN
IF~AreaCheck("RTF026") !InParty("CVSandr") Global("26Once","LOCALS",0)~THEN RTLarlo Ress1
@72
END
++@73 + Ress2
++@74 + Ress2

CHAIN 
IF~~THEN RTLarlo Ress2
@75
=@76
=@77DO~SetGlobal("26Once","LOCALS",1)~EXIT

CHAIN
IF~AreaCheck("RTF026") !InParty("CVSandr") Global("26Once","LOCALS",1)~THEN RTLarlo Ress3
@77EXIT

CHAIN
IF~AreaCheck("RTF026") InParty("CVSandr")~ THEN RTLarlo Ress4
@78
DO~SetGlobal("26Once","LOCALS",2)~
==CVSan25J@79
=@80
==RTLarlo@81
==CVSan25J@82
==RTLarlo@83
==CVSan25J@84
==RTLarlo@85DO~EscapeArea()~EXIT