BEGIN RTMeli
BEGIN RTKid
BEGIN RTMom
BEGIN RTMeEle

BEGIN RTOrcMel

IF~GlobalLT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Hint
SAY@0
IF~~THEN EXIT
END

IF~GlobalGT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Thank
SAY@1
IF~~THEN EXIT
END

CHAIN
IF~AreaCheck("RTF005") NumTimesTalkedTo(0)!InParty(Myself)~THEN RTMeli Desas1
@2
==CVSan25J@3
==RTMeli@4
==CVSan25J@5
==RTMeli@6
==CVSan25J@7
==RTMeli@8
==CVSan25J@9
==RTMeli@10
==CVSan25J@11
==RTMeli@12
==CVSan25J@13
==RTMeli@14
==CVSan25J@15
END
++@16+Desas2
++@17+Desas3

CHAIN
IF~~THEN RTMeli Desas2
@18EXIT

CHAIN
IF~~THEN RTMeli Desas3
@19
DO~SetGlobal("MeliJoin","LOCALS",1) JoinParty()~EXIT

CHAIN
IF~AreaCheck("RTF005") NumTimesTalkedToGT(0)!InParty(Myself)~THEN RTMeli Desas4
@20
END
++@21+Desas2
++@17+Desas3

CHAIN
IF~Global("RTMelibant","GLOBAL",1)~THEN RTMeli ScHint
@22
DO~SetGlobal("RTMelibant","GLOBAL",2)~
==CVSan25J@23
==RTMeli@24
=@25
==CVSan25J@26
==RTMeli@27
==CVSan25J@28
==RTMeli@29EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",3)~THEN RTMeli AftThal
@30
DO~SetGlobal("RTMelibant","GLOBAL",4)~
==CVSan25J@31
==RTMeli@32
==CVSan25J@33
==RTMeli@34
==CVSan25J@35
==RTMeli@36
==CVSan25J@37
==RTMeli@38
==CVSan25J@39
==RTMeli@40EXIT

CHAIN
IF~Global("RTMeliIzzChi","LOCALS",1) ~THEN RTMeli IzzChicken
@41
DO~SetGlobal("RTMeliIzzChi","LOCALS",2)~
==CVIzy25J@42
==RTMeli@43
==CVIzy25J@44
==RTMeli@45
==CVIzy25J@46
==RTMeli@47
==CVIzy25J@48
==RTMeli@49EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",2)~THEN RTMeli Melchild
@50
DO~SetGlobal("RTMelLayWom","LOCALS",3)~
==RTKid@51
==RTMOM@52
==RTMeli@53
==RTMOM@54
==RTMeli@55
==RTMOM@56
==RTMeli@57
==Bizy25 IF ~InParty("cvizzy")~THEN@58
==RTMeli IF ~InParty("cvizzy")~THEN@59
==Bizy25 IF ~InParty("cvizzy")~THEN@60
==BLeya25@61
==RTMeli@62
==RTMOM@63DO~EscapeArea()~
==RTKid@64DO~EscapeArea()~
==BLeya25@65
==RTMeli@66
==BLeya25@67
==RTMeli@68EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",4)~THEN RTMeli MelLey1
@69
DO~SetGlobal("RTMelLayWom","LOCALS",5)~
==BLeya25@70
=@71
==RTMeli@72
==BLeya25@73
==RTMeli@74
==BSandr25@75
END
++@76DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",6)~THEN RTMeli LaySharDre
@77
DO~SetGlobal("RTMelLayWom","LOCALS",7)~
==BLeya25@78
==RTMeli@79
==BLeya25@80
==RTMeli@81
==BLeya25@82
==RTMeli@83
=@84
==BLeya25@85
==RTMeli@86
==BLeya25@87EXIT

CHAIN
IF~Global("MeliNosti","LOCALS",0)  OR(3) Global("SawMagic","AR0603",1) Global("SawMagic","RTF078",1) Global("SawMagic","RTF153",1)~THEN RTMeli Magic1
@88
DO~SetGlobal("MeliNosti","LOCALS",1)~
==BSandr25@89
==RTMeli@90
==BSandr25@91
=@92
==RTMeli@93
==BSandr25@94
==RTMeli@95
==BSandr25@96
==RTMeli@97EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",5)~THEN RTMeli SanRom1
@98
DO~SetGlobal("RTMelibant","GLOBAL",6)~
==BSandr25@99
==RTMeli@100
==BSandr25@101
==RTMeli@102
==BSandr25@103
==RTMeli@104
==BSandr25@105
==RTMeli@106
==BSandr25@107
==RTMeli@108
==BSandr25@109
==RTMeli@110
==BSandr25@111DO~RestParty()~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",7)~THEN RTMeli SanRom2
@112
DO~SetGlobal("RTMelibant","GLOBAL",8)~
==BSandr25@113
==RTMeli@114
==BSandr25@115
==RTMeli@116
==BSandr25@117
==RTMeli@118
==BSandr25@119
==RTMeli@120
==BSandr25@121
==RTMeli@122DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",11)~THEN RTMeli SanRom3
@123
DO~SetGlobal("RTMelibant","GLOBAL",12)~
==BSandr25@124
==RTMeli@125
==BSandr25@126
=@127
=@128
=@129
==RTMeli@130
==BSandr25@131
==RTMeli@132
==BSandr25@133
==RTMeli@134
==BSandr25@135
==RTMeli@136
=@137DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",14)~THEN RTMeli SanRom4
@138
DO~SetGlobal("RTMelibant","GLOBAL",15)RealSetGlobalTimer("RTMeliNB","LOCALS",1600)~
==BSandr25@139
==RTMeli@140
==BSandr25@141
==RTMeli@142
==BSandr25@143
=@144
=@145
==RTMeli@146
==BSandr25@147
==RTMeli@148
==BSandr25@149
==RTMeli@150DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",16)~THEN RTMeli SanRom5
@151
DO~SetGlobal("RTMelibant","GLOBAL",17)RealSetGlobalTimer("RTMeliNB","LOCALS",1600)~
==BSandr25@152
==RTMeli@153
==BSandr25@154
==RTMeli@155
==BSandr25@156
==RTMeli@157
=@158
==BSandr25@159
==RTMeli@160
==BSandr25@161DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~EXIT

