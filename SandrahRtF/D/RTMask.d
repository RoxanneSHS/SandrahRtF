BEGIN RTMask

IF~Global("RTMaskplot","GLOBAL",0) ~THEN BEGIN MaskKnows1
SAY@0
IF~~THEN REPLY@1 GOTO MaskKnows2
IF~~THEN REPLY@2 GOTO MaskKnows2
END

IF~~THEN BEGIN MaskKnows2
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("RTMaskplot","GLOBAL",1)~GOTO MaskKnows3
END

IF~~THEN BEGIN MaskKnows3
SAY@5
=@6
IF~~THEN REPLY@7 GOTO MaskKnows4
IF~~THEN REPLY@8 GOTO MaskKnows4
END

IF~~THEN BEGIN MaskKnows4
SAY@9
IF~~THEN REPLY@10 GOTO MaskKnows5
IF~~THEN REPLY@11 GOTO MaskKnows5
END

IF~~THEN BEGIN MaskKnows5
SAY@12
=@13
IF~~THEN REPLY@14 GOTO MaskKnows6
END

IF~~THEN BEGIN MaskKnows6
SAY@15
=@16
IF~~THEN REPLY@17 GOTO MaskKnows7
END

IF~~THEN BEGIN MaskKnows7
SAY@18
=@19
IF~~THEN DO~SetGlobalTimer("RTMaskplotT","GLOBAL",FIVE_DAYS) AddJournalEntry(@2064,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

IF~Global("RTMaskplot","GLOBAL",6) AreaCheck("RTF513") ~THEN BEGIN MaskItms1
SAY@20
IF~~THEN REPLY@21 DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
IF~~THEN REPLY@22DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
IF~~THEN REPLY@23DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
END

IF~~THEN BEGIN MaskItms2
SAY@24
IF~~THEN DO~ SetGlobal("RTMaskplot","GLOBAL",7) Enemy()~EXIT
END


BEGIN RTGayl
IF~Global("Baylan","RTF050",7)~THEN BEGIN SharH
SAY@25
IF~~THEN REPLY@26 GOTO SharH1
IF~~THEN REPLY@27GOTO SharH1
END

IF~~THEN BEGIN SharH1
SAY@28
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
Wait(2)
StartCutScene("CVcut408")~ EXIT
END

IF~ Global("RTMaskplot","GLOBAL",0) NumTimesTalkedTo(0)~THEN BEGIN Gomask1
SAY@29
IF~~THEN REPLY@30 GOTO Gomask2
IF~~THEN REPLY@31 GOTO Gomask2
END

IF~~THEN BEGIN Gomask2
SAY@32
IF~~THEN REPLY@33 GOTO Gomask3
IF~~THEN REPLY@34 GOTO Gomask3
END

IF~~THEN BEGIN Gomask3
SAY@35
IF~!InParty("CVIzzy") ~THEN DO~EscapeArea()~ EXIT 
IF~InParty("CVIzzy") !Global("Izzyplot","GLOBAL",4)~THEN DO~EscapeArea()~ EXIT
IF~InParty("CVIzzy") Global("Izzyplot","GLOBAL",4)~THEN EXTERN CVIzy25J AskSh
END

IF~ GlobalGT("RTMaskplot","GLOBAL",0) AreaCheck("RTF510")~THEN BEGIN Gomask4
SAY@29
IF~~THEN REPLY@30 GOTO Gomask5
IF~~THEN REPLY@31 GOTO Gomask5
END

IF~~THEN BEGIN Gomask5
SAY@36
IF~~THEN DO~SetGlobal("RTMaskplot","GLOBAL",5) EscapeArea()~ EXIT
END

IF~ GlobalGT("RTMaskplot","GLOBAL",0) AreaCheck("RTF513")~THEN BEGIN Gomask6
SAY@37
IF~~THEN DO~EscapeArea()~EXIT
END

CHAIN
IF~~THEN CVIzy25J AskSh
@38
==RTGayl@39
==CVIzy25J@40
==RTGayl@41
==CVIzy25J@42
==RTGayl@43DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-11~GlobalGT("SanBeginRTF","GLOBAL",1)~ THEN THIEF5 Gorv
@44
==CVSan25J@45
==THIEF5@46
==CVSan25J IF~GlobalGT("RTMaskplot","GLOBAL",0) !PartyHasItem("RTKeylig")~THEN@47
==THIEF5 IF~GlobalGT("RTMaskplot","GLOBAL",0) !PartyHasItem("RTKeylig")~THEN@48
END
++@49EXIT
++@50EXIT
++@51EXIT