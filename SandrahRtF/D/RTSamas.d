BEGIN RTSamas

CHAIN
IF~Global("RTSamThrone","GLOBAL",2)~THEN RTSamas First1
@0
DO~SetGlobal("RTSamThrone","GLOBAL",3)~
==RTSaemon@1
==RTSamas@2
==RTSamas IF~Global("SanRomPath","GLOBAL",1)~THEN@3
==RTSamas IF~Global("SanRomPath","GLOBAL",2)~THEN@4
==RTSaemon@5
==CVSan25J@6
==RTSamas@7
==CVSan25J@8
==RTSamas@9
==CVSan25J@10
==RTSamas@11
==RTSaemon@12
==RTSamas@13
==CVSan25J@14
==RTSamas@15
==CVSan25J@16
==RTSamas@17
==CVSan25J@18
==RTSamas@19
=@20
==CVSan25J@21
==RTSaemon@22
==CVSan25J@23
==RTSamas@24
==CVSan25J@25
==RTSamas@26
==CVSan25J@27
==RTSamas@28
==CVSan25J@29
==RTSamas@30
==CVSan25J@31
==RTSamas@32
==CVSan25J@33 DO~RevealAreaOnMap("ar60pb") AddJournalEntry(@2075,QUEST)~
==RTSamas@34
=@35
==CVSan25J@36EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",9)~THEN RTSamas Trait1
@37
DO~SetGlobal("CitEntpl","GLOBAL",10)~
==RTCandre@38
==CVSan25J@39
==RTODButl@40
==RTSamas@41
==CVSan25J@42
==RTODLuc@43
==RTCandre@44
==RTODLuc@45
==RTEdwin@46DO~StartCutSceneMode() 
FadeToColor([30.0],0)
Wait(3)
ActionOverride("CVSandr",JumpToPoint([2048.908]))
ActionOverride("RTSamas",JumpToPoint([2130.894]))
Wait(4) 
FadeFromColor([30.0],0)
MoveViewPoint([2130.894],INSTANT)
SetGlobal("CitEntpl","GLOBAL",11)
EndCutSceneMode()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",11)~THEN RTSamas Trait2
@47
DO~SetGlobal("CitEntpl","GLOBAL",12)~
==CVSan25J@48
==RTSamas@49
==CVSan25J@50
==RTSamas@51
==CVSan25J@52
==RTSamas@53
=@54
==CVSan25J@55
==RTSamas@56
=@57DO~EscapeArea()~EXIT

