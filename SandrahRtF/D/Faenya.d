BEGIN RTSail

IF~!AreaCheck("RTF110") RandomNum(4,1)~THEN BEGIN SailT1
SAY~From married to the sea to married to a woman--I know which I'd choose.~
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,2)~THEN BEGIN SailT2
SAY~Ooh, my head. Best cure the throbbing with another ale, haha!~
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,3)~THEN BEGIN SailT3
SAY~Aargh, these shittin' doves. That un hit me again.~
IF~~THEN EXIT
END

IF~!AreaCheck("RTF110") RandomNum(4,4)~THEN BEGIN SailT4
SAY~Saemon put that blind passenger out into the lifeboat on a long line. Nobody can listen to that maroon and not get mad.~
IF~~THEN EXIT
END


BEGIN RTAvar

IF~OR(2) GlobalGT("RTSaeHij","GLOBAL",5) Global("RTWed","RTF112",1)~THEN BEGIN HelpF
SAY~Friends of one of us are friends to all of us.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF114") RandomNum(2,1)~THEN BEGIN Potions
SAY~Poor ground creatures, you have little need of our advanced potions and substances to maintain your wings, your missing wings. You must have come for the poor wingless one's wedding.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF114") RandomNum(2,2) ~THEN BEGIN innp2
SAY~Not much going on in here today. Everyone's out at the temple for the wedding. I avoid such tearjerking events ~
IF~~THEN EXIT
END

IF~AreaCheck("RTF115") RandomNum(2,1)~THEN BEGIN inn1
SAY~No wedding in here, it is out at the temple. A weird bunch like you must be guests of the groom.~
IF~~THEN EXIT
END

IF~AreaCheck("RTF115") RandomNum(2,2)~THEN BEGIN inn2
SAY~Not much going on in here today. Everyone's out at the temple for the wedding. I avoid such tearjerking events ~
IF~~THEN EXIT
END

IF~ RandomNum(4,1)~THEN BEGIN Avar1
SAY~Peace with you.~
IF~~THEN EXIT
END

IF~ RandomNum(4,2)~THEN BEGIN Avar2
SAY~Further guests for the wedding, I presume?~
IF~~THEN EXIT
END

IF~ RandomNum(4,3)~THEN BEGIN Avar3
SAY~Wings or no wings, she'll make a beautiful bride.~
IF~~THEN EXIT
END

IF~ RandomNum(4,4)~THEN BEGIN Avar4
SAY~Wonder where she found that man, a bit scary, the guy.~
IF~~THEN EXIT
END

CHAIN
IF~AreaCheck("RTF110")~THEN RTSail Isl1
~Ha you awake at last, ev'ryone's exploring the isle already. Hope they find a pint or two.~
==CVSan25J~An island stop - and a chance for Saemon to get into trouble, no doubt.~
END
++~We should check it out immediately, I suggest.~EXIT
++~We could use some items ourselves if this is a civilised environment.~EXIT

CHAIN
IF~AreaCheck("RTF098") Global("Myrescue","LOCALS",0)~ THEN RTShaj Resc1
~You may want to know more about me as we travel together now, don't you?~
DO~SetGlobal("Myrescue","LOCALS",1) ~
==CVSan25J~You know Saemon for longer already, Shaleij?~
==RTShaj~He came to Bezantur a few times and we met in my master's house or at Samas guild when there were feasts and I had to entertain the men.~
=~He was different - he really cared, I was a person not a toy for him...~
==CVSan25J~You were Autharch Ithrash's slave?~
==RTShaj~I belong to his harem, yes...~
==CVLey25J IF~InParty("Leyala")~THEN~Poor girl, to be forced to do what should be a great pleasure for any woman.~
==RTShaj IF~InParty("Leyala")~THEN~Not as bad as you think. The harder they come the bigger they fall, you know, just in Ithrash's case *hard* is not the right word, hihi.~
==RTShaj~Saemon treated me kindly and showed me feelings I never had before.~
==CVSan25J~You should be safe now, unless Ithrash cares so much for you to mobilize a fleet to pursue you.~
==RTShaj~He may not care much for me - but he gets extremely upset when he sees a threat to his *possessions*.~
==CVSan25J~No man can own another as possession.~
==RTShaj~In Thay they would hang you for such opinions.~
==CVSan25J~(Laughs) They tried - but here we are.~
==RTShaj~I will go upstairs to see my sweet captain, from the motion of the vessel we should be safely out at sea now. See you soon.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("Start112","RTF112",2)~ THEN RTShaj RescIsl
~(Cough) Help...oh, it's you...all will be good...the fish men..Saemon...~
DO~SetGlobal("Start112","RTF112",3) SetGlobal("RTSaeHij","GLOBAL",1)~
==CVSan25J~Drink this, you will be better in a minute. Fish men you said, Kuo-Toa?~
==RTShaj~They have my Saemon, he fought bravely with his sailors to protect my escape from this cave...you must hurry to aid him!~
==CVSan25J~We will. Just go a bit to the west, there are friendly elves here who will help you and bring you back to the ship.~
=~We will meet you there soon - with Saemon.~
==RTShaj~I hope it, there were so many of them below.~DO~MoveToPoint([2577.1522])EscapeAreaDestroy(20)~EXIT

CHAIN
IF~Global("RTSaeHij","GLOBAL",2)~THEN RTSaemon RescIs2
~As much as I love the sea, I hate the smell of some of its fishy creatures.~
DO~SetGlobal("RTSaeHij","GLOBAL",3)~
==CVSan25J~They killed the men that were with you but they spared you, Saemon.~
==RTSaemon~I pity them, they were good men and hard to replace. It seems they had a special intention with me to sacrifice me to that creature you defeated...But, did you find...Shaleij??~
==CVSan25J~She is safe and well. We send her back to the ship. You must have fought quite heroic to hold up the Kuo-Toa and give her the time to escape.~
==RTSaemon~She is alive!! I have to see her immediately!~
==CVSan25J~You really care for that woman, Saemon, who would have thought.~
==RTSaemon~There is nothing to do here, friends, let us get back to the ship with haste. Thayan yellow-sailed dromonds may be slower than my *Black Beauty* but a stubborn captain may still make it to this island in the meantime.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTSaeHij","GLOBAL",7) ~THEN RTSaemon RescIs3
~You are unhurt, Shaleij, the gods blessed us.~
DO~SetGlobal("RTSaeHij","GLOBAL",8)~
==RTShaj~YOU are alive and well, oh Saemon!!~
==RTSaemon~Our friends found me just in time before those Kuo-Toa could sacrifice me to their weird fish headed god.~
==RTShaj~I saw Ithrash and his men coming down the stairs when I wanted to return to our ship. Our delay here must have given them time to catch up with us.~
==RTSaemon~Worry no more, my love, he's gone now just as the fish men. No one can separate Saemon Havarian from his woman.~
==CVSan25J~We will have enough time for all of that during the cruise. Let us continue our journey as fast as possible.~
==RTSaemon~<CHARNAME>, just tell me to go and I hoist sails.~
END
++ ~Give us a few minutes to recover and heal. I will tell you when we are ready.~DO~SetGlobal("RTSaeToBal","RTF112",1)~EXIT
++ ~We are ready to go right now.~DO~SetGlobal("RTSaeToBal","RTF112",2)~EXIT

CHAIN
IF~ Global("RTSaeToBal","RTF112",1)~THEN RTSaemon Outfaen
~Are you ready to leave for the Sword Coast now?~
END
++~Yes.~DO~SetGlobal("RTSaeToBal","RTF112",2)~EXIT
++~Not yet, I will come back soon.~EXIT
