BEGIN RTSlGol

IF~Global("AmbSeal","RTF046",5)~THEN BEGIN 0
SAY@0
IF~GlobalLT("SanRTFPlot4","GLOBAL",7)~THEN REPLY@1 GOTO 1
IF~Global("SanRTFPlot4","GLOBAL",7)~THEN REPLY@1 GOTO 4
IF~~THEN REPLY@2 GOTO 2
IF~~THEN REPLY@3 GOTO 3
END

IF~~ THEN BEGIN 2
SAY@4
IF~~THEN EXIT
END

IF~~THEN BEGIN 3
SAY@5
IF~~THEN REPLY@6EXIT
END

IF~~ THEN BEGIN 1
SAY@4
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
SmallWait(10)
StartMovie("ToThay")
Wait(2)
StartCutScene("CVcut406")~ EXIT
END

IF~~THEN BEGIN 4
SAY@4
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride(Player1,DisplayStringWait(Myself,@1947)
StartCutScene("CVcut408")~ EXIT
END
