BEGIN RTSlGol

IF~Global("AmbSeal","RTF046",5)~THEN BEGIN 0
SAY~You have called the Seal's servant, you who are of the Bloodline.~
IF~GlobalLT("SanRTFPlot4","GLOBAL",7)~THEN REPLY~ Take us through the portal, servant.~ GOTO 1
IF~Global("SanRTFPlot4","GLOBAL",7)~THEN REPLY~ Take us through the portal, servant.~ GOTO 4
IF~~THEN REPLY~ We will return later to make the journey.~ GOTO 2
IF~~THEN REPLY~Can someone not of the Bloodline pass the portal?~ GOTO 3
END

IF~~ THEN BEGIN 2
SAY~ As is my mistress' wish.~
IF~~THEN EXIT
END

IF~~THEN BEGIN 3
SAY~No. There is the current one and the one who was mother to her mother.~
IF~~THEN REPLY~Ha, these fools! They can never pass!~EXIT
END

IF~~ THEN BEGIN 1
SAY~ As is my mistress' wish.~
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
SmallWait(10)
StartMovie("ToThay")
Wait(2)
StartCutScene("CVcut406")~ EXIT
END

IF~~THEN BEGIN 4
SAY~ As is my mistress' wish.~
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride(Player1,DisplayStringWait(Myself,@1947)
StartCutScene("CVcut408")~ EXIT
END
