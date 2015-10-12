CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1)Global("ShauMes","RTF002",0) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3)~THEN Shaorc1 Hint1
~You friends of our princess, yes? Bad things happen out there.~
DO~SetGlobal("ShauMes","RTF002",1)~
==CVSan25J~ We are here to investigate the strange occurances in this area. What have you seen?~
==Shaorc1~Scouts went out many days ago for Waterdeep. Must return already if not bad happened.~
==CVSan25J~Have some from the south arrived, some send by the towns?~
==Shaorc1~No one passed except trader from the pass to bring news of battle.~
==CVSan25J~A battle? Between whom?~
==Shaorc1~We not know, not allowed to go to Neutral Zone, Queen and Minsc forbid by death penalty.~
==CVSan25J~But you have not send any warriors out, right?~
==Shaorc1~Not over bridge - an no other way I know of.~EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3) ~THEN Shaorc3 Hint2
~Strange things moving out there, can hear. Also strange things further south along the river.~
==CVSan25J~South from here as well? We should give it a look, <CHARNAME>.~EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF030") Global("HeadIn","RTF030",0) ~THEN Shaorc3 Hint7
~The leaders are inside. Go straight through the hall and enter conference room at other side.~
DO~SetGlobal("HeadIn","RTF030",1) ~
==CVSan25J~Let us do that, <CHARNAME>.~EXIT

CHAIN
IF~Global("SanRTFPlot2","GLOBAL",2) AreaCheck("RTF030")  ~THEN Shaorc3 HintF
~You should clear the area from these monsters first before you go below for rescue.~
==CVSan25J~Let us do that, <CHARNAME>.~EXIT

CHAIN
IF~Global("SanRTFPlot2","GLOBAL",2) AreaCheck("RTF030")  ~THEN WDWatch Hintg
~You should clear the area from these monsters first before you go below to rescue our leaders.~
==CVSan25J~Let us do that, <CHARNAME>.~EXIT

CHAIN
IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("RTF002") GlobalLT("SanRTFPlot1","GLOBAL",3) ~THEN Shaorc7 Hint3
~When not fog you see can corpses and yeti plundering. Who's bodies those are?~EXIT

CHAIN
IF~Global("ShauMes","RTF002",2) ~THEN CVSan25J Orchint002
~It is time to investigate the pass and its surrounding carefully, <CHARNAME>. I do not trust this strange trader who supplies the reports very much.~
DO~SetGlobal("ShauMes","RTF002",3) ~
=~If I could only remember why the name sounds familiar...~
END
++~I recall no one of that name, Nerkio...~EXIT
++~Someone we met long ago in Amn in turmoiled times. No one important enough to remember.~EXIT


BEGIN RTDuefi
BEGIN RTDuemin

CHAIN
IF~Global("Duerg","RTF003",2)~THEN CVSan25J Miners
~What do you do here?~
DO~SetGlobal("Duerg","RTF003",3)~
==RTDuefi~Intruders again!~
==RTDuemin~Guess, little genius, we do what all good duergar do - diggin'!~
==CVSan25J~Digging what? Looks like a tunnel to me.~
==RTDuefi~To me it looks like a grave - your grave.~DO~Attack("CVSandr")~
==CVSan25J~You already forgot to bury the orc scouts you killed.~
==RTDuemin~We'll do it all in one big cleanup.~DO~Attack(Player1)~EXIT

CHAIN
IF~Global("Duerg","RTF003",4)~THEN CVSan25J Scouts
~So this is where Shauhana's scouts have ended.~
DO~SetGlobal("Duerg","RTF003",5)~
END
++~What did they do here? ~+ Scouts2

CHAIN
IF~~THEN CVSan25J Scouts2
~They must have found these duergar by coincidence.~
==CVGIR25J IF~InParty("CVGiran")~THEN~This tunnel - the direction goes to the trader's hut on the Hornswamp fields...~
==CVSan25J ~ At least we are sure that no message has reached Shar-Teel.~EXIT

APPEND SHAORC6
IF~GlobalGT("SanBeginRTF","GLOBAL",1) GlobalLT("SanRTFPlot1","GLOBAL",2)~ THEN BEGIN palace
SAY~Greetings, friends of the Queen. You have returned for Shauhana? ~
IF~~THEN REPLY~We need to see Shauhana urgently, do you know where we find her?~GOTO palace2
END

IF~~THEN BEGIN  palace2
SAY~Hai 'Ulthak is capitale now - our queen lives in palace.~
IF~~THEN REPLY~I see, the clans have restored the ancient palace we once saw near Nib's sky ship.~EXIT
END
END