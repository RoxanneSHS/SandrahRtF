BEGIN RT38Inn

CHAIN
IF~AreaCheck("RTF038")~THEN RT38Inn DogDead
~GO AWAY!!~
=~Ah...you do not belong to them...???~
==CVSan25J~Them?~
==RT38Inn~ At least you defeated Rowell, poor good dog. Couldn't even leave the house since those red robed bastard somehow turned him against me. Had to be killed but I couldn't do it...been a true friend of mine for so long.~
==CVSan25J~It sounds like the ones we fight against have been here already.~
==RT38Inn~You fight against...you must be truly brave, lady, that wizard and even more those with him looked like no one I want to anger.~
==CVSan25J~Please tell us more, good dwarf.~
==RT38Inn~Look, I'm the innkeeper here, maybe you wanna come inside so we can talk.~
DO~EscapeArea()~EXIT

CHAIN
IF~AreaCheck("RTF381") NumTimesTalkedTo(0)~THEN RT38Inn InnSide
~Things are bad, friends. really bad.~
==CVSan25J~I can imagine that, we had our experience in the past with those red devils.~
==RT38Inn~He came two days ago late after dusk. He inquired for the old grave in Mornbryn's church. He also inquired for...hm, probably you.~
==CVSan25J~You mean he wanted to know if someone else had already been here and asked for Cerameon's last rest?~
==RT38Inn~Yes, I had that impression. There she lies now for Clangeddin knows how long and all of a sudden everybody rushes here for the ancient heroine.~
==CVSan25J~(She turns to you) It seems Szass or whoever is in his service here knows what is required to open the portal.~
==RT38Inn~He must not have found it, that blasted mage!!~
==CVSan25J~You saw him return empty handed?~
==RT38Inn~So to say, grrrm. He left - but alone. His croonies are still in town - we haven't heard anything from there since then. The smith's delivery boy went to town before the red scourge came and has not returned yet. We were stuck here and dared not inquire.~
==CVSan25J~We will go to Mornbryn's Shield and find out what has happened.~
==RT38Inn~I dare say you look like you know what you do - or you are fools beyond imagination. This red one brought hordes of terrible creatures with him. I cannot even imagine what happened to the town but I fear the worst.~
END
++~Whatever he did, he will pay for it.~EXIT
++~Before we go - this is an inn, isn't it. What do you offer?~ DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~AreaCheck("RTF381") NumTimesTalkedToGT(0)~THEN RT38Inn InnKeep
~Any service I can provide?~
END
++~Let us see.~ DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT
++~Not today, bye.~EXIT