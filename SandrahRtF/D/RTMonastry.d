BEGIN RTMoun

IF~GlobalLT("Guide","ar5500",4)~THEN BEGIN GuideI
SAY~Travellers, at this time of year? Do you maybe need assistance?~
IF~~THEN REPLY~We need to go to Ravencrest.~GOTO GuideII
END

IF~~THEN BEGIN GuideII
SAY~Well...yes...it can be done but it is not an easy journey.~
=~You seem to be experienced adventurers, so you may expect a discount from me.~
=~It is 2000gp - per person.~
IF~~THEN REPLY~Agreed.~ DO~SetGlobal("Guide","ar5500",6)TakePartyGold(10000)~ EXIT
IF~~THEN REPLY~No deal~EXIT
END

BEGIN RTCarba
IF~Global("BanditEncounter","RTF027",1)~THEN BEGIN Meet
SAY~Boy, are ya the wrong thin' in the wrong place at the wrong time!~
=~Have ta kill ya now. Nothin' personal, ya understand?~
IF~~THEN DO~SetGlobal("BanditEncounter","RTF027",2) Enemy()~EXIT
END

BEGIN RTMonkH

CHAIN
IF~!PartyHasItem("RTMoBad")Global("RTMons1","RTF040",3)~THEN RTMonkH NeedBadgeNun1
~Visitors, welcome, you have some specific business at Ravencrest?~
==CVSan25J~Thank you, harbourmaster, we are actually here for the monastry.~
==RTMonkH~Why would you visit the monastry?~
END
++~We are scholars, I hail from Candlekeep myself, your library has some reputation~+ BooksH
++~We are here to investigate for some ancient relict that is hidden below the monastry.~+RelictH
IF ~InParty("Leyala")~THEN REPLY~My companion's old teacher is here, Ilyos.~+ TeachH
IF ~!InParty("Leyala")~THEN REPLY~ We heard about the fighting style of the Scorpion and want to challenge the monks.~ + ChallH

CHAIN
IF~~THEN RTMonkH BooksH
~You may be disappointed, maybe you heard about the recent thefts already?~
==CVSan25J~Books have been stolen?~
==RTMonkH~Strangely enough, yes. You may want to talk with the brother inside who is responsible for the library. If you are lucky, the books you are interested in are still there.~
=~Here is your badge to enter the monastry.~DO~GiveItemCreate("RTMoBad",Player1,1,0,0) SetGlobal("RTMons1","RTF040",5)~ EXIT

CHAIN
IF~~THEN RTMonkH RelictH
~Our monastry is not the place for treasure hunters.~
==CVSan25J~We are not interested in treasures but in knowledge. The history of your place is related to my anchestors.~
==RTMonkH~You are from Cerameons's bloodline then?~
==CVSan25J~Yes, I am.~
==RTMonkH~You are welcome to Ravencrest. Here is your badge to enter the monastry.~DO~GiveItemCreate("RTMoBad",Player1,1,0,0) SetGlobal("RTMons1","RTF040",5)~ EXIT

CHAIN
IF~~THEN RTMonkH TeachH
~*She turns to Leyala and studies the girl's features for a moment.*~
=~You resemble a young student I still remember, the one who followed the new path of Love and Hope - still being able to defend herself pretty well.~
==CVLey25J~I am Leyala, yes, and I remember you very well.~
==RTMonkH~Leyala, welcome back again, the abbot will be happy to see you again. Here is your badge to enter the monastry.~DO~GiveItemCreate("RTMoBad",Player1,1,0,0) SetGlobal("RTMons1","RTF040",5)~ EXIT

CHAIN
IF~~THEN RTMonkH ChallH
~This is not what the monks would accept. Their skills are for defense only. You will not disturb their peace. Leave us please.~ DO~SetGlobal("RTMons1","RTF040",4)~ EXIT

