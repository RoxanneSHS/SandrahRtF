BEGIN CVIzy25
BEGIN RTFImo

CHAIN
IF~ NumTimesTalkedTo(0)~THEN CVIzy25 FirstSaw
@0
DO~SetGlobal("SanIzzyJoin","GLOBAL",1)~
==CVSan25J @1
==CVIzy25@2
==CVSan25J @3
==CVIzy25@4
==CVSan25J @5
==CVIzy25@6
END
++@7 + FirstSaw2

CHAIN
IF~~THEN CVIzy25 FirstSaw2
@8
==CVSan25J @9
==CVIzy25@10
END
++@11 DO~ClearAllActions() EscapeAreaMove("BG3321",552,407,7)~EXIT

CHAIN
IF~AreaCheck("BG3321")~THEN CVIzy25 GoWith
@12
==RTFImo@13
==Henning2@14
==CVSan25J@15
==RTFImo@16
=@17
==CVSan25J@18
==RTFImo@19
==CVSan25J@20
==CVIzy25@21
==RTFImo@22
==CVIzy25@23
==RTFImo@24
=@25
=@26
==Henning2@27
==CVIzy25@28
END
++@29+Gowith2
++@30+Gowith3

CHAIN
IF~~THEN CVIzy25 Gowith2
@31
==RTFImo@32
==CVIzy25@33
==Henning2@34
==RTFImo@35
==CVIzy25@36DO~GiveItemCreate("imofurc","CVIzzy",1,0,0)GiveItemCreate("sanhenri","CVIzzy",1,0,0)SetGlobal("RTFIzyJoin","GLOBAL",1)JoinParty()~EXIT

CHAIN
IF~~THEN CVIzy25 Gowith3
@37
==RTFImo@37
==Henning2@37
==CVSan25J@38
END
++@39 + Gowith4

CHAIN
IF~~THEN CVIzy25 Gowith4
@40
==RTFImo@32
==CVIzy25@33
==Henning2@34
==RTFImo@35
==CVIzy25@41 
DO~GiveItemCreate("imofurc","CVIzzy",1,0,0)GiveItemCreate("sanhenri","CVIzzy",1,0,0)SetGlobal("RTFIzyJoin","GLOBAL",1)JoinParty()~EXIT