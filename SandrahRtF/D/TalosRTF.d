CHAIN
IF~Global("RTFTalAmb","BG3200",1)~THEN CVTalop1 Thalameet
~Like so many times before I find you in a place where you should not be, my dear.~
DO~SetGlobal("RTFTalAmb","BG3200",2)~
==CVSAn25J~I am reluctant to imagine our meeting here is coincidence. I tend to think it is more like one of the players here prematurely reveals his identity.~
==CVTalop1~ Little one, you always have been and are once again the epitome of bad timing.~
==CVSAn25J~You mean that <CHARNAME> and me have come a bit too early for your taste?~
=~Whatever you and your meddlesome Storm Lord had in mind was not yet ready up in the Stormhorns when we intervened.~
==CVTalop1~That foolish old mage over there refuses to cooperate and is protected by some mighty power from our reach...~
==CVSAn25J~Good old Thalantyr is under Mystra's protection. We have business with him and I cannot imagine you will be happy about the outcome.~
==CVTalop1~There will be no such results as you will never reach his doorstep. And afterwards...may he rot in his tower under his protective spells forever, who cares...~EXIT

CHAIN
IF~Global("InRTF","ar61pb",2)~THEN CVTalos GoneRTF1
~Mystra!~
DO~SetGlobal("InRTF","ar61pb",3)~
==CVSan25J~Talos.~
==CVTalos IF~Global("SanRomPath","GLOBAL",1)~THEN ~It seems that you and that god of love and hope have blown my champions off the chess board.~
==CVTalos IF~Global("SanRomPath","GLOBAL",2)~THEN ~It seems that you and that goddess of love and hope have have blown my champions off the chess board.~
==CVSan25J~We did. Your involvement with Szass Tam ends here.~
==CVTalos~You think so? Did you not forget someone?~
==CVSan25J~In case you refer to Velsharoon it seems that your disciple has outgrown his master and follows his own plans by now - his and Szass' to be precise, but no longer yours.~
==CVTalos~The Storm Lord is not defeated so easily...~
==CVSan25J~I tend to object. Today you are facing us alone. Dare to attack and this may well be your end. Nothing is here to protect you in your mortal avatar now.~
DO~ClearAllActions() StartCutSceneMode() CreateCreatureObjectDoor("solar",Player1,0,0,0)Wait(6) EndCutSceneMode() Wait(2) ActionOverride("Solar",StartDialogueNoSet([PC]))~EXIT

CHAIN
IF WEIGHT #-12~Global("InRTF","ar61pb",3)~THEN Solar GoneRTF2
~ By verdict of AO, the Overlord, you are called back to Celestia, Talos!~
DO~SetGlobal("InRTF","ar61pb",4)~
=~You will not be permitted to set foot on the Primary Plane until this current crisis is decreed finished by AO.~
==CVSan25J~Solar, give AO my message that Mystra requires that Talos is not to set foot on the Prime EVER again. This is MY price for letting him off the hook today.~
==CVTalos~Baah, I doubt that YOU can request anything from the Overlord!~
==Solar~Do you really want me to deliver such a message?~
==CVSan25J~I insist, good Solar. The Overlord will not punish the messenger. And He knows where to find ME just in case he should have a problem with that arrangement.~
==Solar~I will do as you request. Take care, Mystra, <CHARNAME>. Take care, my Pelligram.~
=~Talos, it is time to leave.~DO~ActionOverride("CVTalos",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("Solar",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ~EXIT