CHAIN
IF~!PartyHasItem("RTMoBad")Global("RTMons1","RTF040",4)~THEN RTMonkH NeedBadgeNun2
~I have nothing more to say to you.~EXIT

CHAIN
IF~Global("RTMons1","RTF040",7)~THEN RTMonkH Ship
~There is a ship in the harbour that will leave for the Sword Coast today.~
==CVSan25J~Where will it go to?~
==RTMonkH~Directly to Baldur's Gate.~
==CVSan25J~What do you think, <CHARNAME>, a few calm days on sea would be nice for all of us.~
END
++~Sounds nice to me, better than to return to Amkethran and trudge again through the desert.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT
++~Our experiences with ship cruises in the past have not been too good, I recall.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT


BEGIN RTMonk1

IF~!PartyHasItem("RTMoBad")~THEN BEGIN NeedBadge
SAY~You need an invitation badge to enter the monastry - especially after the recent thefts.~
IF~~THEN REPLY~Where do I get such a badge? ~GOTO Nun
IF~~THEN REPLY~Recent thefts? What has been stolen?~ GOTO Books
IF~~THEN REPLY~Old buerocrate!~ GOTO Nun
END

IF~~THEN BEGIN Nun
SAY~The harbour master nun inspects all newcomers here. She will decide each case.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Books
SAY~A number of books from our library are missing. The scholar is most upset, all others are just bewildered. Without a badge from the harbour master nun you will not access.~
IF~~THEN EXIT
END

IF~PartyHasItem("RTMoBad")~THEN BEGIN HasBadge
SAY~You have a badge for the monastry. The door is now open for you.~
IF~~THEN DO~SetGlobal("RTMons1","RTF040",6)~EXIT
END

BEGIN RTMonk2
IF~ Global("RTMons1","RTF040",3)~ THEN BEGIN HintNun
SAY~You are newcomers here. Have you talked to the harbour master already?~
IF~~THEN REPLY~Why should we? ~GOTO HintNun2
IF~~THEN REPLY~Where do we find him?~ GOTO HintNun3
END

IF~~THEN BEGIN HintNun2
SAY~SHE inspects all newcomers, especially if they ask for permission to enter the monastry.~
IF~~THEN REPLY~Where do we find her?~ GOTO HintNun3
END

IF~~THEN BEGIN HintNun3
SAY~She is in the harbour building of course.~
IF~~THEN EXIT
END

IF~Global("RTMons1","RTF040",4)~THEN BEGIN SellBadge
SAY~You have not been very convincing to our harbour master, it seems.~
IF~~THEN REPLY~You have any alternative suggestion?~GOTO SellBadge2
END

IF~~THEN BEGIN SellBadge2
SAY~I substituted her for a day just recently...I forgot to hand a badge back to her *accidently*.~
=~I may be convinced to give it to you for some *compensation*.~
IF~~THEN REPLY~How does 500gp sound to you?~ GOTO Br500
IF~~THEN REPLY~How does 1500gp sound to you?~ GOTO Br1500
IF~~THEN REPLY~I have not heard what you just said.~ GOTO Br0
END

IF~~THEN BEGIN Br500
SAY~We have understood each other well.~
IF~~THEN DO~GiveItemCreate("RTMoBad",Player1,1,0,0) SetGlobal("RTMons1","RTF040",5) TakePartyGold(500)~ EXIT
END

IF~~THEN BEGIN Br1500
SAY~We have understood each other well.~
IF~~THEN DO~GiveItemCreate("RTMoBad",Player1,1,0,0) SetGlobal("RTMons1","RTF040",5) TakePartyGold(1500)~ EXIT
END

IF~~THEN BEGIN Br0
SAY~We have not understood each other well. Go back to thinking.~
IF~~THEN EXIT
END

IF~!Global("RTMons1","RTF040",3) !Global("RTMons1","RTF040",4)~ THEN BEGIN Peace
SAY~Peace be with you, visitors.~
IF~!AreaCheck("RTF042")~THEN EXIT
IF~AreaCheck("RTF042")~THEN REPLY ~We seek the harbour master, brother.~GOTO insp
END

