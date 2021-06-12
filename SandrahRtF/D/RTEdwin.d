BEGIN RTEdwin

IF~Global("Opening","RTF082",7)~THEN BEGIN NewEd1
SAY@0
IF~~THEN REPLY@1GOTO NewEd2
IF~~THEN REPLY@2 GOTO NewEd2
IF~~THEN REPLY@3 GOTO NewEd2
IF~~THEN REPLY@4GOTO NewEd2b
END

IF~~THEN BEGIN NewEd2
SAY@5
IF~~THEN REPLY@6DO~SetGlobal("Opening","RTF082",8) SetGlobal("SanRTFPlot3","GLOBAL",4)~ EXTERN RTCandre NewEd3
END

IF~~THEN BEGIN NewEd2b
SAY@7
IF~~THEN GOTO NewEd2
END

CHAIN
IF~Global("Opening","RTF082",1)~ THEN RTOdLuc FoundCan1
@8
DO~SetGlobal("Opening","RTF082",2) SetGlobal("SanRTFPlot3","GLOBAL",3)~
==RTCandre@9EXIT

CHAIN
IF~AreaCheck("RTF082") GlobalLT("Opening","RTF082",4)~THEN RTOdButl Hint2
@10
==CVSan25J@11
==RTOdButl@12
==CVSan25J@13 EXIT

CHAIN
IF~AreaCheck("RTF082") GlobalGT("Opening","RTF082",3)~THEN RTOdButl Hint3
@10
EXIT

CHAIN
IF~Global("Opening","RTF082",3)~ THEN RTOdLuc FoundCan2
@14
DO~SetGlobal("Opening","RTF082",4)~
==RTCandre@15
==CVSan25J@16
==RTCandre@17
==CVSan25J@18
==RTCandre@19
==CVSan25J@20
==RTCandre@21
==RTCandre IF~GlobalGT("Cowscroll","GLOBAL",3)~ THEN@22
==RTCandre @23
==CVSan25J@24
==RTCandre@25 EXIT

CHAIN
IF~Global("Opening","RTF082",5)~THEN RTColan InredHod1
@26
DO~SetGlobal("Opening","RTF082",6)~
==CVSan25J@27
==RTCandre@28
==RTColan@29
==RTCandre@30
==RTColan@31
END
++@32+ InredHod2
++@33 + InredHod2

CHAIN
IF~~THEN RTColan InredHod2
@34
==RTCandre@35
==CVSan25J@36
==RTColan@37
==CVSan25J@38
==RTCandre@39EXIT

CHAIN
IF~~THEN RTCandre NewEd3
@40
==CVSan25J@41
==RTEdwin@42
=@43
==CVSan25J@44
==RTCandre@45
END
++@46 + NewEd4
++@47 + NewEd4

CHAIN
IF~~THEN RTCandre NewEd4
@48
==RTEdwin@49
=@50
=@51
==RTCandre@52
==RTEdwin@53
==RTCandre@54
==RTEdwin@55
==RTCandre@56
=@57
==CVSan25J@58DO~SetGlobal("RTMetCandre","GLOBAL",4)~
EXIT

CHAIN
IF~Global("SecTalk","RTF087",1)~THEN RTCandre Plans1
@59
DO~SetGlobal("SecTalk","RTF087",2)~
==CVSan25J@60
==RTCandre@61
END
++@62+ Plans2
++@63+ Plans2

CHAIN
IF~~THEN RTCandre Plans2
@64
==RTEdwin@65
=@66
==RTCandre@67
==CVSan25J@68
==RTCandre@69
==CVSan25J@70
==RTCandre@71
=@72
==CVSan25J@73
==RTEdwin@74
==RTCandre@75
END
++@76 EXTERN CVSan25J Plans3
++@77EXTERN CVSan25J Plans3
++@78EXTERN CVSan25J Plans3

CHAIN
IF~~THEN CVSan25J Plans3
@79
==RTCandre@80
=@81
==RTEdwin@82
==CVSan25J@83
END
++@84 EXTERN RTCandre Plans4

CHAIN
IF~~THEN RTCandre Plans4
@85
==CVSan25J@86
==RTEdwin@87
==RTCandre@88
==CVSan25J@89DO~AddJournalEntry(@2077,QUEST) EraseJournalEntry(@2069) EraseJournalEntry(@2063) EraseJournalEntry(@2062) EraseJournalEntry(@2060)~EXIT

