BEGIN RTCita

IF~NumTimesTalkedTo(0)AreaCheck("RTF060")~THEN BEGIN Tour
SAY~Take a tour, visit the famous citadel of Bezantur!!~ 
IF~~THEN REPLY~Will it really be so easy?~  EXTERN CVSAN25J Tour2
IF~~THEN REPLY~They give you public access to the fortress, how strange?~EXTERN CVSAN25J Tour2
END

IF~NumTimesTalkedTo(0)AreaCheck("RTF090")~THEN BEGIN Saem
SAY~The great Sailor Saemon Havarian has arrived from Athkatla!!~
IF~~THEN REPLY~Our old friend is here?~  EXTERN CVSAN25J Saem2
IF~~THEN REPLY~Oh my, I had hoped we'll never have to endure him again?~EXTERN CVSAN25J Saem2
END

APPEND CVSan25J
IF~~THEN BEGIN Tour2
SAY~Dummy, every town in Thay has such a citadel housing the local Zulkir and his legions. This one was the stronghold of the infamous Aznar Thrull. Today it is a tourist attraction we should not waste our time with.~
IF~~THEN REPLY~And *our* citadel?~GOTO Tour3
END

IF~~THEN BEGIN Tour3
SAY~The Citadel we seek is just the opposite. Only very few even in Thay know it exists, even fewer know where it is and probably only Szass Tam and his trusted know how to access it.~
=~I assume that Szass has guarded the old place with powerful magic that may only be overcome by something equal.~
IF~~THEN REPLY~Or by one of our famous tricks maybe...~ GOTO Tour4
IF~~THEN REPLY~We have seen pretty little of the red or the cowled wizards so far.~GOTO Tour4
END

IF~~THEN BEGIN Tour4
SAY~Others than those directly surrounding Szass Tam will probably be at the REAL new center of this town, the almighty Guild of Foreign Trade. The headquarters are at the far east end of the Harbour in its own complex.~ 
IF~~THEN DO~SetGlobal("OpenE","RTF060",1)~EXIT
END

IF~~THEN BEGIN Saem2
SAY~Good to know, <CHARNAME>. His ship may be an option should we have need to depart the city in a haste.~
IF~~THEN REPLY~I will remind him that he owes us quite a bit should it become necessary.~EXIT
END
END

BEGIN RTSLAV1
IF~GlobalLT("RTColan","GLOBAL",5)~THEN BEGIN Hoods
SAY~If the Red Hoods overcome those bastards, we'll have a better life.~
IF~~THEN EXIT
END

BEGIN RTSLAV2
IF~GlobalLT("RTColan","GLOBAL",5)RandomNum(2,2)~THEN BEGIN Hoods
SAY~If the Red Hoods overcome those bastards, we'll have a better life.~
IF~~THEN EXIT
END

IF~GlobalLT("RTColan","GLOBAL",5)RandomNum(2,1)~THEN BEGIN SailS
SAY~This famous sailor has arrived with a ship from the Sword Coast, imagine all the way.~
IF~~THEN EXIT
END

IF~GlobalGT("RTColan","GLOBAL",4)RandomNum(3,1)~THEN BEGIN Labo1
SAY~My teeth rot from the garbage they feed us.~
IF~~THEN EXIT
END

IF~GlobalGT("RTColan","GLOBAL",4)RandomNum(3,2)~THEN BEGIN Labo2
SAY~They whipped Garny to death yesterday for stealin' a fish.~
IF~~THEN EXIT
END

IF~GlobalGT("RTColan","GLOBAL",4)RandomNum(3,3)~THEN BEGIN Labo3
SAY~The plague shall come over the red wizards.~
IF~~THEN EXIT
END

BEGIN RTSLAV3
IF~AreaCheck("RTF093")~THEN BEGIN Lizsave1
SAY~The gods may bless you, we were supposed to be lunch for those lizard warriors.~
IF~~THEN REPLY~Who keeps such creatures in the heart of a civilized town?~ GOTO Lizsave2
IF~~THEN REPLY~Are they pets of Szass Tam?~ GOTO Lizsave2
END

