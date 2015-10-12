BEGIN RTBranw

IF~Global("RTFoundBran","GLOBAL",1)~THEN BEGIN Auril5
SAY~How can Auril support thee, my friends?~
IF~~THEN REPLY~We are in need of some supplies~ DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
IF~~THEN REPLY~We need a temple's service.~ DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
IF~~THEN REPLY~Everything is fine, farewell.~EXIT
END

IF~~THEN BEGIN Auril2
SAY~'tis here I must stay until the battle begins. My temple's wares are at your disposal.~
IF~~THEN DO~StartStore("RTAuri",LastTalkedToBy(Myself))~EXIT
END

CHAIN
IF~ AreaCheck("RTF095") GlobalGT("SanRTFPlot3","GLOBAL",3)~ THEN RTBranw Auril3
~By the icy breath of Auril! 'Tis good to see familiar faces once again.~
DO~SetGlobal("RTFoundBran","GLOBAL",1)~
==CVSan25J~Branwen!!~
==RTBranw~Sandrah!!...<CHARNAME>!! Who's more surprised, thee or me?~
==CVSan25J~Are you serving the Ice Queen Auril by now.~
==RTBranw~I wandered far and long but 'tis now my soul has found peace with the Gods of the North whom I serve - Auril and Tempus.~
==CVSan25J~What has brought you to Thay after all?~
==RTBranw~Thay is open for all Gods and each one has a temple here - eh, 'cept of course the one the red wizards hate like nothing else, Mystra.~
==CVSan25J~This is also a land build on slavery and exploit, not a place you could feel too well at home?~
==RTBranw~'twill change, Sandrah, the storm will come over them soon.~
=~May Auril bestow the frost kiss upon our enemies.~
END
++~Will you come with us again, Branwen?~ + Auril2
++~Can you assist us with anything else, Branwen?~+ Auril2

CHAIN
IF~AreaCheck("RTF095")Global("RTFoundBran","GLOBAL",0)~THEN RTBranw Auril1
~By the icy breath of Auril! 'Tis good to see familiar faces once again.~
DO~SetGlobal("RTFoundBran","GLOBAL",1)~
==CVSan25J~Branwen!!~
==RTBranw~Sandrah!!...<CHARNAME>!! Who's more surprised, thee or me?~
==CVSan25J~Are you serving the Ice Queen Auril by now.~
==RTBranw~I wandered far and long but 'tis now my soul has found peace with the Gods of the North whom I serve - Auril and Tempus.~
==CVSan25J~What has brought you to Thay after all?~
==RTBranw~Thay is open for all Gods and each one has a temple here - eh, 'cept of course the one the red wizards hate like nothing else, Mystra.~
==CVSan25J~This is also a land build on slavery and exploit, not a place you could feel too well at home?~
==RTBranw~'twill change, Sandrah, the storm will come over them soon.~
==CVSan25J~(Mumbles) Oh, yes, it will - are you somehow in contact with those who will bring this storm and change?~
==RTBranw~I know thee well enough not to guess you came here for leasure. Your heart and instinct will guide you to the Red Hoods sooner or later.~
==CVSan25J~Know that Mystra supports them, Branwen.~
==RTBranw~I's heard such - from their own mouth. They count on you to retrieve the key that has fallen to the enemy.~
==CVSan25J~We heard it may be in the Court's treasury but we have not found access to the building yet.~
==RTBranw~(Laughs harshly) You may find it sooner or later, I heard of your actions around town already. ~
==CVSan25J~Hmmm, I guess I see the point, Branwen. The simplest way to get inside the court building is by being arrested and having to stand trial.~
==RTBranw~Few could take the risk and hope to come out of it alive. Few - but thou and <CHARNAME> are among 'em.~
=~May Auril bestow the frost kiss upon our enemies.~
END
++~Will you come with us again, Branwen?~ + Auril2
++~Can you assist us with anything else, Branwen?~+ Auril2