IF~~THEN BEGIN insp
SAY~At this time she nornally inspects the harbour fortification. She will be out on the wall catwalk.~
IF~~THEN EXIT
END

BEGIN RTMonkBo

IF~NumTimesTalkedTo(0)~ THEN BEGIN Pcinit
SAY~Greetings, but stay out of the library please, strangers.~
IF~~THEN EXTERN CVSan25J Theft3
END

IF~NumTimesTalkedToGT(0)~ THEN BEGIN Pcinit3
SAY~You again, I told you all I know.~
IF~~THEN EXIT
END

CHAIN
IF~Global("RTMissBooks","LOCALS",1)~THEN CVSan25J Theft1
~ Are you the librarian here?~
DO~SetGlobal("RTMissBooks","LOCALS",2) ActionOverride("RTMonkbo",SetNumTimesTalkedTo(1))~
==RTMonkBo~(Laughs bitterly.) Can I still bear that title?~
=~They left little of our library, those book thieves (sigh).~
==CVSan25J~Did you have many valuable tomes in here?~
==RTMonkBo~Strangely enough we didn't - they did not even take the most valuable one, the history of our monastry itself. I am the only one here who has read them all...~
==CVSan25J~What did they take then?~
==RTMonkBo~Mostly biographies and auto-biographies of celebrities of the Realms.~
==CVSan25J~And there is no hint who could have been the thief?~
==RTMonkBo~There were no visitors during the last week when it happened, they came and left within one night.~EXIT

CHAIN
IF~~THEN CVSan25J Theft3
~ Are you the librarian here?~
DO~ActionOverride("CVSandr",SetGlobal("RTMissBooks","LOCALS",2))~
==RTMonkBo~(Laughs bitterly.) Can I still bear that title?~
=~They left little of our library, those book thieves (sigh).~
==CVSan25J~Did you have many valuable tomes in here?~
==RTMonkBo~Strangely enough we didn't - they did not even take the most valuable one, the history of our monastry itself. I am the only one here who has read them all...~
==CVSan25J~What did they take then?~
==RTMonkBo~Mostly biographies and auto-biographies of celebrities of the Realms.~
==CVSan25J~And there is no hint who could have been the thief?~
==RTMonkBo~There were no visitors during the last week when it happened, they came and left within one night.~EXIT

CHAIN
IF~Global("RTMissBooks","LOCALS",4)~THEN CVSan25J Theft2
~We come to ask about the stolen books again.~
DO~SetGlobal("RTMissBooks","LOCALS",5)~
==RTMonkBo~You found something on your investigation down below?~
==CVSan25J~Not the thief or the books but maybe the reason for the theft, let us see. Was one of the books maybe related to Cerameon?~
==RTMonkBo~A very comprehensive story of her life was there, yes.~
==CVSan25J~And you have read it of course?~
==RTMonkBo~I read ALL our books.~
==CVSan25J~We wonder how Cerameon spend her life after her deeds here and how it ended finally.~
==RTMonkBo~She did not like that hero worship thing about it and those young adventurers trying to challenge for duels. She retired to her birth place.~
==CVSan25J~Mornbryn's Shield on the River Surbrin - a small village between Eversuit and Teziir.~
END
++~We have a new destination then, I presume.~DO~SetGlobal("SanRTFPlot2","GLOBAL",4) RevealAreaOnMap("RTF038") AddJournalEntry(@2057,QUEST)~EXIT

BEGIN RTMonkSt

CHAIN
IF~Global("RTMons1","RTF043",1)~THEN RTMonkSt sacred
~The stairs lead to the mourner's fountain only and the catacombs of the old war. Only the abbot can grant access. ~
DO~SetGlobal("RTMons1","RTF043",2)~
==CVSan25J~This sounds exactly like the area that contains what we came for. Do you agree, <CHARNAME>?~
END
++~Let's go to see Iylos then.~ EXIT
++~I am adventurer for so long now to know you're right in this assumption.~EXIT

