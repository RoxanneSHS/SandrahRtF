CHAIN
IF WEIGHT #-2~ Global("SanRTFPlot5","GLOBAL",7) ~THEN VOLO RTVoloFin
@0
DO~SetGlobal("SanRTFPlot5","GLOBAL",8) ~
==CVSan25J@1
==Volo@2
==CVSan25J@3
==Volo@4
==CVSan25J@5
==Volo@6
==CVSan25J@7
=@8
==Volo@9DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-2~ AreaCheck("RTF025") GlobalLT("SanRTFPlot5","GLOBAL",7)Global("RTVolo","LOCALS",0) ~THEN VOLO RTSurpr1
@10
=@11
=@12
=@13
=@14
DO~SetGlobal("RTVolo","LOCALS",1) ~
==CVSan25J@15
==Volo@16
=@17
==CVSan25J@18
==Volo@19
==CVSan25J@20
==Volo@21
=@22
==CVSan25J@23
==Volo@24 DO~GiveItemCreate("RTVolo","CVSandr",1,0,0) EscapeArea()~
==CVSan25J@25
END
++@26EXIT
++@27EXIT
++@28EXIT