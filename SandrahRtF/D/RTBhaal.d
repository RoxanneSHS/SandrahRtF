BEGIN RTBhaal

IF~AreaCheck("rtf077") See(Player1) Global("Bhaal77","rtf077",0)~THEN BEGIN Ghost1
SAY~The worst of all traitors - the worst of all spawns - the one who could have had all but betrayed the heritage and the blood.~
IF~~THEN REPLY~Laughable dead god - I call myself the one who was never betrayed by YOU.~GOTO Ghost2
IF~~THEN REPLY~Thank you for the compliment, *Father*, no curse could make me prouder.~GOTO Ghost2
END

IF~~THEN BEGIN Ghost2
SAY~You think you made the clever choice, but the one who calls himself by MY name now will teach you your error.~
IF~~THEN REPLY~This was once your temple as it is now Cyric's, just like the name. I am not eager to regain any of the two.~GOTO Ghost3
IF~~THEN REPLY~If you try to warn me - I know well who my enemies were once and who they are now. You are not among them anymore, dead one.~ GOTO Ghost3
END

CHAIN
IF~~THEN RTBhaal Ghost3
~You are just a new god, among many others. Many do not trust you or accept you. For this they have turned against you - and you, unfamiliar with all your new powers, will go down in this struggle. Cyric killed Bhaal before and took my portfolio of murder. ~
DO~SetGlobal("Bhaal77","rtf077",1)~
==CVSan25J~ <CHARNAME>'s portfolio is of Love and Hope, your taint is cleaned forever. This is the wrong place to look for what is gone for all times.~
==RTBhaal~What about followers? Gods die without them. You might be known throughout the Sword Coast, but that is not enough. How many worshippers do you think you have? Perhaps some in your party? Even if you do have some followers, you are still weak. Gods - their strength is for one thing related to their number of faithful followers. You have seen this in example with Amaunator.~
==CVLey25J IF~InParty("Leyala")~THEN~The dedication of <CHARNAME>'s followers is of a kind you have never encountered.~
==CVSan25J~No other god has ever been strengthened by the love of another goddess and her followers. This is a new era beginning where old concepts may no longer apply.~
==RTBhaal~Love is the weak concept of an inexperienced and weak god. The evil gods will have an easy target with you and I am sure they would rather have your power for themselves then see you violate such unholy power. Ao will not protect you. He has no reason to. You are a sitting duck ready to be shot on sight.~ DO~DestroySelf()~
END
++~I never had a need to become the new 'Lord of Murder'! Not even the wise Alaundo ever said anything of Bhaal really returning. He mentioned the forthcoming war, but never an ascension. It is not prophesied that Bhaal would return due to his children and neither, that any of his children would be the new Bhaal. I became the God of my own choice and my own portfolio - you stay dead.~EXIT
