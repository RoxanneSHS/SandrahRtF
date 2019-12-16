BEGIN RTMask

IF~Global("RTMaskplot","GLOBAL",0) ~THEN BEGIN MaskKnows1
SAY~What an unexpected visit, my *friends*! Welcome to the Temple of Mask!~
IF~~THEN REPLY~Why do I have the feeling like having stumbled into a trap?~ GOTO MaskKnows2
IF~~THEN REPLY~Pretty words that may hide the poisoned blade.~ GOTO MaskKnows2
END

IF~~THEN BEGIN MaskKnows2
SAY~The only surviving child of the one who fell through Godsbane - I am delighted to meet you.~
IF~~THEN REPLY~Mask was the instrument used by Cyric to backstab the former God of Murder. I have not taken Bhaal's heritage.~DO~SetGlobal("RTMaskplot","GLOBAL",1)~GOTO MaskKnows3
END

IF~~THEN BEGIN MaskKnows3
SAY~I know well who you are today, <CHARNAME>, light of Love and Hope.~
=~There are not many who can deceive the Lord of the Deceivers, not even the most hated Goddess in this land. (She darts out a finger at Sandrah.)~
IF~~THEN REPLY~Well, we could kill you before you spill the news out or we can come to some arrangement, I guess.~ GOTO MaskKnows4
IF~~THEN REPLY~You sound like you want to offer us something.~ GOTO MaskKnows4
END

IF~~THEN BEGIN MaskKnows4
SAY~Your power means nothing within these halls, <CHARNAME>, so stay your wraith. Mask has no interest to reveal your little secrets as long as you are wise enough not to provoke it. It is rather in the interest of my Guild to keep the other parties in this town occupied while I deal with my own affairs.~
IF~~THEN REPLY~I am listening.~ GOTO MaskKnows5
IF~~THEN REPLY~Stop babbling, fool, we are out of here.~ GOTO MaskKnows5
END

IF~~THEN BEGIN MaskKnows5
SAY~In your own interest, <CHARNAME>, listen. We don't care why you and Mystra have come here and we will keep our mouths shut as long as you co-operate.~
=~The wicked Shadowmasters of Telflamm have recently started to infiltrate our operations here in Bezantur. Like everyone else they want to get a piece of the cake that Szass Tam's great plans will provide for everyone in Thay who is clever enough. Too bad it's our piece of the cake they are so keen to grab.~
IF~~THEN REPLY~Make it short, Shabella, the details of your guild war bore us.~ GOTO MaskKnows6
END

IF~~THEN BEGIN MaskKnows6
SAY~Good. Here is the deal. ~
=~I need a cloak and sword of my God to advance my Guild's power over the Theskians. By some coincidence that are of no interest for you those two items are currently in the possession of Samas Kul, the Leader of the Guild of Foreign Trade. He negotiates with us as well as with the Theskians. His prize raises with every round and will become unacceptable soon. YOU must retrieve those items for us from the Guild's headquarters before Samas Kul makes the deal with our opponents.~
IF~~THEN REPLY~How am I to enter the Guild and find those items?~ GOTO MaskKnows7
END

