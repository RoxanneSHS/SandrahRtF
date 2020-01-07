CHAIN
IF WEIGHT #-2~ GlobalGT("SanBeginRTF","GLOBAL",1) Global("GreetRTF","LOCALS",0)~THEN SaMystP1 RTF1
~We swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
DO~ SetGlobal("GreetRTF","LOCALS",1)~
=~Psst, I know it is you in person and the God of Love and Hope - I assume you want your personal presence here not to be publicly known.~
==CVSAn25J~Right, my good Rhanthona, Sandrah of Waterdeep speaks to you.~
==SaMystP1 ~(Loud) Greetings, My lady Sandrah, Grandchild of Midnight, Guardian of the Cloak. It is a pleasure to greet you at your temple. ~
=~Enjoy your stay, My lady Sandrah, Grandchild of Midnight, Guardian of the Cloak. Everything is to your service. You may leave a small donation for the Temple if you require any service.~
END
++~Chosen Priestess Rhathona, we greet you but we have no need for the Temple's services today.~EXIT
++~Thank you for the warm welcome, Chosen Priestess Rhathona, what does your house offer to us?~DO~StartStore("CVMystem",LastTalkedToBy(Myself))~EXIT

CHAIN
IF WEIGHT #-2 ~GlobalGT("SanBeginRTF","GLOBAL",1)!InParty("CVSandr")~THEN CVRingo RTFNoSan
~Do not lose your faith in love and hope, friends, Mystra is not lost for those who believe in her.~
EXIT

CHAIN
IF WEIGHT #-5~GlobalGT("SanBeginRTF","GLOBAL",1) Global("GreetRTF","LOCALS",0)~THEN CVRingo RTF1
~My sweet child...ah, yes, I cannot but address you otherwise, my Goddess...~
DO~ SetGlobal("GreetRTF","LOCALS",1)~
==CVSAn25J~You cannot and you shall not, my mentor and teacher! Especially not as me and <CHARNAME> once again roam the Realms in our mortal avatars.~
==CVRingo~The resources of the temple are yours...ah, what am I babbling, this is your temple and it also serves the new God of Love and Hope besides now.~
==CVSAn25J IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN~We still try to get ourselves a rough picture of the situation here in Waterdeep and in Clan Orc Land. Can you share the information you have with us?~
==CVRingo IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN~It is not much we know here at the temple, only some of our scouts and messenger sent to investigate the trade route to the Stormhorns are missing and some unclear reports have been received about activities up there. This is in the hands of the civil authorities - Commander Shar-Teel. I heard she receives delegates from Athkatla and Baldur's Gate today to analyse the situation.~
==CVSAn25J IF~ GlobalLT("SanRTFPlot1","GLOBAL",2) ~THEN~Thank you, we should pay our good old Wildcat a visit then, <CHARNAME>.~
END
IF ~InParty("Leyala")~THEN REPLY~While we are here, we may also take a look to Undermountain.~EXIT
IF ~!InParty("Leyala")~THEN REPLY~While we are here, we may also take a look to Undermountain.~ +RTF1a

CHAIN
IF~~THEN CVRingo RTF1a
~May I point <CHARNAME>'s attention to one of <PRO_HISHER> disciples then. You may remember the girl you once saved with giving your own blood to her.~
END
++~Leila, wasn't it?~+ RTF2
++~Leyala, was her name, right?~+ RTF2
++~I remember the event but cannot recall her name, what about her?~+ RTF2

CHAIN
IF~~THEN CVRingo RTF2
~Leyala was educated and trained by the temple and became one of the first believers of <CHARNAME>. She has trained to use her body in every possible way both as a weapon and as an ambassador of the God of Love and Hope. ~
=~She could kill a yeti with a single slash or her bare hand - or break a man's heart with a single smile...~
==CVSAn25J ~She is a priestess of Love?~
==CVRingo~Not a priestess, but a nun. She has trained with a monk named Iylos of the Order of the Striking Scorpion at Ravencrest for some time and learned their fighting techniques. She is much interested to leave the temple now and experience the world...~
==CVSAn25J ~...and at the side of the one she follows in her belief - interesting.~
END
++~Let us check if she wants to join us then.~EXIT
++~Interesting, but we have no need for a monk - I mean a nun - in our ranks.~EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("HintMys","LOCALS",0)~THEN NarQMes MidnHi
~The daughter of the house returns. Greetings, Miss Sandrah.~
DO~SetGlobal("HintMys","LOCALS",1)~
==CVSan25J~How refreshing, good Landrel, to be treated like who I really am.~
==NarQMes~Oh, Sandrah, goddesses and former goddesses grace this house almost daily you must know.~
==CVSan25J~Grandmother is here?~
==NarQMes~Midnight and Drizzt would be most delighted by thy visit, I'd guess.~
==CVSan25J~She and Drizzt? Finally!~
==NarQMes~They have taken residence at the park house in the north of our garden.~
==CVSan25J~As a child I had always thought of that wonderful place as a home where gods could retire.~
==NarQMes~A valid observation.~
==CVSan25J~We can access it from Mystra's altar in the garden.~EXIT

APPEND CVHarbor
IF WEIGHT #-6~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN BEGIN WDTravl
SAY~Anythin' I can help ya with, guys?~
IF~~THEN REPLY~We're looking for a ship passage to Amn.~ GOTO Amn
IF~~THEN REPLY~We're looking for a ship passage to Baldur's Gate.~ GOTO BaG
IF~~THEN REPLY~No, nothing today.~EXIT
END

IF~~THEN BEGIN Amn
SAY~Aye, that's 2000GP for y'all.~
IF~~THEN DO~StartCutSceneMode()
Wait(4)
FadeToColor([30.0],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[983.3532],7))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[983.3532],7))
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
TextScreen("ToAmnH")
Wait(2)
TakePartyGold(2000)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN BaG
SAY~Aye, that can be arranged, 1000GP it costs.~
IF~~THEN DO~StartCutSceneMode()
Wait(4)
FadeToColor([30.0],0)
ActionOverride(Player1,LeaveAreaLUA("BG1200","",[2089.1995],4))
ActionOverride(Player2,LeaveAreaLUA("BG1200","",[2089.1995],7))
ActionOverride(Player3,LeaveAreaLUA("BG1200","",[2089.1995],11))
ActionOverride(Player4,LeaveAreaLUA("BG1200","",[2089.1995],0))
ActionOverride(Player5,LeaveAreaLUA("BG1200","",[2089.1995],8))
ActionOverride(Player6,LeaveAreaLUA("BG1200","",[2089.1995],5))
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
DayNight(MIDNIGHT)
DayNight(NOON)
TextScreen("ToBldr")
Wait(2)
TakePartyGold(1000)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~EXIT
END
END

