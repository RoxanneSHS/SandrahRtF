CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Booter Newboss
~Hey, I'm Booter, the official guild's head torturer...even with the new boss there is only little to do for me anymore. Too damned peaceful guy for me, that Havarian.~
==Arnboy01~Still too much, uurgh!~
==Booter~The old school subchiefs still have an odd job or two for me now and then.~
END
++~Well...~EXTERN ARNBOY01 4

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman03 Newboss3
~Heh, welcome to the guild, my name's Cuchul, top burgler of Amn. The very best this side of Waterdeep, hehe.~
END
++~I'm looking for the training area...~+ 1

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman04 Newboss4
~Greetings, I'm Mitsi...and no funny remarks just 'cos I'm a halfling! I'm FULL member of the Shadow Thieves, dig that!~
END
++~I did not...~+ 4

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman05 Newboss5
~What? Who let you into here, he?~
=~I need to have a word with that Saemon about that.~DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)!Dead("arnman08")~THEN Arnman09 Newboss9
~Hmmm... Guess I've heard of you. You fight much and...successful. Say, will you listen to a solid offer?~
END
++~I'd rather...~ + 2
++~Why not, I can't wait to pay back a bit to Saemon in his own coin.~+ 2