IF~~THEN BEGIN MaskKnows7
SAY~Bah, don't ask me, I'd do it myself if not all of my followers would be immediately discovered when they even come near the Guild's compounds in the Eastern Harbour.~
=~How you get the things is irrelevant. Get them within a tenday or your little disguise will be revealed and Szass Tam and all of Thay will be on your heels at once.~
IF~~THEN DO~SetGlobalTimer("RTMaskplotT","GLOBAL",FIVE_DAYS) AddJournalEntry(@2064,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

IF~Global("RTMaskplot","GLOBAL",6) AreaCheck("RTF513") ~THEN BEGIN MaskItms1
SAY~A great day for the Guild, you have returned in victory and we can now face the Theskians with confidence.~
IF~~THEN REPLY~Here you have them and good luck, Guildmistress. Make not the mistake to deceive us and thus add us to the ranks of your enemies.~ DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
IF~~THEN REPLY~We know you'd betray us, so we use those items to end your tyranny in town.~DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
IF~~THEN REPLY~Here are your Mask items, let us part peacefully.~DO~TakePartyItem("Comc03") TakePartyItem("SW1H58")~GOTO MaskItms2
END

IF~~THEN BEGIN MaskItms2
SAY~I have prepared well for this occasion, <CHARNAME>. This sword has once taken Bhaal's life and blood and it will do so again!~
IF~~THEN DO~ SetGlobal("RTMaskplot","GLOBAL",7) Enemy()~EXIT
END


BEGIN RTGayl
IF~Global("Baylan","RTF050",7)~THEN BEGIN SharH
SAY~Cool, you made it again to lovely Thay. Maybe that uproar in the Slums brought you here? That black Shar is said to have blown half the town to smithereens.~
IF~~THEN REPLY~We have not to search long, it seems, to find where the action is.~ GOTO SharH1
IF~~THEN REPLY~Shar? We should investigate that right away.~GOTO SharH1
END

IF~~THEN BEGIN SharH1
SAY~If you wanna check, this is where to go...~
IF~~THEN DO~ ClearAllActions()
StartCutSceneMode()
Wait(2)
StartCutScene("CVcut408")~ EXIT
END

IF~ Global("RTMaskplot","GLOBAL",0) NumTimesTalkedTo(0)~THEN BEGIN Gomask1
SAY~He, cool! The Guildmistress claimed you'd come and here you are!~
IF~~THEN REPLY~What do you do here, Gaylan?~ GOTO Gomask2
IF~~THEN REPLY~Don't I know you from Athkatla? You worked for the shadow thieves? Gaylan Bael.~ GOTO Gomask2
END

IF~~THEN BEGIN Gomask2
SAY~Cool, I'm that famous already, even if my name is Baylan Gael, right. I surely serve the Shadowmistress, Shabella the Pale. She invites you to her Temple of Mask. She says she has an interesting proposal for you.~
IF~~THEN REPLY~Oh, no, not the shadow thieves again.~ GOTO Gomask3
IF~~THEN REPLY~I will listen to her if I find the time.~ GOTO Gomask3
END

IF~~THEN BEGIN Gomask3
SAY~Cool, you'd better go and see her. Her words were that it is *an offer you cannot refuse.*. See ya.~
IF~!InParty("CVIzzy") ~THEN DO~EscapeArea()~ EXIT 
IF~InParty("CVIzzy") !Global("Izzyplot","GLOBAL",4)~THEN DO~EscapeArea()~ EXIT
IF~InParty("CVIzzy") Global("Izzyplot","GLOBAL",4)~THEN EXTERN CVIzy25J AskSh
END

IF~ GlobalGT("RTMaskplot","GLOBAL",0) AreaCheck("RTF510")~THEN BEGIN Gomask4
SAY~He, cool! The Guildmistress claimed you'd come and here you are!~
IF~~THEN REPLY~What do you do here, Gaylan?~ GOTO Gomask5
IF~~THEN REPLY~Don't I know you from Athkatla? You worked for the shadow thieves? Gaylan Bael.~ GOTO Gomask5
END

IF~~THEN BEGIN Gomask5
SAY~Cool, I'm that famous already, even if my name is Baylan Gael, right. I surely serve the Shadowmistress, Shabella the Pale. Just like you do, cool. Just get down the stairs to Mask's altar, they await you and the stuff you've gained.~
IF~~THEN DO~SetGlobal("RTMaskplot","GLOBAL",5) EscapeArea()~ EXIT
END

IF~ GlobalGT("RTMaskplot","GLOBAL",0) AreaCheck("RTF513")~THEN BEGIN Gomask6
SAY~He, cool! The Guildmistress is at the altar in the rear area!~
IF~~THEN DO~EscapeArea()~EXIT
END

CHAIN
IF~~THEN CVIzy25J AskSh
~Say, thief boy darling, you musta hear 'n' see just everything goin' on here, right?~
==RTGayl~Cool, jus' as now I see a beauty like seldom in this town.~
==CVIzy25J~Seldom but not never, tell quickest, you saw Sharlenia, say you did.~
==RTGayl~Just too short, she came and was gone again due to that looser Rhobald. Got in trouble with Shabella and tried to cheat Samas Kul.~
==CVIzy25J~What's that?~
==RTGayl~You'll sure will know more when you talked to the mistress, gotta leave now.~DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-11~GlobalGT("SanBeginRTF","GLOBAL",1)~ THEN THIEF5 Gorv
~Me?  Name's Gorvin.  I don't suppose you have a bottle o' rotgut stored away in there, somewhere, do you?  Ahhh, I suppose not.  Who are you, anyway?~
==CVSan25J~Old friends, just old friends, Gorvin.~
==THIEF5~If you say so...So - friends - you don't happen to have any *medicine* on ya, he?~
==CVSan25J IF~GlobalGT("RTMaskplot","GLOBAL",0) !PartyHasItem("RTKeylig")~THEN~Have you ever found a way inside the Guild of Foreign Trade, friend?~
==THIEF5 IF~GlobalGT("RTMaskplot","GLOBAL",0) !PartyHasItem("RTKeylig")~THEN~You're jokin', my dear. That compound is impenetrable unless you're invited by whatever means.~
END
++~Get lost, old drunkard.~EXIT
++~You're of no use when you're drunk and you're of no use when you're sober, bah.~EXIT
++~I will not waste my time on you.~EXIT