IF~~THEN BEGIN Lizsave2
SAY~They are Samas Kul's personal army of sorts, you know, the Master of the Guild of Foreign Trade. Cross his ways and you'll end up like us.~
IF~Global("RTSamThrone","GLOBAL",0)~THEN REPLY~Time to meet that guy, I suppose.~ EXIT
IF~Global("RTSamThrone","GLOBAL",1)~THEN REPLY~Not an easy guy to deal with, I admit.~EXIT
IF~~THEN REPLY~Thanks for the warning, get out of here quickly.~EXIT
END

IF~AreaCheck("RTF094")~THEN BEGIN Brew1
SAY~What about a drink of the best brew east of the West, friends?~
IF~~THEN REPLY~Sure, there's nothing better than true craftsmanship.~GOTO Brew2
IF~~THEN REPLY~Eh, we'd better keep sober and ready for action.~ GOTO Brew2
END

IF~~THEN BEGIN Brew2
SAY~(Mumbles) Wonder what they keep in the Treasury these days - guards are heavy and the stink of the ooze penetrates even this place. (Loud) Watcha say, splendid stuff, isn't it?~
IF~~THEN REPLY~My head is spinning already.~ GOTO Brew3
IF~~THEN REPLY~Good enough to call for another.~ GOTO Brew3
END

IF~~THEN BEGIN Brew3
SAY~ That Auril priestess isn't as cold as her goddess, I'd even say she's really hot, hihi. (Whispers) I swear she's in league with the Red Hoods.~
IF~~THEN REPLY~I could really get addicted to your brew, my friend.~GOTO Brew4
END

IF~~THEN BEGIN Brew4
SAY~ Wonder what that Athkatla captain has to deal with Samas Kul. Hope his goods will be in our stores soon. (Mutters) That red robe I saw entering the wizard's tower today was embroidered richer than any I've ever seen.~
IF~~THEN REPLY~That was really worth it, ah, here's your coin.~DO~TakePartyGold(60)~EXIT
END

BEGIN RTShark
IF~ Global("Back","RTF056",1)~THEN BEGIN Shark1
SAY~Everybody is welcome to Sharkey's provided your papers are all in order.~
IF~~THEN REPLY~Papers?~ GOTO Shark2
IF~~THEN REPLY~My coins are even better than any papers, man.~GOTO Shark3
IF~Global("SanRTFPlot3","GLOBAL",4)~THEN REPLY~We want to meet some friends in privacy.~GOTO Shark11
END

IF~~THEN BEGIN Shark2
SAY~Uh, you stumbled into the wrong place, mate!~
IF~~THEN EXIT
END

IF~~THEN BEGIN Shark3
SAY~ Splendid, you may be outlanders but you speak the right language.~
=~Standard or special?~
IF~~THEN REPLY~Standard is enough.~GOTO Shark4
IF~~THEN REPLY~Let us see your special.~GOTO Shark5
END

IF~~THEN BEGIN Shark4
SAY~Your choice, you don't know what you miss.~
IF~~THEN DO~SetGlobal("Back","RTF056",2) StartStore("X#FRIED2",LastTalkedToBy(Myself))~EXIT
END

IF~~THEN BEGIN Shark5
SAY~For a one-time life long fee of only 50gp you get the full access of the house.~
IF~~THEN REPLY~Sounds good to me.~DO~SetGlobal("Back","RTF056",3) TakePartyGold(50)~GOTO Shark6
IF~~THEN REPLY~Our stay here in town may not be long enough for that.~GOTO Shark7
END

IF~~THEN BEGIN Shark6
SAY~Customers, take your time to explore my establishment.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Shark7
SAY~Your choice. This is what we serve in the front room.~
IF~~THEN DO~StartStore("friend",LastTalkedToBy(Myself))~EXIT
END

IF~Global("Back","RTF056",2)~ THEN BEGIN Shark8
SAY~Yes?~
IF~~THEN REPLY~Standard is enough.~GOTO Shark4
IF~~THEN REPLY~Let us see your special.~GOTO Shark5
IF~Global("SanRTFPlot3","GLOBAL",4)~THEN REPLY~We want to meet some friends in privacy.~GOTO Shark11
END

IF~Global("Back","RTF056",4)~ THEN BEGIN Shark9
SAY~My friends?~
IF~~THEN REPLY~Let me see your offer.~GOTO Shark7
IF~~THEN REPLY~Have a good day.~EXIT
IF~Global("SanRTFPlot3","GLOBAL",4)~THEN REPLY~We want to meet some friends in privacy.~GOTO Shark11
END

