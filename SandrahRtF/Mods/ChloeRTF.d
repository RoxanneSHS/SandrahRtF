CHAIN
IF WEIGHT #-9~GlobalGT("RCChloeFather","Global",1) AreaCheck("ar0709")~THEN RCHLOEP meetrtf
~This is certainly a surprise. (Laughs) Did you misbehave and got kicked out, oh my!~
==CVSan25J~Our old friend Chloe. (She smiles and gently touches Chloe's cheek.)~
==RChloeP~My snowcap...hey, you don't mind me calling you this still. Sure you don't.~
=~Same as I will call <CHARNAME> by the name I used to - and yes, I appreciate the Love and Hope that has come to the Realms since I'm back from you-know-where-that-was.~
==CVSan25J~A good attitude, Chloe, and maybe just what we need. You must know we are here incognito and like to keep it that way.~
==RChloeP~This is not a vacation in good old Faerun, right. Creatures like you are now and walking the Realms again - means *Trouble* to say it in one word.~
==CVSan25J~Trouble that requires the help of trusted mortals to solve, my friend.~
END
++~It seems like you are unoccupied at the moment. Like Sandrah just said, we could need your help once again.~+ joinrtf
++~Some people never change, regardless of what experiences they made. If you still ask money for your services, I would be willing to pay you.~+ joinrtf
++~Some people never change, regardless of what experiences they made. If you still ask money for your services, forget it...and if you want me begging you to come along - forget it as well.~+ joinrtf

CHAIN
IF~~THEN RCHLOEP joinrtf
~My swords will be at your service with joy. For the old times - hey, for the good times with you I have never forgotten and will never forget.~
END
++~I am sure it will thrill you once again. You will not regret it.~ DO ~JoinParty()~ EXIT
++~Memories better not warmed over again. Enjoy them, there will be no new ones added, I don't need you this time.~ DO ~EscapeArea()~ EXIT