BEGIN RTIYLO

IF~Global("RTMons1","RTF043",4)~THEN BEGIN Stayw
SAY~I wished I could accompany you on your mission but my place is to guard here in these dangerous times.~
IF~~THEN EXIT
END

CHAIN
IF~GlobalLT("RTMons1","RTF043",3)~THEN RTIYLO Access1
~Visitors, I was eager to meet you after I received notice of your arrival...~
==RTIYLO IF~GlobalGT("SanIylos","GLOBAL",1)~THEN~Sandrah of Waterdeep and <CHARNAME> - that is unexpected, to say the least.~
==RTIYLO IF~InParty("LEYALA")~THEN~...my former apprentice! Welcome sweet Leyala, the nun of hope and love - you have surely outgrown your old teacher by lengths these days.~
==CVLey25J IF~InParty("LEYALA")~THEN~No one could do that, master, but I am not too shy to say that I do not disgrace my teacher.~
==RTIYLO~What leads you to our remote monastry, my friends.~
==CVSan25J~The deeds of one of my anchestors right here - I mean at this place where later this cloister was erected.~
==RTIYLO~Your anchestress? Cerameon - a woman with a hammer, of course...We talk about events very far in the darkness of the past.~
==CVSan25J~Still there are those who remember those events - be it for good or for evil.~
=~It was here as you will know, good abbot, that a portal was sealed that was used by malicious eastern forces to enable the invasion of the old Realms. We assume that the seal can be opened and the old connection be re-established.~
==RTIYLO~We have no indication that this has been attempted.~
==CVSan25J~Maybe not yet, at least not by our enemies. If I am correct in my interpretation of my anchestress' journal, the portal and the seal can only be opened from this side of the passage. If our current enemies would attempt to re-use it, they would need to open it from here first.~
==RTIYLO~You come to prevent that?~
==CVSan25J~Not just that. We as well intend to use it ourself this time to get to the heart of our enemies' lair.~
==CVSan25J~*Sandrah continues to provide Iylos with further details of the recent events.*~
==RTIYLO~Hm, hm...be assured that the Order of the Striking Scorpion is all but defenseless. This place is designed to hold back whole armies with just a few well trained and well equipped monks. ~
=~Hm...now the bookthefts our librarian complaints about may appear in another light. You should talk to him if you haven't done already.~
==CVSan25J~This means that now that you know about the threat, you and your brothers will guard the seal?~
==RTIYLO~My oath on that, Sandrah. This will give you the opportunity to prepare and execute your strike into the heart of Thay.~
=~You have my permission to access the lower levels at your discretion. You will find a sun relict in the mourner's fountain just below which you will need to venture further into the unlit and uncharted areas that were the battlefield of old.~DO~SetGlobal("RTMons1","RTF043",3)~EXIT

CHAIN
IF WEIGHT #-1~Global("RTMons1","RTF040",7)~THEN RTMonk1 Ship1
~There is a ship in the harbour that will leave for the Sword Coast today.~
==CVSan25J~Where will it go to?~
==RTMonk1~Directly to Baldur's Gate.~
==CVSan25J~What do you think, <CHARNAME>, a few calm days on sea would be nice for all of us.~
END
++~Sounds nice to me, better than to return to Amkethran and trudge again through the desert.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT
++~Our experiences with ship cruises in the past have not been too good, I recall.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT

CHAIN
IF WEIGHT #-1~Global("RTMons1","RTF040",7)~THEN RTMonk2 Ship2
~There is a ship in the harbour that will leave for the Sword Coast today.~
==CVSan25J~Where will it go to?~
==RTMonk1~Directly to Baldur's Gate.~
==CVSan25J~What do you think, <CHARNAME>, a few calm days on sea would be nice for all of us.~
END
++~Sounds nice to me, better than to return to Amkethran and trudge again through the desert.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT
++~Our experiences with ship cruises in the past have not been too good, I recall.~DO~SetGlobal("RTMons1","RTF040",8)~EXIT