IF~~THEN BEGIN Shark11
SAY~Your friends await you already.~
IF~~THEN DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTShark1")~EXIT
END


BEGIN RTNOBL1
IF~RandomNum(9,1)~THEN BEGIN WDcit1
SAY ~A new tax on us citizens every tenday...it will ruin us all.~
IF~~THEN EXIT
END

IF~RandomNum(9,2)~THEN BEGIN WDcit2
SAY ~I wonder if Szass Tam is in town these day, you never know with the High Zulkir.~
IF~~THEN EXIT
END

IF~RandomNum(9,3)~THEN BEGIN WDcit3
SAY ~I could spend days at the library and discover the extend of our future realm just by the maps they have there.~
IF~~THEN EXIT
END

IF~RandomNum(9,4)~THEN BEGIN WDcit4
SAY ~I wonder who can afford those prices over at *Sharkey's*. My family lives a tenday on the money they require for one single bowl of soup.~
IF~~THEN EXIT
END

IF~RandomNum(9,5)~THEN BEGIN WDcit5
SAY ~Heard that the Red Hoods have been defeated recently.~
IF~~THEN EXIT
END

IF~RandomNum(9,6) GlobalLT("RTColan","GLOBAL",5)~THEN BEGIN WDcit6
SAY ~They will sell a family of traitors at the next slave auction from the court.~
IF~~THEN EXIT
END

IF~RandomNum(9,7) GlobalGT("RTColan","GLOBAL",5)~THEN BEGIN WDcit7
SAY ~Heard there are some strange outlanders in town.~
IF~~THEN EXIT
END

IF~RandomNum(9,8)~THEN BEGIN WDcit8
SAY ~If the Red Hoods overcome those red wizards, we'll have a better life..~
IF~~THEN EXIT
END

IF~RandomNum(9,9)~THEN BEGIN WDcit9
SAY ~If only the great Szass Tam would find the time to manage the weather. Looks like rain once again (sigh).~
IF~~THEN EXIT
END


BEGIN RTNOBL2
IF~RandomNum(9,1)~THEN BEGIN WDcit1
SAY ~A new tax on us citizens every tenday...it will ruin us all.~
IF~~THEN EXIT
END

IF~RandomNum(9,2)~THEN BEGIN WDcit2
SAY ~I wonder if Szass Tam is in town these day, you never know with the High Zulkir.~
IF~~THEN EXIT
END

IF~RandomNum(9,3)~THEN BEGIN WDcit3
SAY ~I could spend days at the library and discover the extend of our future realm just by the maps they have there.~
IF~~THEN EXIT
END

IF~RandomNum(9,4)~THEN BEGIN WDcit4
SAY ~I wonder who can afford those prices over at *Sharkey's*. My family lives a tenday on the money they require for one single bowl of soup.~
IF~~THEN EXIT
END

IF~RandomNum(9,5)~THEN BEGIN WDcit5
SAY ~Heard that the Red Hoods have been defeated recently.~
IF~~THEN EXIT
END

IF~RandomNum(9,6) GlobalLT("RTColan","GLOBAL",5)~THEN BEGIN WDcit6
SAY ~That drow hooker is really an attraction. (Sigh) I heard she's very choosing with her customers.~
IF~~THEN EXIT
END

IF~RandomNum(9,7) GlobalGT("RTColan","GLOBAL",5)~THEN BEGIN WDcit7
SAY ~Heard there are some strange outlanders in town. Inquisitor Colano is a competent man, he'll take care of them.~
IF~~THEN EXIT
END

IF~RandomNum(9,8)~THEN BEGIN WDcit8
SAY ~If the Red Hoods overcome those red wizards, we'll have a better life..~
IF~~THEN EXIT
END

IF~RandomNum(9,9)~THEN BEGIN WDcit9
SAY ~If only the great Szass Tam would find the time to manage the weather. Looks like rain once again (sigh).~
IF~~THEN EXIT
END

BEGIN RTNOBL3
IF~AreaCheck("RTF050")~THEN BEGIN Ooops
SAY~Outlanders, bastards, scum, aaargh...~
IF~~THEN DO~SetGlobal("NobleDopple","GLOBAL",1)~EXIT
END

BEGIN RTBegg1

