BEGIN RTSail

IF~!AreaCheck("RTF110") RandomNum(4,1)~THEN BEGIN SailT1
SAY@0
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,2)~THEN BEGIN SailT2
SAY@1
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,3)~THEN BEGIN SailT3
SAY@2
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,4)~THEN BEGIN SailT4
SAY@3
IF~~THEN EXIT
END


BEGIN RTAvar

IF~OR(2) GlobalGT("RTSaeHij","GLOBAL",5) Global("RTWed","RTF112",1)~THEN BEGIN HelpF
SAY@4
IF~~THEN EXIT
END

IF~AreaCheck("RTF114") RandomNum(2,1)~THEN BEGIN Potions
SAY@5
IF~~THEN EXIT
END

IF~AreaCheck("RTF114") RandomNum(2,2) ~THEN BEGIN innp2
SAY@6
IF~~THEN EXIT
END

IF~AreaCheck("RTF115") RandomNum(2,1)~THEN BEGIN inn1
SAY@7
IF~~THEN EXIT
END

IF~AreaCheck("RTF115") RandomNum(2,2)~THEN BEGIN inn2
SAY@6
IF~~THEN EXIT
END

IF~ RandomNum(4,1)~THEN BEGIN Avar1
SAY@8
IF~~THEN EXIT
END

IF~ RandomNum(4,2)~THEN BEGIN Avar2
SAY@9
IF~~THEN EXIT
END

IF~ RandomNum(4,3)~THEN BEGIN Avar3
SAY@10
IF~~THEN EXIT
END

IF~ RandomNum(4,4)~THEN BEGIN Avar4
SAY@11
IF~~THEN EXIT
END

CHAIN
IF~AreaCheck("RTF110")~THEN RTSail Isl1
@12
==CVSan25J@13
END
++@14EXIT
++@15EXIT

CHAIN
IF~AreaCheck("RTF098") Global("Myrescue","LOCALS",0)~ THEN RTShaj Resc1
@16
DO~SetGlobal("Myrescue","LOCALS",1) ~
==CVSan25J@17
==RTShaj@18
=@19
==CVSan25J@20
==RTShaj@21
==CVLey25J IF~InParty("Leyala")~THEN@22
==RTShaj IF~InParty("Leyala")~THEN@23
==RTShaj@24
==CVSan25J@25
==RTShaj@26
==CVSan25J@27
==RTShaj@28
==CVSan25J@29
==RTShaj@30DO~EscapeArea()~EXIT

CHAIN
IF~Global("Start112","RTF112",2)~ THEN RTShaj RescIsl
@31
DO~SetGlobal("Start112","RTF112",3) SetGlobal("RTSaeHij","GLOBAL",1)~
==CVSan25J@32
==RTShaj@33
==CVSan25J@34
=@35
==RTShaj@36DO~MoveToPoint([2577.1522])EscapeAreaDestroy(20)~EXIT

CHAIN
IF~Global("RTSaeHij","GLOBAL",2)~THEN RTSaemon RescIs2
@37
DO~SetGlobal("RTSaeHij","GLOBAL",3)~
==CVSan25J@38
==RTSaemon@39
==CVSan25J@40
==RTSaemon@41
==CVSan25J@42
==RTSaemon@43DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTSaeHij","GLOBAL",7) ~THEN RTSaemon RescIs3
@44
DO~SetGlobal("RTSaeHij","GLOBAL",8)~
==RTShaj@45
==RTSaemon@46
==RTShaj@47
==RTSaemon@48
==CVSan25J@49
==RTSaemon@50
END
++ @51DO~SetGlobal("RTSaeToBal","RTF112",1)~EXIT
++ @52DO~SetGlobal("RTSaeToBal","RTF112",2)~EXIT

CHAIN
IF~ Global("RTSaeToBal","RTF112",1)~THEN RTSaemon Outfaen
@53
END
++@54DO~SetGlobal("RTSaeToBal","RTF112",2)~EXIT
++@55EXIT
