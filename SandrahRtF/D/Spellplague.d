BEGIN RTSPTa1
BEGIN RTSPEil1

CHAIN
IF~Global("RTPriQ","BG4800",2)~THEN RTSPEil1 Quar
~Why do you hold me up, slave of the Stormlord?~
DO~SetGlobal("RTPriQ","BG4800",3)~
==RTSPTa1~Your time is over, you're on the wrong side these days, my dear.~
==RTSPEil1~You're judging prematurely, it is your god who has lost the powers that the Weave and Mystra had to let him participate in.~
==RTSPTa1~Your Eilistraee was just a dark copy of the defeated Mystra, you and all her followers will bow before the Chaos!~
==RTSPEil1~Haven't you noticed yet that your spells fail and your god looses followers daily. Even in death Mystra triumphs over her opponents.~
==RTSPTa1~Bow or die!~DO~Enemy() Attack("RTSPeil1") ActionOverride("Pellig3",Attack("RTSPTal1")~EXIT

CHAIN
IF~ Global("RTPriQ","BG4800",3)~THEN RTSPEil1 Quar2
~Such activities were to be expected.~
DO~SetGlobal("RTPriQ","BG4800",4)~
==PelligJ~The gods and their priests feel the missing support of the Weave. Some may hope they can rely on their brutality and force while others seek in vain to replace Mystra's gifts with those of the Shadow Weave.~
==RTSPEil1~Those who follow Eilistraee do not loose their trust and hope into the one who always stood side by side with our goddess.~ DO~EscapeArea()~
==PelligJ~Mystra's blessing be with you.~DO~AddexperienceParty(2150)~EXIT

CHAIN
IF~Global("RTPriQ2","CVElm4",1) AreaCheck("CVELM4")~ THEN RTYouSha InWDSP
~ There you are again, see we have come even though we heard a lot of rumours about Mystra's death and the spellplague.~
DO~SetGlobal("RTPriQ2","CVElm4",2) ~
==RTMoninj~They say here that a god or goddess lives by the faith and dedication of her followers.~
==RTYouSha~Mystra's power is unbroken but we had a number of encounters with followers of other faiths and gods who loose influence almost daily.~
==PelligJ~Some gods only hold their disciples by the power and magic they promise them. Faith in them goes just as deep as the believers are visibly rewarded and is lost when the incentives fail.~
==RTMoninj~I have had long talks with the priests here just as Sandrah advised and I believe in what Mystra stands for.~ DO~EscapeArea()~
==PelligJ~If this is so, then Mystra is alive.~
==RTYouSha~Your priestess is no longer travelling with you?~DO~EscapeArea()~
==PelligJ~She went ahead to prepare for our next move against <CHARNAME>'s and Mystra's enemies.~
END
++~*Pelligram's words are expressed with such confidence that for a moment you are persuaded to believe that your beloved companion Sandrah has not died.*~EXIT