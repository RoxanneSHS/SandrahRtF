BEGIN RTMysMes

IF~Global("SeenMys","RTF070",2)~THEN BEGIN Seenher
SAY@0
IF~~THEN DO~SetGlobal("SeenMys","RTF070",3)~ EXIT
END

BEGIN RTThKn

IF~Global("GuardOd","RTF070",2)~THEN BEGIN NoOut70
SAY@1
IF~~THEN REPLY@2 GOTO Think2
IF~PartyHasItem("RTOdBad")~THEN REPLY@3GOTO Out70
IF~~THEN REPLY@4DO~SetGlobal("GuardOd","RTF070",3)~EXIT
END

IF~ Global("GuardOd","RTF070",3)~THEN BEGIN NoOut70b
SAY@5
IF~~THEN REPLY@2 GOTO Think2
IF~PartyHasItem("RTOdBad")~THEN REPLY@6GOTO Out70
IF~~THEN REPLY@4DO~SetGlobal("GuardOd","RTF070",3)~EXIT
END

IF~~THEN BEGIN Out70
SAY@7
IF~~THEN DO~SetGlobal("GuardOd","RTF070",4)~EXIT
END  

IF~Global("In910","RTF910",1)~ THEN BEGIN LegHQ1
SAY@8
IF~~THEN DO~SetGlobal("In910","RTF910",2)~EXIT
END 

IF~Global("In908","RTF908",1)~ THEN BEGIN LegHQ2
SAY@9
IF~~THEN DO~SetGlobal("In908","RTF908",2)~DO~Enemy()~EXIT
END

CHAIN
IF~~THEN RTThKn Think2                                        
@10
==CVSan25J@11
END
++@12EXIT
++@13DO~ActionOverride("RTThKn",Enemy())~EXIT



BEGIN RTOdButl
CHAIN
IF~AreaCheck("RTF079") Global("CadrHint","RTF079",0)~THEN RTOdButl Hint1
@14
=@15
DO~SetGlobal("CadrHint","RTF079",1)~
==CVSan25J@16
==RTOdButl@17
=@18
==CVSan25J@19
==RTOdButl@20
==CVSan25J@21
==RTOdButl@22
=@23
DO~EscapeArea()~EXIT

BEGIN  RTOdLuc
CHAIN
IF~AreaCheck("RTF087") GlobalLT("SanRTFPlot3","GLOBAL",3)~THEN RTOdLuc Wellhint
@24
==CVSan25J@25
==RTOdLuc@26
==CVSan25J@27
==RTOdLuc@28
==CVSan25J@29
==RTOdLuc@30
==CVSan25J@31
==RTOdLuc@32EXIT

CHAIN
IF~AreaCheck("RTF087") GlobalGT("SanRTFPlot3","GLOBAL",2)~THEN RTOdLuc Wellc
@33EXIT

CHAIN
IF~Global("In091","RTF091",1)~THEN RTThKn GoSamHQ
@34
DO~SetGlobal("In091","RTF091",2)~
==CVSan25J@35
==RTThKn@36
==CVSan25J@37
==RTThKn@38
==CVSan25J@39
==RTThKn@40
DO~Enemy()~EXIT
