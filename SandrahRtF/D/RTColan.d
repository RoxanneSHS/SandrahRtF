BEGIN RTJudge
BEGIN RTAuct
BEGIN RTBidd1
BEGIN RTKniJu
BEGIN RTKniNeu
BEGIN RTColan

IF~ Global("RTColan","GLOBAL",2)~THEN BEGIN Intro
SAY@0 
IF~~THEN REPLY@1GOTO Intro2
IF~~THEN REPLY@2 GOTO Intro2
IF~~THEN REPLY@3 GOTO Intro2
END

IF~~THEN BEGIN Intro2
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("RTColan","GLOBAL",3)~ GOTO Intro3
IF~~THEN REPLY@6DO~SetGlobal("RTColan","GLOBAL",3)~ GOTO Intro3
END

IF~~THEN BEGIN Intro3
SAY@7
IF~~THEN REPLY@8GOTO Intro4
IF~~THEN REPLY@9 GOTO Intro4
END

IF~~THEN BEGIN Intro4
SAY@10
=@11
IF~~THEN REPLY@12GOTO Intro5
IF~~THEN REPLY@13 GOTO Intro5
END

IF~~THEN BEGIN Intro5
SAY@14
=@15
=@16
IF~~THEN REPLY@17 GOTO Intro6
IF~~THEN REPLY@18 GOTO Intro6
END

IF~~THEN BEGIN Intro6
SAY@19
=@20
IF~~THEN REPLY@21 DO~SetGlobal("RTNameVel","GLOBAL",1)~GOTO Intro7
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY@22DO~SetGlobal("RTNamePri","GLOBAL",1)~GOTO Intro7
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY@23DO~SetGlobal("RTNameAbe","GLOBAL",1)~GOTO Intro7
IF~~THEN REPLY@24 DO~SetGlobal("RTNameCha","GLOBAL",1)~GOTO Intro7
END

IF~~THEN BEGIN Intro7
SAY@25
=@26
=@27
=@28
=@29
IF~~THEN REPLY@30DO~SetGlobal("Edyes","LOCALS",1)EscapeArea()~EXIT
IF~~THEN REPLY@31DO~EscapeArea()~ EXIT
IF~~THEN REPLY@32 DO~SetGlobal("Edyes","LOCALS",1)EscapeArea()~EXIT
IF~~THEN REPLY@33 DO~EscapeArea()~EXIT
END

CHAIN
IF~Global("RTColan","GLOBAL",14)~THEN RTColan RTTrial1
@34
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN@35
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN@36
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN@37
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN@38
==RTJudge@39
==CVSan25J@40
==RTColan@41
==RTJudge@42
==RTColan@43
==RTJudge@44
==RTColan@45
==CVGir25J IF~InParty("CVGiran")~THEN@46
==CVIzy25J IF ~ InParty("CVIzzy")~THEN@47
==RTMeli IF~ InParty("RTMeli")~THEN@48
==RTColan@49
==RTJudge@50
END
++@51+ RTTrial2
++@52 + RTTrial2

CHAIN
IF~~THEN RTColan RTTrial2
@53
==RTJudge@54
==RTColan IF~Global("Edyes","LOCALS",1)~ THEN@55
==RTColan IF~Global("Edyes","LOCALS",0)~ THEN@56
==CVSan25J@57
==RTColan@58
=@59
END
++@60+ RTTrial3

CHAIN
IF~~THEN RTColan RTTrial3
@61
==RTJudge@62
==RTColan@63
=@64
END
++@65 + RTTrial4
++@66+ RTTrial4

CHAIN
IF~~THEN RTColan RTTrial4
@67
==CVSan25J@68
==RTJudge@69
=@70
==RTColan@71
==RTJudge@72
==RTColan@73
==RTJudge@74
=@75DO~SetGlobal("NiteMove","RTF163",1)~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",15)~ THEN RTKniJu Intervene
@76
DO~ SetGlobal("RTColan","GLOBAL",16)~
==RTJudge@77
==RTKniJu@78
==RTJudge@79
==RTKniJu@80
==RTJudge@81DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTInCell","RTF061",7)~ THEN RTKniJu Intervene2
@82
DO~ SetGlobal("RTInCell","RTF061",8)~ EXIT

CHAIN
IF~Global("RTColan","GLOBAL",17)~ THEN RTKniJu Intervene2
@83
DO~ SetGlobal("RTColan","GLOBAL",18) EscapeArea()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTKniJu Alert
@84
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTTHKn Alert
@84
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTKniNeu Alert
@84
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~!Global("RTCityHost","GLOBAL",2)~THEN RTKniNeu NoAlert
@85 EXIT

CHAIN
IF~Global("NargaR","RTF063",1)~THEN CVNarga Free63
@86
DO~SetGlobal("NargaR","RTF063",2)~
==CVSan25J@87
==CVNarga@88
==CVSan25J@89
==CVNarga@90
=@91
==CVSan25J@92
==CVNarga@93
==CVSan25J@94
DO~ActionOverride("CVSandr",Attack("CVNarga"))~EXIT