CHAIN
IF~ Global("CHint","LOCALS",0)~THEN RTBegg1 Hint
~A penny for my thoughts.~
DO~SetGlobal("CHint","LOCALS",1)~
==CVSan25J~Here is a coin. Do you have any thoughts now?~
==RTBegg1~There is a new girl on the streets at night. REALLY attracting.~DO~TakePartyGold(10)~
==CVSan25J~Such are your thoughts?~
==RTBegg1~She is dark, you know, might interest you, he?~
==CVSan25J IF~!PartyHasItem("RTMausa")~THEN~Maybe. Sounds interesting to me, <CHARNAME>. (Wink)~
==CVSan25J IF~PartyHasItem("RTMausa")~THEN~She is in deed extraordinary.~EXIT


BEGIN RTSLAR1

IF~RandomNum(3,1)~THEN BEGIN Move
SAY~Move on, citizen, no talking to the slaves.~
IF~~THEN EXIT
END

IF~RandomNum(3,2)~THEN BEGIN Auct
SAY~If you have interest in slaves, citizen, come to the next auction near the Caravanserai.~
IF~~THEN EXIT
END

IF~RandomNum(3,3)~THEN BEGIN Lizma
SAY~Keep workin', damn slave, or we'll feed ya to the lizard men.~
IF~~THEN EXIT
END

BEGIN RTUmbrl
IF~IsGabber([PC])~THEN BEGIN Umberl1
SAY~For what purpose do you visit the Bitch Queen?~
IF~~THEN REPLY~We want to see what a temple to an evil goddess looks like on the inside.  We're from, uh, Cormyr.  Tourists, you know?~GOTO Umberl2
IF~~THEN REPLY~We wish to pay our respects to the Queen of the Deeps.~ GOTO Umberl3
END

IF~~THEN BEGIN Umberl3
SAY~The High Priestess does not have time to see commoners, why should I allow you to waste her time?~
IF~~THEN REPLY~Perhaps a little donation to the church?  Would 25 gold suffice?~DO~TakePartyGold(25)~ GOTO Umberl4
IF~~THEN REPLY~Would a donation of 50 gold allow us entry?~ DO~TakePartyGold(50)~ GOTO Umberl4
IF~~THEN REPLY~What would your goddess demand of us?~GOTO Umberl5
END

IF~~THEN BEGIN Umberl2
SAY~You are unwise to waste my time, please leave.~
IF~~THEN EXIT
END
       
IF~~THEN BEGIN Umberl4
SAY~Such a piddling tribute!! You are unwise to waste my time, please leave.~
IF~~THEN REPLY~What would your goddess demand of us?~GOTO Umberl5
IF~~THEN REPLY~Ah, get lost, money grabber.~EXIT
END

IF~~THEN BEGIN Umberl5
SAY~For a 100 gold Umberlee may consider a smile.~
IF~~THEN REPLY~100 gold!?! We can't afford that. You'll have to find other peasants to exploit.~EXIT
IF~~THEN REPLY~Okay, here's your 100 gold.~ DO~TakePartyGold(100)~ GOTO Umberl6
END

IF~~THEN BEGIN Umberl6
SAY~ You may bask in the glory of Umberlee for as long as you like, friends.~
IF~~THEN EXIT
END

BEGIN RTKNMlig

IF~AreaCheck("RTF090")~THEN BEGIN Leagate1
SAY~Watcha think ya doin' here folks?~
IF~~THEN REPLY~Is this the famous Guild of Foreign Trade?~ GOTO Leagate2
IF~~THEN REPLY~Step aside, bigmouth, we have business with the Guild of Foreign Trade.~GOTO Leagate3
IF~PartyHasItem("RTKeyLig")~THEN REPLY~Can you read? Probably not, but look at the signature and step aside, tin head.~ EXIT
END

IF~~THEN BEGIN Leagate2
SAY~Sure 'nuff and that's why it's off limits for ya. Get movin'!!~
IF~~THEN EXIT
END

IF~~THEN BEGIN Leagate3
SAY~Sure you haven't and that's why this is off limits for ya. Get movin'!!~
IF~!PartyHasItem("RTKeyLig")~THEN EXIT
IF~PartyHasItem("RTKeyLig")~THEN REPLY~Can you read? Probably not, but look at the signature and step aside, tin head.~ EXIT
END

APPEND Smith
IF WEIGHT #-1~AreaCheck("RTF060")~THEN BEGIN NoSell
SAY~It is not permitted to sell weaponry to outlanders here in Thay.~
IF~~THEN REPLY~I see, never mind.~ EXIT
IF~~THEN REPLY~You must be joking, man, you can buy everything in Thay for just the right price.~GOTO NoSell2
END

