CHAIN
IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0)~THEN CVQIDR RTFUMMeet1
~My sister!~
==CVSan25J~My sister!~
=~*Qilandrha and Sandrah embrace and kiss each other dearly*.~
==CVQIDR~Gods walk on the Prime of Faerun once again, at least you and <CHARNAME>?~
==CVSan25J~Maybe others as well, we are here to find that out. I am afraid our home plane has become the playground for some celestial power struggle like it did in the past already.~
==CVQIDR~I have faith in my goddess and my sister to prevent harm from us as much as she can.~
==CVSan25J~This will always stay home for me. Me and <CHARNAME> will do what we can, however it appears that those who oppose us have allies down here.~
==CVQIDR~Bad news, my sister, and it implies that in such a struggle not only the evil doers will suffer.~
==CVSan25J~I know that it is only a small promise if I say that those who let the mortals suffer will have to compensate for it.~
==CVQIDR~It is not such a small promise as it was made by a most powerful goddess who is known to keep her word.~
=~*Again the sisters embrace each other in mutual understanding.*~
=~<CHARNAME>, you will find a number of your old friends and companions in my little Realm down here. Feel free to look around.~
END
++~Thank you and farewell. We will do as Sandrah has promised.~EXIT

CHAIN
IF~GlobalGT("RTLouPlot","GLOBAL",0) GlobalLT("RTLouPlot","GLOBAL",15) InParty("CVSandr")~THEN CVQIDR HelpUDDown
~My sister, how can I help you and <CHARNAME> this time?~
==CVSan25J~We must rescue a companion who has been kidnapped and brought to the Underdark to stand trial by Lolth.~
==CVQIDR~Trial by Lolth? This is equivalent to a death sentence, torture and transformation to a drider. (Sigh) I know it is not really news to you.~
END
++~We knew of only one access to the Underdark but it is blocked. Many of your people have come from below, probably on a variety of routes. One of them should open us the reverse option.~+ EscUP

CHAIN
IF~~THEN  CVQIDR  EscUP
~I know many stories they have shared with me. The best option would be to use the tunnels of those that at times access the surface as well as the Underdark.~
DO~SetGlobal("RTLouPlot","GLOBAL",15) ~
==CVSan25J~Duergar do that and drow use their territory occasionally for their raids.~
==CVQIDR~If you knew an entry to Duergar territory that would be possible. Long ago I sealed the only one existing on the Sword Coast myself.~
==CVSan25J~Another race apart from the duergar?~
==CVQIDR~You have definitely no fear to face a strong colony of beholders, gauths and similar creatures, not like some lone desperate drow refugee when crawling through their tunnels...~
==CVSan25J~Beholders...of course.~
==CVQIDR~All their tunnels connect to each other, find an entrance to one and you can pass into the next.~
END
++~The one of the Unseeing Eye is accessible from Athkatla, right?~EXIT