CHAIN
IF~ Global("RTColan","GLOBAL",3)~ THEN RTAuct Sell1
@95
DO~SetGlobal("RTColan","GLOBAL",4)~
==RTSlav1@96
==RTSlar1@97
==Cultsa7@98
==RTAuct@99
==RTSlav1@100
==RTSlar1@97
==RTAuct@101
==RTCowl1@102
==RTCowl2@102
==RTAuct@103
==CVSan25J@102
==RTAuct@104
==RTBidd1@102
==Cultsa7@105
==RTAuct@106
==RTCowl1@107 DO~EscapeArea()~
==CVSan25J@102
==RTAuct@108 
==RTCowl2@109DO~EscapeArea()~
==RTBidd1@110
==RTAuct@111
==RTBidd1@112
==RTAuct@113
==CVSan25J@102
==RTAuct@114
==RTBidd1@115DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==RTAuct@116DO~TakePartyGold(13000) EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",5) ~THEN RTSlav1 Sell2
@117
DO~SetGlobal("RTColan","GLOBAL",6)RealSetGlobalTimer("Colano2","RTF060",50)~
==Cultsa7@118
==CVSan25J@119
==RTSlav1@120
==CVSan25J@121
==RTSlav1@122
==CVSan25J@123
==RTSlav1@124
==CVSan25J@125
==RTSlav1@126
==Cultsa7@127 DO~EscapeArea()~
==CVSan25J@128
=@129
==RTSlav1@130 DO~AddexperienceParty(18000) EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",7)~THEN RTColan Sell3
@131
DO~SetGlobal("RTColan","GLOBAL",8) SetGlobal("SanRTFPlot3","GLOBAL",2)~
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN@132
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN@133
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN@134
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN@135
==CVSan25J@136
==RTColan@137
==CVSan25J@138
==RTColan@139
=@140
==CVSan25J@141
==RTColan@142
=@143
==CVSan25J@8
==RTColan@144
=@145
==CVSan25J@146
==RTColan@147
==CVSan25J@148
==RTColan@149
==CVSan25J@150
==RTColan@151
=@28
=@152DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",9)~ THEN RTColan Property
@153
DO~SetGlobal("RTColan","GLOBAL",10)~
==CVSan25J@154
==RTColan@155
==CVSan25J@156
==RTColan@157
=@158
==CVSan25J@159
==RTColan@160
=@161
==CVSan25J@162
==RTColan@163
==CVSan25J@164
=@165
==RTColan@166
=@167
==CVSan25J@168
==RTColan@169
=@170 DO~GiveItemCreate("RTkeylig",Player1,1,0,0) EscapeArea()~
==CVSan25J@171EXIT

CHAIN
IF~Global("RTColan","GLOBAL",11)~ THEN RTColan Arrests
@172
==CVSan25J@173
==RTColan@174
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN@175
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN@176
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN@177
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN@178
==CVSan25J@179
==RTColan@180 DO~EscapeArea()~
END
++@181 DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTPris1")~EXIT
++@182DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTPris1")~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",12)~ THEN RTColan ArrestJ
@183
DO~SetGlobal("RTColan","GLOBAL",13)~
==RTJudge@184
==RTColan@185
==RTJudge@186
==RTRedwi1@187
==RTColan@188
==RTRedwi1@189
==RTJudge@190
==RTJudge IF~Global("RTNameVel","GLOBAL",1)~THEN@191
==RTJudge IF~Global("RTNamePri","GLOBAL",1)~THEN@192
==RTJudge IF~Global("RTNameAbe","GLOBAL",1)~THEN@193
==RTJudge IF~Global("RTNameCha","GLOBAL",1)~THEN@194
END
++@195 EXTERN RTJudge NoBail
++@196EXTERN RTJudge NoBail

CHAIN
IF~~THEN RTJudge NoBail
@197
==CVSan25J@198
==RTJudge@199
=@200
==RTRedwi1@201
==RTJudge@190
=@202
=@203EXIT

CHAIN
IF~ GlobalGT("RTColan","GLOBAL",7) AreaCheck("RTF052")~ THEN RTSlav1 Mill
@204
DO~ReputationInc(1)~
==CVSan25J@205
==RTSlav1@206
==CVSan25J@207
==RTSlav1@208
==CVSan25J@209
==RTSlav1@210
==CVSan25J@211
==RTSlav1@212
=@213
==CVSan25J@214
==RTSlav1@215
==CVSan25J@216
==RTSlav1@217
=@218 DO~EscapeArea()~
==CVSan25J@219 DO~AddJournalEntry(@2069,QUEST) ActionOverride("CVCultgi",EscapeArea())~EXIT

CHAIN
IF~Global("NargaR","RTF063",3)~THEN RTColan Reveal1
@220
DO~SetGlobal("NargaR","RTF063",4) SetGlobal("RTColan","GLOBAL",20) SetGlobal("RTCityHost","GLOBAL",1) SetGlobalTimer("RTCityHos","GLOBAL",1800) ~
==CVSan25J@221
=@222
==RTColan@223
==CVSan25J@224
==RTColan@225
=@226
=@227
==CVSan25J@228
==RTColan@229
==CVSan25J@230
==RTColan@231
=@232
==CVSan25J@233
==RTColan@234DO ~EscapeArea()~
==CVSan25J@235EXIT

CHAIN
IF~Global("Szassretr","RTF078",1)~THEN RTColan GoCita
@236
DO~SetGlobal("Szassretr","RTF078",2)~
==CVSan25J@237
==RTColan@238
==CVSan25J@239
==RTColan@240
==CVSan25J@241
==RTColan@242
==CVSan25J@243
=@244EXIT

