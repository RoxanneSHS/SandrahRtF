BEGIN CVLey25P
BEGIN CVGir25P
BEGIN CVIzy25P
BEGIN RTMeliP
BEGIN CVLou25P

//Melicamp parting
CHAIN
IF~Global("MeliJoin","LOCALS",1)~ THEN RTMeliP GoM
@0
==RTMeliP IF~InParty("Leyala")~THEN@1
==CVLey25J IF~InParty("Leyala")~THEN@2
==RTMeliP@3
END
++@4DO~JoinParty() ~EXIT
++@5+GoMH

CHAIN
IF~~THEN RTMeliP GoMH
@6DO~ SetGlobal("MeliJoin","LOCALS",0) LeaveParty() EscapeAreaMove("BG3202",180,329,0)~
EXIT

CHAIN
IF~Global("MeliJoin","LOCALS",0)~ THEN RTMeliP RejoinM
@7
END
++@8DO~SetGlobal("MeliJoin","LOCALS",1)
JoinParty() ~EXIT
++@9EXIT

//Isobel parting
CHAIN
IF~Global("RTFIzyJoin","GLOBAL",1)~THEN CVIzy25P GoI
@10
==CVGir25J IF~InParty("CVGiran")~THEN@11
==CVIzy25P IF~InParty("CVGiran")~THEN@12
END
++@13 + GoIR
++@14DO~ SetGlobal("RTFIzyJoin","GLOBAL",1) JoinParty() ~EXIT

CHAIN
IF~~THEN CVIzy25P GoIR
@15
DO~SetGlobal("RTFIzyJoin","GLOBAL",0) LeaveParty() EscapeAreaMove("BG3320",466,341,0)~ EXIT

CHAIN
IF~Global("RTFIzyJoin","GLOBAL",0)~THEN CVIzy25P RejoinI
@16
END
++@17DO~ SetGlobal("RTFIzyJoin","GLOBAL",1) JoinParty() ~EXIT
++@18EXIT

//Leyala parting
CHAIN
IF~Global("CVLEYJoin","GLOBAL",2)~THEN CVLey25P GoL
@19
==CVLey25P IF~InParty("RTMeli")~THEN@20
==RTMeli IF~InParty("RTMeli")~THEN@21
END
++@22+ GolWD
++@23DO~SetGlobal("CVLEYJoin","GLOBAL",2) ActionOverride("Leyala",JoinParty()) ~EXIT

CHAIN
IF~~THEN CVLey25P GolWD
@24DO~ SetGlobal("CVLEYJoin","GLOBAL",1) LeaveParty() EscapeAreaMove("CVElm2",1596,1400,5)~
EXIT

CHAIN
IF~Global("CVLEYJoin","GLOBAL",1) Global("SanRomPath","GLOBAL",1)~THEN  CVLey25P RejoinLf
@25
END
++@26EXIT
++@27DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~EXIT

CHAIN
IF~Global("CVLEYJoin","GLOBAL",1) Global("SanRomPath","GLOBAL",2)~THEN  CVLey25P RejoinLf
@28
END
++@26EXIT
++@27DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~EXIT

//Giran Parting
CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",4)~THEN CVGir25P GoG
@29
==CVIzy25J IF~InParty("CVIzzy")~THEN@30
==CVGir25P IF~InParty("CVizzy")~THEN@31
END
++@32+ GoGSH
++@33DO~SetGlobal("SanRTFGiranOK","GLOBAL",4)JoinParty() ~EXIT

CHAIN
IF~~THEN CVGir25P GoGSH
@34DO~SetGlobal("SanRTFGiranOK","GLOBAL",7) LeaveParty() EscapeAreaMove("CVRTF8",1564,1443,3)~ EXIT

CHAIN
IF~Global("SanRTFGiranOK","GLOBAL",7)~THEN CVGir25P RejoinG
@35
END
++@36 DO~SetGlobal("SanRTFGiranOK","GLOBAL",4)JoinParty() ~EXIT
++@37EXIT

// L'Urieet Parting

CHAIN
IF~Global("Loureedjoined","GLOBAL",9)~THEN CVLou25P UDleave
@38 EXIT

CHAIN
IF~Global("Loureedjoined","GLOBAL",1)~THEN CVLou25P GoUD
@39
==CVSan25J@40
==CVLou25P@41
END
++@42DO~SetGlobal("Loureedjoined","GLOBAL",1)JoinParty() ~EXIT
++@43+ GoUDR

CHAIN
IF~~THEN  CVLou25P GoUDR
@44
DO~SetGlobal("Loureedjoined","GLOBAL",4) LeaveParty() EscapeAreaMove("CVUMO5",1772,1363,3)~ EXIT

CHAIN
IF~ Global("Loureedjoined","GLOBAL",4)~THEN CVLou25P RejoinUD
@45
END
++@46 DO~SetGlobal("Loureedjoined","GLOBAL",1)JoinParty() ~EXIT
++@47EXIT