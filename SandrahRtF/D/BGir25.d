BEGIN BGir25

CHAIN
IF~Global("PellGir","LOCALS",1)~THEN BGir25 PellJel
~*Giran studies Pelligram's elegant movements intensely.*~
=~I have always admired her grace and beauty in her animal form. Her human avatar is nearly as perfect, given the limitations we humans have.~
DO~SetGlobal("PellGir","LOCALS",2)~
==Bizy25~Grrrr, you will see in a second how a human girl can turn into a panther and rip you to shreds an' I dont give no damn if that looks graceful to you or not!!~
==BGir25~ Izzy? Is that jealousy? I was just expressing a ranger's admiration for a beautiful creature...~
==Bizy25~*Smack*. Has your nature observation taught you nuthin, drooling orc? Give her another look and I will digest your eyeballs with no need for a pinch of salt or spice.~
==BGir25~*Grins vicously*. You are a real hot red head, my lovely.~
==Bizy25~YOU...wait...I know that grin...you...oh, you try to play games with ol' Izzy gettin me all hot and jealous for ya entertainment!~
==BGir25~*Laughs*. Now that your blood is so hot and boiling, how about some entertainment for just the two of us?~
==Bizy25~You want a wildcat - you will get one!~
=~*She flings herself onto the unprepared ranger and a moment later the couple rolls out of sight below a nearby group of bushes.*~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("GhotGir","LOCALS",1)~THEN BGir25 GhotFi
~So here it has happened, the defeat of general Ghotal.~
DO~ SetGlobal("GhotGir","LOCALS",2)~
==BSandr25~A piece of history that has long been denied by my folks but today can be seen as an important event that has shaped the Realms.~
==BGir25~He was not of my blood, nevertheless being Shauhana's son by heart I feel he is part of my heritage. The other part of my heritage are those he fought against.~
==BSandr25~You unite both aspects without judging either side, Giran. Your existence alone may well be the symbol of a peaceful time.~
==BGir25~Recent events have shown that such a peace is something we can never take for granted. We must even be willing to fight to maintain it.~EXIT

CHAIN
IF~Global("RTGiranNash","BG3300",1) ~THEN BGir25 Nashrev
~Old Beregost, it looks like nothing ever changes in these sleepy streets and dormant houses.~
DO~SetGlobal("RTGiranNash","BG3300",2)~
==BSandr25~The little boy who left here long ago has definitely changed.~
==BGir25~Faerun has been through turmoil before and is facing it again but Nashkel and Beregost and their people just remain the villagers they've always been, it seems to me.~
==BSandr25~<CHARNAME> and me were roughly your age when we faced this village for the first time. It is hard to believe what we have been through since that day.~
==BGir25~A bit of that is even true for me. I think I've seen already more of Toril than all of the people here in Beregost together.~
==BSandr25~(Laughs) And that is just the beginning.~
==BGir25~Still, ignorance may be bliss - they seem so at peace and happy with all they don't know.~
=~(Laughs) Just like the moose grazing on the Hornswamp while gods walk by.~EXIT