CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",0)~ THEN Thalan RTF1
@0
DO~SetGlobal("RtFThal","LOCALS",1) ~
==CVSan25J @1
==Thalan@2
==CVSan25J @3
==Thalan@4
==CVSan25J@5
==Thalan@6
==CVSan25J@7
==Thalan IF ~Global("SanRompath","GLOBAL",1)~THEN@8
==Thalan IF ~Global("SanRompath","GLOBAL",2)~THEN@9
==CVSan25J@10
=@11
==Thalan IF~InParty("RTMeli")~THEN@12
==RTMeli IF~InParty("RTMeli")~THEN@13
==CVSan25J IF~InParty("RTMeli")~THEN@14
==Thalan IF~InParty("RTMeli")~THEN@15
==CVSan25J IF~InParty("RTMeli")~THEN@16
==CVSan25J@17
==Thalan@18DO~TakePartyItem("RTFlui") TakePartyItem("RTDScar") TakePartyItem("Misc65")~
=@19
END
++@20 + RTF1b
++@21 + RTF1b

CHAIN
IF~~THEN Thalan RTF1b
@22
=@23
END
++@24EXIT

CHAIN
IF WEIGHT #-3~ Global("RtFThal","LOCALS",1) !PartyHasItem("RTTalens")~ THEN Thalan RTF1n
@25EXIT

CHAIN
IF WEIGHT #-3~ Global("RtFThal","LOCALS",1) PartyHasItem("RTTalens")~ THEN Thalan RTF1y
@26
DO~SetGlobal("RtFThal","LOCALS",2)  SetGlobalTimer("RTThalanStudy","LOCALS",ONE_DAY) TakePartyItem("RTTalens") AddexperienceParty(11000)~
=@27
END
++@28DO~RevealAreaOnMap("BG2300")~EXIT
++@29EXIT

CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",2)!GlobalTimerExpired("RTThalanStudy","LOCALS")~ THEN Thalan RTF2
@30EXIT

CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",2)GlobalTimerExpired("RTThalanStudy","LOCALS")~ THEN Thalan RTF3
@31
DO~SetGlobal("RtFThal","LOCALS",3) SetGlobal("SanRTFPlot1","GLOBAL",4)~
==CVSan25J@32
==Thalan@33
==CVSan25J@34
==Thalan@35
=@36
==CVSan25J@37
==Thalan@38
==CVSan25J@39
==Thalan@40
END
++@41+ RTF4

CHAIN
IF~~THEN Thalan RTF4
@42
==CVSan25J@43
==Thalan@44
==CVSan25J@45 
=@46
==Thalan@47
==CVSan25J@48
END
++@49 + RTF5
++@50 + RTF5

CHAIN
IF~~THEN Thalan RTF5
@51
==CVSan25J@52
==Thalan@53
==CVSan25J@54
END
++@55 DO~EraseJournalEntry(@1730) AddJournalEntry(@2044,QUEST)~EXIT

CHAIN
IF WEIGHT #-3~Global("RTMeliQuest","GLOBAL",1)~THEN Thalan Melq1
@56
DO~SetGlobal("RTMeliQuest","GLOBAL",2)~
==RTMeli@57
==Thalan@58
=@59
==CVSan25J@60
==Thalan@61
==RTMeli@62
==Thalan@63
==RTMeli@64
==Thalan@65DO~CreateVisualEffectObject("SPUNHOLY",Myself) ActionOverride("RTMeli",AddSpecialAbility("CVDra19"))Wait(2)ActionOverride("Thalantyr",EscapeArea()) ~ EXIT