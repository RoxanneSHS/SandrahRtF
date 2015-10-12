CHAIN
IF WEIGHT #-13 ~Global("SanRaiseMys","GLOBAL",9)~THEN Solar GetRTFgoing
~Here you are back on the plane you both stubbornly call your home.~
DO~SetGlobal("SanRaiseMys","GLOBAL",15)~
==CVSan25J~We have gathered enough insight into the nature of the celestials by now, good friend. We share their power now but we still have another origin than many of them. Our thinking and acting is sometimes a bit different from their eternal power struggle that mirrors the Blood War below in some way.~
==Solar~It is good to know not all of them participate in it - some care for the beings they have chosen and support. I am glad I am the assistant of one of them.~
==Pellig~Purr.~
==Solar~Oh, Pelligram, how I envy you for being part of the adventure once again.~
==Pellig~Soft Purr.~
==Solar~Make it back to me unharmed, my...companion.~
==Pellig~Sweet Purr.~
==Solar~You will be on your own from now on, <CHARNAME>, but you may find some of your old companions still scattered in the Realms - and a good chance to find new ones maybe.~
=~I will return to you once AO has decreed the case to be settled. Live long and prosperous.~ DO~ ReputationSet(9) AddXPObject(Player1,-2000000) AddXPObject("CVSandr",-2000000)
ReallyForceSpell(Myself,DRYAD_TELEPORT) AddJournalEntry(@1721,QUEST)~EXIT