IF~~THEN BEGIN NoSell2
SAY~Now you speak decent language, friend.~
IF~~THEN DO~StartStore("Roger",LastTalkedToBy(Myself))~EXIT
END
END

APPEND PIRFSH01
IF WEIGHT #1~AreaCheck("RTF090")~THEN BEGIN NoFish
SAY~Ya don't look like the fish-buyin' type to me, to say the least. Stop waistin' my time, ya scare away me cust'mers.~
IF~~THEN EXIT
END
END

APPEND PIRFSH02
IF WEIGHT #1~AreaCheck("RTF090")~THEN BEGIN NoFish
SAY~I hate fish, I hate the red wizards, I hate this town - I hate you.~
IF~~THEN EXIT
END
END

APPEND 25Spell
IF WEIGHT #-2~AreaCheck("RTF066")~THEN BEGIN LazThay1
SAY~Lazarus Librarus at your service.  Welcome to the Arcana Archives.~
IF~Global("Lazhere","RTF066",0)~THEN REPLY~ You found another place to sell your stuff?~DO~SetGlobal("Lazhere","RTF066",1)~GOTO LazThay2
IF~~THEN REPLY~ Can you tell us something about this town?~GOTO 4
IF~~THEN REPLY~ Now we know you are here we may return to buy something.~GOTO 3
IF~~THEN REPLY~ What have you brought along to this place? ~ GOTO 2
END

IF~~THEN BEGIN LazThay2
SAY~This town really has an enormous need in spells and magical items. They hate Mystra as much as she seems to hate them but the red wizards seem to manage to get along somehow.~
IF~~THEN REPLY~ Now we know you are here we may return to buy something.~GOTO 3
IF~~THEN REPLY~ What have you brought along to this place? ~ GOTO 2
END
END

BEGIN RTCANDRE

CHAIN
IF~AreaCheck("RTF050") Global("RTMetCandre","GLOBAL",0)~ THEN RTCANDRE Hooker1
~My, you are a cute one, just like I was looking for tonight, sweetie...~
DO~SetGlobal("RTMetCandre","GLOBAL",1)~
==RTMeli IF~InParty("RTMeli")~THEN ~You are yourself...ah...fascinating.~
=~But your words are just professional, too bad...~
==CVLou25J IF~InParty("Loureed")~THEN~If they're not Lolth's slaves then they become even more pathetic creatures, those *rulers of the Underdark* (spit).~
==CVGir25J IF~InParty("CVGiran")~THEN~ I heard about creatures like you, but you are quite different from what I had expected, drow lady.~
==CVIzy25J IF~InParty("CVIzzy")InParty("CVGiran")~THEN~Get lost quickest, girl, this boy has not any time for ya never!~
==CVSan25J IF~!InParty("RTMeli")!InParty("CVGiran")~ THEN~You take quite a risk to follow your business here, a drow in Thay.~
END
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~(Sigh) Under different circumstances you would really be one to deserve some more attention.~+ Hooker2
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~(Sigh) What a pity that some as educated and beautiful like you has to work on the streets at night.~+ Hooker2

CHAIN
IF~~THEN RTCANDRE Hooker2
~Nevermind. There is still time. You may use this little trinket should you ever feel the urge to visit...my bedchamber.~
DO~GiveItemCreate("RTMausa",Player1,1,0,0)~
==RTCANDRE~We will see each other for sure.~DO~EscapeArea()~EXIT

ADD_TRANS_TRIGGER Priilmu 9
~!AreaCheck("RTF060")~

EXTEND_BOTTOM Priilmu 9
IF~ AreaCheck("RTF060")~THEN REPLY ~But only in your fantasy, man. You have run far away but still not far enough to forget.~ EXIT
END

CHAIN
IF WEIGHT #-7~GlobalGT("SanBeginRTF","Global",1)~ THEN Cowenf2 InRtFwrong
~The practice of magic without a license is forbidden in this city. You shall receive one warning only. Further spellcasting will result in your death.~
==CVSan25J~Really?~
==Cowenf2 ~Eh...? Gosh, those old habits are hard to kill.~DO~ForceSpell(Myself,DRYAD_TELEPORT)~EXIT
