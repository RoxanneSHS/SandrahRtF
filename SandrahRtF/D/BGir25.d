BEGIN BGir25

CHAIN
IF~Global("PellGir","LOCALS",1)~THEN BGir25 PellJel
@0
=@1
DO~SetGlobal("PellGir","LOCALS",2)~
==Bizy25@2
==BGir25@3
==Bizy25@4
==BGir25@5
==Bizy25@6
==BGir25@7
==Bizy25@8
=@9DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("GhotGir","LOCALS",1)~THEN BGir25 GhotFi
@10
DO~ SetGlobal("GhotGir","LOCALS",2)~
==BSandr25@11
==BGir25@12
==BSandr25@13
==BGir25@14EXIT

CHAIN
IF~Global("RTGiranNash","BG3300",1) ~THEN BGir25 Nashrev
@15
DO~SetGlobal("RTGiranNash","BG3300",2)~
==BSandr25@16
==BGir25@17
==BSandr25@18
==BGir25@19
==BSandr25@20
==BGir25@21
=@22EXIT