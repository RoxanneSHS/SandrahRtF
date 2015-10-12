BEGIN RTFMurn

CHAIN
IF~Global("InRTF","LOCALS",1)~THEN RTFMurn InRTF1
~Mystra is dead, Gggggggtttraaaaaaaah! And her pale counterpart will soon have to make way for Ghaunadaur, the true ruler of these caves!~
DO~SetGlobal("InRTF","LOCALS",2)~
==PelligJ~See, <CHARNAME>, the spell plague shows rifts in the pantheon already. Each for his own is the motto among the celestials and minor deities alike.~
==RTFMurn~Infidels! Blasphemers! I have returned to wreak Ghaunadaur's vengeance upon this Undermountain.~
==PelligJ~It is not yet time for slime to rule where hope and love provide shelter for so many. You have come in vain, creature. Leave while you still can, eh, *crawl?* or glide or whatever.~
==RTFMurn~Threaten me here, in Blessed Ghaunadaur's own habitat? Hahahahaha! We shall enjoy consuming your flesh!~
= ~Gggggggtttraaaaaaaah! Enough talk! Come, enlightened ones, and let us despatch these fools before proceeding onwards to reconsecrate the temple in Ghaunadaur's name!~DO~Enemy()~EXIT

