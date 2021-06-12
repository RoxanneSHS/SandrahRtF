BEGIN Bizy25

CHAIN
IF~Global("RtFIzGir","GLOBAL",1)~THEN Bizy25 IzGir1
@0
DO~SetGlobal("RtFIzGir","GLOBAL",2) RealSetGlobalTimer("IzGirT","LOCALS",1900)~
==BGIR25@1
==Bizy25@2
==BGir25@3
==Bizy25@4
==BGir25@5
==Bizy25@6
==BGir25@7
==Bizy25@8
==BGir25@9
==Bizy25@10EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",3)~ THEN Bizy25 IzGir2
@11
DO~SetGlobal("RtFIzGir","GLOBAL",4)~
==BGir25@12
==Bizy25@13
==BGir25@14
==Bizy25@15
==BGir25@16
==Bizy25@17
==BGir25@18
==Bizy25@19
==BGir25@20
==Bizy25@21
==BGir25@22
==Bizy25@23EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",5)~ THEN Bizy25 IzGirMo
@24
DO~SetGlobal("RtFIzGir","GLOBAL",6)~
==BGir25@25
==Bizy25@26DO~ActionOverride("CVGiran",Attack("CVMoose")~EXIT

CHAIN
IF~ Global("RtFIzGir","GLOBAL",7)~ THEN Bizy25 IzGirMo2
@27
DO~SetGlobal("RtFIzGir","GLOBAL",8)~
==BGir25@28
==BIzy25@29
==BGir25@30
==BIzy25@31
==BGir25@32
==BIzy25@33
==BGir25@34
==BIzy25@35
==BGir25@36
==BIzy25@37DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("RtFIzGir","GLOBAL",9)~ THEN Bizy25 IzGirHeal
@38
DO~SetGlobal("RtFIzGir","GLOBAL",10)~
==BGir25@39
==BIzy25@40
==BGir25@41
==BIzy25@42
=@43
==BGir25@44
==BIzy25@45
==BGir25@46
==BIzy25@47
 ==BGir25@48
 ==BIzy25@49
==BGir25@50
==BIzy25@51
==BGir25@52
==BIzy25@53
==BGir25@54EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",11) ~THEN Bizy25 IzGirsur
@55
DO~SetGlobal("RtFIzGir","GLOBAL",12)~
==BGir25@56
==BIzy25@57
==BGir25@58
==BIzy25@59
==BGir25@60
==BIzy25@61
==BGir25@62
==BIzy25@63
==BGir25@64
==BIzy25@65
==BGir25@66
==BIzy25@67
==BGir25@68EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",13) ~THEN Bizy25 IzGirbath
@69
DO~SetGlobal("RtFIzGir","GLOBAL",14) RealSetGlobalTimer("IzGirRomTime","LOCALS",3800)~
==BGir25@70
==BIzy25@71
==BGir25@72
==BIzy25@73
==BGir25@74
==BIzy25@75
=@76
=@77
=@78
=@79
=@80
==BGir25@81 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("RtFIzGir","GLOBAL",15) ~THEN Bizy25 IzGirRom1
@82
DO~SetGlobal("RtFIzGir","GLOBAL",16) ~
==BGir25@83
==BIzy25@84
==BGir25@85
==BIzy25@86
==BGir25@87
==BIzy25@88
==BGir25@89
==BIzy25@90
==BGir25@91
==BIzy25@92
==BGir25@93
==BIzy25@94
=@95
=@96
==BGir25@97
=@98 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("Izzypink","RTF057",1)~THEN Bizy25 PinkBoots
@99
DO~SetGlobal("Izzypink","RTF057",2)~
==CVSan25J@100
==Bizy25@101
==CVSan25J@102
==Bizy25@103
=@104
==CVGir25J IF~InParty("CVGiran")~ THEN@105
==Bizy25 IF~InParty("CVGiran")~ THEN@106
==CVGir25J IF~InParty("CVGiran")~ THEN@107
==Bizy25 IF~InParty("CVGiran")~ THEN@108
==CVGir25J IF~InParty("CVGiran")~ THEN@109 EXIT

CHAIN
IF~Global("RTInCell","RTF061",1) ~THEN Bizy25 Jailbreak
@110
DO~SetGlobal("RTInCell","RTF061",2) RealSetGlobalTimer("RTInCellD","RTF061",180)~
==CVSan25J@111
==Bizy25@112
==CVGir25J IF~InParty("CVGiran")~ THEN@113
==Bizy25 IF~InParty("CVGiran")~ THEN@114
==Bizy25 IF~!InParty("CVGiran")~ THEN@115
==CVGir25J IF~InParty("CVGiran")~ THEN@116
==CVSan25J IF~!InParty("CVGiran")~ THEN@117
==Bizy25 @118EXIT

CHAIN
IF~Global("Izzypink","RTF107",1)~THEN Bizy25 PinkRoom
@119
DO~SetGlobal("Izzypink","RTF107",2)~
==CVSan25J@120
==CVGir25J IF~InParty("CVGiran")~ THEN@121
==Bizy25 IF~InParty("CVGiran")~ THEN@122
==Bizy25 IF~!InParty("CVGiran")~ THEN@123
==Bizy25@124EXIT

CHAIN
IF~Global("RTIzCow","RTF081",1)~THEN Bizy25 Cowstamp
@125
DO~SetGlobal("RTIzCow","RTF081",2)~
==CVGir25J@126
==Bizy25@127
==CVGir25J@128
==Bizy25@129
==CVGir25J@130
==Bizy25@131EXIT

CHAIN
IF~Global("Cita","RTF160",3)~THEN Bizy25 PinkFuture
@132
DO~SetGlobal("Cita","RTF160",4)~
==CVGir25J@133
==Bizy25@134
==CVGir25J@135
=@136
==Bizy25@137
==CVGir25J@138
==Bizy25@139
==CVGir25J@140
==Bizy25@141 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("IzGirUD","LOCALS",1)~THEN Bizy25 drow
@142
DO~SetGlobal("IzGirUD","LOCALS",2)~
==CVGir25J@143
==Bizy25@144
==CVGir25J@145
==Bizy25@146
==CVGir25J@147
==Bizy25@148EXIT