CHAIN
IF~Global("MeliAfterKul","LOCALS",1)~THEN RTMeli SanRom5
@162
DO~SetGlobal("MeliAfterKul","LOCALS",2)~
==BSandr25@163
==RTMeli@164
==BSandr25@165
=@166
==RTMeli@167
==BSandr25@168
==RTMeli@169
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("MeliSanGB","LOCALS",1) ~THEN RTMeli Goodbye
@170
DO~SetGlobal("MeliSanGB","LOCALS",2)~
==BSandr25@171
==RTMeli@172
==BSandr25@173
==RTMeli@174
==BSandr25@175
=@176
==RTMeli@177
==BSandr25@178
==RTMeli@179
=@180
==BSandr25@181
==RTMeli@182
==BSandr25@183DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

//Melicamp Quest
CHAIN
IF~Global("RTMeliQuest","GLOBAL",2)~THEN RTMeli Thalcare
@184
DO~SetGlobal("RTMeliQuest","GLOBAL",3)~
==CVSan25J@185
==RTMeli@186
==CVSan25J@187
==RTMeli@188
==CVSan25J@189DO~AddJournalEntry(@2088,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",4) ~THEN RTMeli Scroll1
@190
DO~SetGlobal("RTMeliQuest","GLOBAL",5)~
==CVSan25J@191
==RTMeli@192DO~AddJournalEntry(@2089,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",6) ~THEN RTMeli Scroll2
@193
DO~SetGlobal("RTMeliQuest","GLOBAL",7)~
==CVSan25J@194DO~AddXPObject("RTMeli",22500)~
==RTMeli@195
==CVSan25J@196
=@197DO~AddJournalEntry(@2090,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",8)~THEN RTMeli Scroll3
@198
DO~SetGlobal("RTMeliQuest","GLOBAL",9)RealSetGlobalTimer("RTMeliNB","LOCALS",1200)~
==CVSan25J@199
=@200
==RTMeli@201
==CVSan25J@202
==RTMeli@203
=@204
==CVSan25J@205
==RTMeli@206
==CVSan25J@207
==RTMeli@208
==CVSan25J@209DO~AddJournalEntry(@2092,QUEST) RestParty()~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",10)~THEN RTMeli ScrollN1
@210
=@211
DO~SetGlobal("RTMeliQuest","GLOBAL",11)~
==CVSan25J@212
END
++@213+ ScrollN2
++@214+ ScrollN2

CHAIN
IF~~THEN RTMeli ScrollN2
@215
==CVSan25J@216DO~AddXPObject("RTMeli",3500)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",12)~THEN RTMeli ScrollN3
@217
DO~SetGlobal("RTMeliQuest","GLOBAL",13)~
==CVSan25J@218
==RTMeli@219
==CVLey25J IF~InParty("Leyala")~THEN@220
==CVSan25J@221
END
++@222+ ScrollN4
++@223+ ScrollN4
++@224+ ScrollN4

CHAIN
IF~~THEN RTMeli ScrollN4
@225
DO~ClearAllActions() Wait(2) CreateVisualEffectObject("icwrati","RTMeli")CreateVisualEffectObject("idestruh","CVSandr") Wait(2) CreateCreatureObjectDoor("RTMeEle","RTMeli",0,0,0) CreateCreatureObjectDoor("elearg01",Player3,0,0,0) CreateCreatureObjectDoor("elecali2",Player5,0,0,0) CreateCreatureObjectDoor("elemwag",Player1,0,0,0) CreateCreatureObjectDoor("elecali2",Player6,0,0,0) CreateCreatureObjectDoor("elemwag",Player2,0,0,0) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",13)~THEN RTMeEle ScrollN5
@226
DO~SetGlobal("RTMeliQuest","GLOBAL",14) EraseJournalEntry(@2088) EraseJournalEntry(@2089) EraseJournalEntry(@2090) EraseJournalEntry(@2092)~
==RTMeli@227
==RTMeEle@228
==RTMeli@229
==RTMeEle@230DO~TakePartyItem("RTMels3") DestroyItem("RTMels3") Enemy()~EXIT

CHAIN
IF WEIGHT #-1~Global("RTWantMel","RTF074",1)~THEN RTOrcMel  WantMeli
@231
DO~SetGlobal("RTWantMel","RTF074",2)~
==RTMeli@232
==RTOrcMel@233
==CVLey25J@234
==RTOrcMel@235
==CVLey25J@236
==RTMeli@237
==CVLey25J@238
==RTMeli@239EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",15)~THEN RTMeli ScrollN6
@240
DO~SetGlobal("RTMeliQuest","GLOBAL",16)~
==CVSan25J@241
==RTMeli@242
==CVLey25J IF~InParty("Leyala")~THEN@243
==CVSan25J IF~!InParty("Leyala")~THEN@244
==RTMeli IF~InParty("Leyala")~THEN@245
==CVLey25J IF~InParty("Leyala")~THEN@246
==RTMeli IF~InParty("Leyala")~THEN@247
==CVSan25J@248DO~GiveItemCreate("sanbok2","RTMeli",1,0,0) AddXPObject("RTMeli",17000)EraseJournalEntry(@2092) EraseJournalEntry(@2090) EraseJournalEntry(@2089) EraseJournalEntry(@2088)~EXIT