CHAIN
IF~Global("3Talk","RTF109",1)~ THEN RTCandre Plans5
@90
DO~SetGlobal("3Talk","RTF109",2)~
==CVSan25J@91
==RTSamas@92
==CVSan25J@93
==RTColan@94
==RTCandre@95
==CVSan25J@96
==RTSaemon@97DO~EscapeArea()~
END
++@98 EXTERN RTEdwin Plans6

CHAIN
IF~~THEN RTEdwin Plans6
@99
=@100
=@101
==CVSan25J@102
==RTEdwin@103
==RTCandre@104
==RTSamas@105
==RTColan@106
==CVSan25J@107
==RTColan@108
==CVSan25J@109
END
++@110 EXTERN RTColan Plans7
++@111EXTERN RTColan Plans7

CHAIN
IF~~THEN RTColan Plans7
@112
==RTEdwin@113
==RTCandre@114
==CVSan25J@115
==RTColan@116
==CVSan25J@117
==RTColan@118DO~EscapeArea()~
==RTEdwin@119 DO~EscapeArea()~
==RTSamas@120DO~EscapeArea()~
==RTCandre@121DO~AddJournalEntry(@2078,QUEST) AddJournalEntry(@2079,QUEST)EraseJournalEntry(@2077)~ EXIT

CHAIN
IF~AreaCheck("RTF082")~THEN RTSlav1 Below
@122
==Cultsa7@123EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",1) GlobalLT("CitEntpl","GLOBAL",2)~THEN RTODButl SeeEddiPlot51
@124
DO~SetGlobal("CitEntpl","GLOBAL",2) ~
==CVSan25J@125
==RTODButl@126
END
++@127EXIT
++@128EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",1) GlobalLT("CitEntpl","GLOBAL",3)~THEN RTCandre GetIthr1
@124
DO~SetGlobal("CitEntpl","GLOBAL",3)SetGlobal("SanRTFPlot5","GLOBAL",2) ~
==CVSan25J@129
==RTEdwin@130
==CVSan25J@131
==RTCandre@132
==CVSan25J@133
==RTCandre@134
==CVSan25J@135
==RTCandre@136
==CVSan25J@137
=@138
==RTEdwin@139
END
++@140+ GetIthr2
++@141 + GetIthr2
++@142 + GetIthr2
++@143 + GetIthr2

CHAIN
IF~~THEN RTCandre GetIthr2
@144
==RTEdwin@145
==RTCandre@146
==CVSan25J@147
==RTEdwin@148
==RTCandre@149DO~EscapeArea()~
==RTEdwin@150 DO~SetGlobal("Chapter","Global",28) AddJournalEntry(@2087,QUEST) EscapeArea()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",7)~THEN RTCandre Iltdef1
@151
DO~SetGlobal("CitEntpl","GLOBAL",8)~
END
++@152EXTERN CVSan25J Iltdef2

CHAIN
IF~Global("CitEntpl","GLOBAL",7)~THEN RTEdwin Iltdef1e
@151
DO~SetGlobal("CitEntpl","GLOBAL",8)~
END
++@152EXTERN CVSan25J Iltdef2

CHAIN
IF~~THEN  CVSan25J Iltdef2
@153
=@154
==RTCandre@155
==RTEdwin@156
==CVSan25J@157
==RTCandre@158DO~EscapeArea()~
==RTEdwin@159DO~EscapeArea()~EXIT

CHAIN
IF~Global("AdmiDefend","RTF070",1)~THEN RTCandre Iltdef3
@160
DO~SetGlobal("AdmiDefend","RTF070",2)~
END
++@161 EXTERN CVSan25J Iltdef4

CHAIN
IF~Global("AdmiDefend","RTF070",1)~THEN RTEdwin Iltdef3e
@160
DO~SetGlobal("AdmiDefend","RTF070",2)~
END
++@161 EXTERN CVSan25J Iltdef4

CHAIN
IF~~THEN  CVSan25J Iltdef4
@162
==RTCandre@163
==RTEdwin@164
==CVSan25J@165
==RTEdwin@166
==CVSan25J@167
==RTCandre@168
END
++@169+ Iltdef5
++@170 + Iltdef5

CHAIN
IF~~THEN  CVSan25J Iltdef5
@171
=@172
==RTCandre@173
==CVSan25J@174
==RTEdwin@175DO~EscapeArea() ActionOverride("RTCandre",EscapeArea())~EXIT