EXTEND_BOTTOM Ambar01 3
IF~GlobalGT("SanRTFPlot2","GLOBAL",1) Global("RTAsk","LOCALS",0)~THEN REPLY~We are looking for the way to get to Ravencrest.~GOTO Rave1
END

EXTEND_BOTTOM Ambar01 20
IF~GlobalGT("SanRTFPlot2","GLOBAL",1) Global("RTAsk","LOCALS",0)~THEN REPLY~We are looking for the way to get to Ravencrest.~GOTO Rave1
END

EXTEND_BOTTOM Ambar01 40
IF~GlobalGT("SanRTFPlot2","GLOBAL",1) Global("RTAsk","LOCALS",0)~THEN REPLY~We are looking for the way to get to Ravencrest.~GOTO Rave1
END

EXTEND_BOTTOM Ambar01 48
IF~GlobalGT("SanRTFPlot2","GLOBAL",1) Global("RTAsk","LOCALS",0)~THEN REPLY~We are looking for the way to get to Ravencrest.~GOTO Rave1
END

CHAIN
IF~~THEN Ambar01 Rave1
~You must be determined to take that road, friends, it's not an easy journey.~
DO~SetGlobal("RTAsk","LOCALS",1)~
==CVSan25J~We have been to hell and back already, as they say, we may be capable to cross a mountain path.~
==Ambar01~If you say so. Nevertheless you would be lost up there on Ithal Pass without a guide.~
==CVSan25J~I understand that we need to cross the pass and continue south towards the sea.~
==Ambar01~Generally correct, but the path is not often used and nearly invisible. One false move and you'll find yourself in one of those crevisses like so many before you.~
==CVSan25J~Is there a mountain guide around here, my friend?~
==Ambar01~Herlakk has returned to town a few days ago, you may find him south with the herds probably.~
=~Do not forget to bring some spare coins to convince him.~EXIT

CHAIN
IF~Global("Guide","ar5500",2)~THEN CVLey25J GuideIth
~This is where the path to the Ithal Pass starts. The first part is still smooth until we reach the lower caravan camp. There the caravans must be unloaded and a small footpath begins towards Ravencrest.~
==CVSan25J~You are still familiar with the area, Leyala, could you be our guide?~
==CVLey25J~Certainly, I never forget a road I have travelled, and this one I used frequently in my time of education.~
==CVSan25J~Leyala leading us has also the advantage that no one outside knows about our destination. <CHARNAME>?~
END
++~Thank you for your help, Leyala, but you have not been here for some time. Your guidance may not be up to date still. I'd rather spend some coins for the safety of the group.~DO~ SetGlobal("Guide","ar5500",3) ~EXIT
++~Of course, Leyala, lead on.~DO~SetGlobal("Guide","ar5500",6) ~EXIT

CHAIN
IF~Global("Narga","rtf045",2)~THEN CVNarga InRavencr1
~Ssse little lovely ssslave-to-be hasss returned!!~
=~Open the Ssseal and come wisss me to your new life at my ssside.~
DO~SetGlobal("Narga","rtf045",3)~
==CVIzy25J IF~InParty("CVIzzy")~THEN~Uuh, I always been thinkin' the rain on our ol' Sword Coast wasss bad, but not asss wet asss that guy's word gush.~
==CVSan25J~I am a good swimmer but I have no intent to practice it in the ocean of your droolings.~
==CVNarga~Sssh...~
==CVSan25J~There is a man upstairs who would be glad if I returned the books you have stolen to him.~
==CVNarga~I have found what wasss needed.~
=~Vassssals!! Take the hammer from her but leave my little new ssslave intact.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT