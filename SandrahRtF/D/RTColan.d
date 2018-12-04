BEGIN RTJudge
BEGIN RTAuct
BEGIN RTBidd1
BEGIN RTKniJu
BEGIN RTKniNeu
BEGIN RTColan

IF~ Global("RTColan","GLOBAL",2)~THEN BEGIN Intro
SAY~It is time we acquaint with each other, visitors.~ 
IF~~THEN REPLY~Who might you be?~GOTO Intro2
IF~~THEN REPLY~Here is a coin, get moving, beggar.~ GOTO Intro2
IF~~THEN REPLY~Are we under constant observation in this town?~ GOTO Intro2
END

IF~~THEN BEGIN Intro2
SAY~I am Inquisitor Colano, Chief-Inquisitor Colano, to be exact. My task is to inquire for the unusual and suspicious in this town.~
IF~~THEN REPLY~This is a trade centre, isn't it? Visitors from abroad should neither be unusual nor suspicious.~DO~SetGlobal("RTColan","GLOBAL",3)~ GOTO Intro3
IF~~THEN REPLY~I'm just a normal <PRO_RACE> <PRO_MANWOMAN>. What could be unusual or suspicious with me?~DO~SetGlobal("RTColan","GLOBAL",3)~ GOTO Intro3
END

IF~~THEN BEGIN Intro3
SAY~ Right, right...those who come by ship or through one of the main gates sure are many. Those that somehow appear out of nowhere are rare and of course subject to my inquiries. You are from the Sword Coast?~
IF~~THEN REPLY~Yes.~GOTO Intro4
IF~~THEN REPLY~No.~ GOTO Intro4
END

IF~~THEN BEGIN Intro4
SAY~Ah, not very relevant, just to get an idea of your honesty.~
=~So...you appear and we have a number of dead merchants on the street. Coincidence?~
IF~~THEN REPLY~We were attacked by them! Did you not see the corpses? It were doppelgangers.~GOTO Intro5
IF~~THEN REPLY~Where were you and your security when those doppelgangers attacked us, he?~ GOTO Intro5
END

IF~~THEN BEGIN Intro5
SAY~ *Quickly inspects a number of finely scribbled notes.*~
=~Doppelgangers, yes, yes...~
=~So, where are we? Ah, yes. An unlicensed hooker. What about her?~
IF~~THEN REPLY~What? She approached us, like those women do in a town like this. We had no business with her. Unlicensed means she does not pay your bribe, he?~ GOTO Intro6
IF~~THEN REPLY~Unlicensed? How are we to know that? Does it mean she does not bribe you enough?~ GOTO Intro6
END

IF~~THEN BEGIN Intro6
SAY~ Uncivilized, that's how the Sword Coast is...No one bribes a chief inquisitor in Thay....*Consults again his wide heap of scribbled notes.*~
=~Ah, how forgetful - what is your name, traveller?~
IF~~THEN REPLY~Veldrin.~ DO~SetGlobal("RTNameVel","GLOBAL",1)~GOTO Intro7
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY~I am the famous artist Prism. ~DO~SetGlobal("RTNamePri","GLOBAL",1)~GOTO Intro7
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY~I am the Nymph Abela.~DO~SetGlobal("RTNameAbe","GLOBAL",1)~GOTO Intro7
IF~~THEN REPLY~I am <CHARNAME>.~ DO~SetGlobal("RTNameCha","GLOBAL",1)~GOTO Intro7
END

IF~~THEN BEGIN Intro7
SAY~*Scribbles additional notes on the rim of an already covered sheet.* I see, I see...~
=~Well, this has clarified some things, then, have a good day.~
=~Eh...~
=~...~
=~Just one question, sorry, I am really so forgetful - Do you know one Edwin Odesseiron by any chance?~
IF~~THEN REPLY~We have once met him on the Sword Coast but that was long ago.~DO~SetGlobal("Edyes","LOCALS",1)EscapeArea()~EXIT
IF~~THEN REPLY~(Lie) I never heard the name before.~DO~EscapeArea()~ EXIT
IF~~THEN REPLY~We had never anything to do with the red scum.~ DO~SetGlobal("Edyes","LOCALS",1)EscapeArea()~EXIT
IF~~THEN REPLY~(Truth) I never heard the name before.~ DO~EscapeArea()~EXIT
END

CHAIN
IF~Global("RTColan","GLOBAL",14)~THEN RTColan RTTrial1
~Thank you, your honour. First there is the question about the culprit's identity - even if it may be minor...who cares what is written on an unmarked gravestone anyway.~
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN~The name given during my inquiries was Veldrin, an obvious lie. It is an everyday name...but only for a drow!~
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN~The name given during my inquiries was Prism, an obvious lie. We all know about the sad death of that great artist long ago at Nashkel.~
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN~The name given during my inquiries was Abela, an obvious lie. She was a famous nymph but is dead and the person here may be called a beauty but surely not a nymph.~
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN~The name given during my inquiries was <CHARNAME>, an obvious lie, as that famous one was killed in the fight against Bhaal long ago. We all know that fact from Volo's witness.~
==RTJudge~A good start, chief inquisitor, go on like that and we will have a hanging tomorrow morning.~
==CVSan25J~Even in Thay nobody hangs for being cautious of not spreading the own name in a foreign town unnecessarily.~
==RTColan~Right, woman, if that were the only point.~
==RTJudge~Continue - if that bitch opens her mouth again we'll have her gagged for the rest of the trial. Order in the Court!~
==RTColan~Your honour, I'd rather avoid that. Those primitive outbursts often reveal facts they may try to hide from us.~
==RTJudge~Your methods are legendary, chief inquisitor, you may have it your way.~
==RTColan~The killing of several merchants, is next on the list...~
==CVGir25J IF~InParty("CVGiran")~THEN~You know well those were doppelgangers.~
==CVIzy25J IF ~ InParty("CVIzzy")~THEN~ Even the stupidest inkwisitar found quickest it was doppelgangers!~
==RTMeli IF~ InParty("RTMeli")~THEN~This is a farce, judge. There is no denying that we were attacked by doppelgangers.~
==RTColan~True, the attackers were doppelgangers - but every honest person would have reported such an event to the authorities. Unless, of course, they want to stay undercover.~
==RTJudge~*The heavy quilt scratches the parchment as the judge writes down the evidence.*~
END
++~We had no chance to report the attack as the inquisitor popped up right away after the event.~+ RTTrial2
++~What is this inquisitor trying to prove with his so-called evidence?~ + RTTrial2

CHAIN
IF~~THEN RTColan RTTrial2
~Chief Inquisitor, my dear, chief inquisitor, and not for no reason.~
==RTJudge~You always get your man, so to say. Continue.~
==RTColan IF~Global("Edyes","LOCALS",1)~ THEN~The culprit knows Edwin Odesseiron from their common days in Amn and Baldur's Gate. Furthermore, the The knights watching the estate witnessed the culprit to have been out there. With a forged authorisation.~
==RTColan IF~Global("Edyes","LOCALS",0)~ THEN~Questioned directly the culprit denied to know Edwin Odesseiron, another one in the line of lies told by that person. The knights watching the estate witnessed the culprit to have been out there. With a forged authorisation.~
==CVSan25J~One cannot deny that your investigation is thorough, chief inquisitor. You should stick to the facts and not draw conclusions prematurely.~
==RTColan~This is exactly what I am known for - and thank you for your compliment, it is always good to be recognised for one's art.~
=~The authorisation for the Odesseiron estate, let's continue with that. I said forged, but actually that is not accurate. It was a real one, but not for the person who used it. It was taken from the dead hand of one of the Legion's knights murdered in cold blood!!!~
END
++~But we are not the murderers, we just found the body and the paper by chance.~+ RTTrial3

CHAIN
IF~~THEN RTColan RTTrial3
~By chance? You stumble through this series of misdeeds just by coincidence? Don't insult the judge by taking him for such a fool.~
==RTJudge~A fool?~
==RTColan~So - we know the culprit knows Odesseiron and entered the estate unlawfully. It is correct, we cannot prove the murder directly, just note the *strange coincidence*. Which is maybe not a coincidence in the light of the next fact I produce.~
=~The culprit contacted Candrella once the first chance for it appeared.~
END
++~We were approached by a hooker, how were we to know who she was?~ + RTTrial4
++~To find a companion for the night is often the first thing a lone traveller does when coming to a new town, isn't it?~+ RTTrial4

CHAIN
IF~~THEN RTColan RTTrial4
~Ha, HOW DO YOU KNOW IT BY NOW. Yes, the hooker, the black one. Do we need more evidence, your honour?~
==CVSan25J~What evidence is the name of a whore, be it Candrella or not?~
==RTJudge~You fool no one any more, woman!! You know Odesseiron, you know his liaison, you come here by false names. You come to support the Red Hoods. You are traitors and imposters - and you are sentenced to death.~
=~*The heavy quilt writes the final verdict on the bottom of the parchment.*~
==RTColan~I have more facts on the case, your honour...~
==RTJudge~You are a brilliant man, Colano, but I think we have already more than we need. You may now follow the next urgent case you undoubtedly have.~
==RTColan~But...~
==RTJudge~The case is closed. These are to be hanged in the morning from the walls of the Citadel.~
=~What is...?~DO~SetGlobal("NiteMove","RTF163",1)~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",15)~ THEN RTKniJu Intervene
~*The knight places a sealed scroll on the judges table.*~
DO~ SetGlobal("RTColan","GLOBAL",16)~
==RTJudge~Why was I not informed that the Zulkir had an interest...~
==RTKniJu~Oh, there is no interest to influence the jurisdiction, your honour. My master just wants a few words with one of that party.~
==RTJudge~Well, he'd better be quick as they just have a few hours left to live.~
==RTKniJu~He would be very unhappy if the one known as Sandrah of Waterdeep would escape him so easily by letting herself be hanged.~
==RTJudge~We will keep them in the cells just below for convenience tonight. Tell...HIM...he may find the girl he so much desires there.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTInCell","RTF061",7)~ THEN RTKniJu Intervene2
~You surely cannot await to hear your verdict, scoundrels. Death, a life as a galley slave, who knows. Let's see the judge.~
DO~ SetGlobal("RTInCell","RTF061",8)~ EXIT

CHAIN
IF~Global("RTColan","GLOBAL",17)~ THEN RTKniJu Intervene2
~You all go downstairs to the cells. You - *he turns to Sandrah*- have a rendezvous with the master now.~
DO~ SetGlobal("RTColan","GLOBAL",18) EscapeArea()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTKniJu Alert
~The outlanders have escaped the prison!! Alert!!~
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTTHKn Alert
~The outlanders have escaped the prison!! Alert!!~
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~Global("RTCityHost","GLOBAL",2)~THEN RTKniNeu Alert
~The outlanders have escaped the prison!! Alert!!~
DO~SetGlobal("RTCityHost","GLOBAL",3) Enemy()~ EXIT

CHAIN
IF~!Global("RTCityHost","GLOBAL",2)~THEN RTKniNeu NoAlert
~I have no talk with outlanders. Move on!!~ EXIT

CHAIN
IF~Global("NargaR","RTF063",1)~THEN CVNarga Free63
~Sssso itsss finally achieved, my lovely.~
DO~SetGlobal("NargaR","RTF063",2)~
==CVSan25J~To be hanging from the high walls of the Bezantur Citadel is not such a bad perspective, given the other choices.~
==CVNarga~Sssssh, itsss not appropriate to disssplay the fearlesss heroine anymore. If itsss not your fate that bossssers you it sshould be the fate of your friendsss.~
==CVSan25J~Have you a decent proposal to make or do you just want to give me a final shower?~
==CVNarga~I love your pride, sssure I do. It makesss you even more valuable when you kneel by my ssside, happy to pleassure me in every way.~
=~Sssthe deal isss eassy. You beg me to become my love ssslave after all and I will accept your friendsss asss slaves to my household. They can do odd tasksss according to ssseir limited abilities. They will be alive.~
==CVSan25J~It is not understandable for me what makes Szass Tam resurrect such a complete and incompetent loser like you time and time again. Maybe you should consider it as a special kind of cruelty from his side.~
==CVNarga~Your anssswer is of no importansss, my lovely. We will all depart right now.~
==CVSan25J~Oh, yes, we will. You will depart to hell and we will depart to freedom.~
DO~ActionOverride("CVSandr",Attack("CVNarga"))~EXIT

CHAIN
IF~ Global("RTColan","GLOBAL",3)~ THEN RTAuct Sell1
~...the next bunch on the block will be sold as a package, criminals of the worst kind - traitors to Thay - with a death sentence having chosen slavery over the noose...~
DO~SetGlobal("RTColan","GLOBAL",4)~
==RTSlav1~...as if there was a choice for a father...~
==RTSlar1~ *WHIP* Silence!~
==Cultsa7~Daddy!!~
==RTAuct~...a learned bookkeeper, the woman a splendid cook, yes - and the girl, you can see yourself what she'll be in a year or two...~
==RTSlav1~Scum! You're a slave yourself of the red scourge.~
==RTSlar1~ *WHIP* Silence!~
==RTAuct~Do I hear six thousand?~
==RTCowl1~*Raises a hand*~
==RTCowl2~*Raises a hand*~
==RTAuct~Seven thousand!~
==CVSan25J~*Raises a hand*~
==RTAuct~Eight thousand for a lady with an exquisite taste.~
==RTBidd1~*Raises a hand*~
==Cultsa7~Oh no!!~
==RTAuct~Nine thousand, thank you, Master Calhouh.~
==RTCowl1~(Sigh) There they go, only a fool dares to bid against the red robe.~ DO~EscapeArea()~
==CVSan25J~*Raises a hand*~
==RTAuct~Eh?...well...Ten.~ 
==RTCowl2~Lady, do you know what you're doing?~DO~EscapeArea()~
==RTBidd1~What?~
==RTAuct~Was that twelve?~
==RTBidd1~Aaargh!~
==RTAuct~Twelve thousand for Master Calhouh.~
==CVSan25J~*Raises a hand*~
==RTAuct~Sorry, Master Calhouh, but I have thirteen from the lady now.~
==RTBidd1~Lady, that will not be your lucky number!~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==RTAuct~To the highest bidder, thirteen thousand for you, my lady, may the gods protect you.~DO~TakePartyGold(13000) EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",5) ~THEN RTSlav1 Sell2
~You own us now, mistress, and even as we are slaves now we may still call ourselves lucky today.~
DO~SetGlobal("RTColan","GLOBAL",6)RealSetGlobalTimer("Colano2","RTF060",50)~
==Cultsa7~That red devil, what would he have done with me?~
==CVSan25J~No need to worry about that any more.~
==RTSlav1~*Tears well up in the father's eyes.*~
==CVSan25J~Do you have any save place to go to now?~
==RTSlav1~What do you mean, mistress, we go wherever you order us to go?~
==CVSan25J~I keep no slaves but I assume the responsibility I have for you now.~
==RTSlav1~I am Stanton, my wife is Harretta and my daughter is Renata. We received the death sentence because I opposed the mighty red zulkir - we are worse than criminals, outcasts...~
==CVSan25J~If you oppose Szass Tam then the Red Hoods should be an option.~
==RTSlav1~Psst...I know not how you got that information, my lady, but...yes, I trust you.~
==Cultsa7~We can go to our friends, lady, is that true?~ DO~EscapeArea()~
==CVSan25J~Yes, it is.~
=~I do not want to pressure you but if you know how to contact them it is something I try myself as well.~
==RTSlav1~Meet us in the old mill near Oghma's Enclave. This here is no save place to talk any longer.~ DO~AddexperienceParty(18000) EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",7)~THEN RTColan Sell3
~You move quickly and you cause a lot of ripples in my quiet pool, eh...~
DO~SetGlobal("RTColan","GLOBAL",8) SetGlobal("SanRTFPlot3","GLOBAL",2)~
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN~*Consults his notes* ...Veldrin.~
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN~*Consults his notes* ...Prism.~
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN~*Consults his notes* ...Abela.~
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN~*Consults his notes* ...<CHARNAME>.~
==CVSan25J~It makes it quite easy for you to keep on our track, Chief-Inquisitor.~
==RTColan~*Consults his notes again* Ah, right - it should be you, lady, I should address, you made that unfortunate purchase.~
==CVSan25J~Unfortunate? Neither for me nor for that family, maybe for some red robed maroon - are you in his service, Colano?~
==RTColan~My lady, please, I work for the law and justice in Thay, for nothing and no one else. It is the law that makes me act once again.~
=~Outlanders are not allowed to keep slaves in Thay.~
==CVSan25J~We have no problem in this case as I do not keep them.~
==RTColan~*Scribbles down Sandrah's statement on the backside of one of his sheets.*~
=~I see...you set them free?~
==CVSan25J~Yes.~
==RTColan~Hm...*consults his notes again.* I see no law forbidding that.~
=~Hm.~
==CVSan25J~Something else?~
==RTColan~They might have been safer under your protection...~
==CVSan25J~...which the law you enforce would forbid...~
==RTColan~Right. I think you know very well what you are doing, lady...what was your name again?~
==CVSan25J~I did not mention it before.~
==RTColan~*Searches hectically through his pile of note papers.* Mmh, no, you didn't.~
=~...~
=~With the pace you keep it may not be long until we see each other again.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",9)~ THEN RTColan Property
~(Sigh) Here I am once again.~
DO~SetGlobal("RTColan","GLOBAL",10)~
==CVSan25J~We have already missed you and your *protection*, Colano.~
==RTColan~Really? (Consults his notes as usual) You will not be so happy if you hear about my reason to bother you this time.~
==CVSan25J~And the reason is...?~
==RTColan~(After some searching through his pile of crumbled notes he finally is ready to cite from the correct one.)~
=~We received a charge against you from a VERY influential person for *destruction of private property, trespassing, breach of the peace*...~
==CVSan25J~Fine, fine...(Laughs) As we do such things all the time, Chief-Inquisitor, can you enlighten us on the details of this specific deed? ~
==RTColan~(You could swear you have seen a smile appear on Colano's face for an instant.) Oh, with the trail you leave behind you, it's probably impossible to keep an overview yourself...~
=~Ehem, you destroyed some expensive Lizard Guardians recently, didn't you?~
==CVSan25J~Somebody must have left them unattended, Colano. We met them by coincidence and they attacked us. We had no chance but to defend ourselves.~
==RTColan~Their owner, the honourable Samas Kul, has a different opinion on that.~
==CVSan25J~I see, the Master of the Guild of Foreign Trade himself. (She ponders for a second.)~
=~Say, good Chief-Inquisitor, if we are accused of *destruction of private property* the best way to settle the cause would probably be to pay for the damage to the owner?~
==RTColan~(The notes he consults do not seem to contain any answer for the Inquisitor.)~
=~My lady, ehem, the Master Samas Kul is a very busy and...eh, dangerous man...but...I see that will not hinder you. You may also be in a position to compensate for his not-so-small demands, my lady.~
==CVSan25J~Then we will visit him soon and clarify the whole issue. Will that be in your interest as well?~
==RTColan~You seem to be determined, my lady - I somehow have the feeling you are even keen to meet that man.~
=~In any case, you will need a recommendation to allow entry into the Guild of Foreign Trade. As I cannot hinder you, I will give you this letter to open the doors for you. (Whispers) Please be careful, my lady.~ DO~ GiveItemCreate("RTkeylig",Player1,1,0,0) EscapeArea()~
==CVSan25J~Thank you, Colano. Do not worry for us.~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",11)~ THEN RTColan Arrests
~(Instead of his usual pile of scribbled notes the Chief-Inquisitor has a sealed document in his hand this time.)~
==CVSan25J~Another misdeed, Chief-Inquisitor?~
==RTColan~Things do not look so rosy for you any more, my lady.~
==RTColan IF~Global("RTNameVel","GLOBAL",1)~THEN~Veldrin, you must come with me, the Court is waiting.~
==RTColan IF~Global("RTNamePri","GLOBAL",1)~THEN~Prism, you must come with me, the Court is waiting.~
==RTColan IF~Global("RTNameAbe","GLOBAL",1)~THEN~Abela, you must come with me, the Court is waiting.~
==RTColan IF~Global("RTNameCha","GLOBAL",1)~THEN~<CHARNAME>, you must come with me, the Court is waiting.~
==CVSan25J~Court?~
==RTColan~Here is the warrant, the list of accusations against you is long - but I am afraid the process against you will be quite short.~ DO~EscapeArea()~
END
++~Wait a...~ DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTPris1")~EXIT
++~You have no right...~DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTPris1")~EXIT

CHAIN
IF~Global("RTColan","GLOBAL",12)~ THEN RTColan ArrestJ
~Your honour?~
DO~SetGlobal("RTColan","GLOBAL",13)~
==RTJudge~Colano, whom do you bring next?~
==RTColan~Here are the papers, your honour.~
==RTJudge~(Glances at the pile of papers for a second)~
==RTRedwi1~The Chief-Inquisitor has forgotten to add the illegal slave issue to his investigation.~
==RTColan~They do not own slaves...~
==RTRedwi1~But that lady at the recent auction has...~
==RTJudge~SILENCE!!~
==RTJudge IF~Global("RTNameVel","GLOBAL",1)~THEN~Hm, Veldrin, you have a residence in Thay?~
==RTJudge IF~Global("RTNamePri","GLOBAL",1)~THEN~Hm, Prism, you have a residence in Thay?~
==RTJudge IF~Global("RTNameAbe","GLOBAL",1)~THEN~Hm, Abela, you have a residence in Thay?~
==RTJudge IF~Global("RTNameCha","GLOBAL",1)~THEN~Hm, <CHARNAME>, you have a residence in Thay?~
END
++~No, I have a room at Sharkey's.~ EXTERN RTJudge NoBail
++~No, I stay with friends.~EXTERN RTJudge NoBail

CHAIN
IF~~THEN RTJudge NoBail
~You have someone to stand bail for you?~
==CVSan25J~We have enough gold and jewels ourselves for that.~
==RTJudge~Not permissible.~
=~(Writes something on the last page of the parchment and seals it.)~
==RTRedwi1~They also have...~
==RTJudge~SILENCE!!~
=~Take them to the cells. No bail. The trial is set for tomorrow morning.~
=~NEXT!!~EXIT

CHAIN
IF~ GlobalGT("RTColan","GLOBAL",7) AreaCheck("RTF052")~ THEN RTSlav1 Mill
~You are courageous people and a glimpse of hope in these dark days over Thay.~
DO~ReputationInc(1)~
==CVSan25J~Stanton, you were condemned for treason?~
==RTSlav1~You are not from Thay, obviously. A man loving his homeland is easily called a traitor here these days.~
==CVSan25J~We have not come here to befriend the red wizards, you can be open with us.~
==RTSlav1~You already know about the Red Hoods. Many of my own people think they are just a legend.~
==CVSan25J~Have you ever heard the name Candrella?~
==RTSlav1~You know her?~
==CVSan25J~She is a trusted acquaintance, a friend I try to contact here.~
==RTSlav1~*Looks long at Sandrah and then at you before he answers.*~
=~I may make another big mistake but I trust you. What is your name?~
==CVSan25J~Sandrah of Waterdeep.~
==RTSlav1~You need to enter the Odesseiron Mausoleum...~
==CVSan25J~We have already received a ward stone for it but it seems a second key is also required.~
==RTSlav1~(Sigh) It is currently in our enemy's hands, most likely kept in the treasury chamber of the court building. Autharch Ithrash has confiscated it but to our advantage he does not yet know what he has in his hands.~
=~We will leave town now and hide near the Odesseiron estate. Our friends will find us. Good luck, my lady.~ DO~EscapeArea()~
==CVSan25J~Good luck for you, we will see each other in safety, hopefully.~ DO~AddJournalEntry(@2069,QUEST) ActionOverride("CVCultgi",EscapeArea())~EXIT

CHAIN
IF~Global("NargaR","RTF063",3)~THEN RTColan Reveal1
~ (Sigh) You make it not an easy job to protect you, my lady...Sandrah.~
DO~SetGlobal("NargaR","RTF063",4) SetGlobal("RTColan","GLOBAL",20) SetGlobal("RTCityHost","GLOBAL",1) SetGlobalTimer("RTCityHos","GLOBAL",1800) ~
==CVSan25J~(Smiles) Sandrah? I should have known...~
=~I apologize, Chief-Inquisitor, you did your best but maybe protection does not serve my purpose too well.~
==RTColan~You may want to attract the attention of certain parties in this town and you seem to always get what you want.~
==CVSan25J~Have I done enough to be of interest?~
==RTColan~Sure - and maybe it is better for the moment to stop it...in all our interest.~
=~Force is useless against you so please take my words as a true invitation.~
=~There are people who like to meet you and I am certain you want to meet them, too.~
==CVSan25J~There are two categories of people I want to meet in Bezantur, one I regard as friends, the others as enemies.~
==RTColan~I am talking of friends, my lady.~
==CVSan25J~(Nods) You are much more than you want people to see...my friend.~
==RTColan~Which is true for you as well..eh, enough now, time is pressing.~
=~You will need something that should be in the treasury at the other side of the hall. Once you have it you will know how to use it. In a few hours this town will not be a safe place for you any more - or for me.~
==CVSan25J~Thank you, Colano, we will definitely meet again.~
==RTColan~I wish I could be as confident in that as you are.~DO ~EscapeArea()~
==CVSan25J~Hope, my friend, hope and courage.~EXIT

CHAIN
IF~Global("Szassretr","RTF078",1)~THEN RTColan GoCita
~Things start to get moving, the Zulkir who passed here in haste to get through the portal did not notice me in my poor hiding place below the table.~
DO~SetGlobal("Szassretr","RTF078",2)~
==CVSan25J~Szass Tam himself, my friend, and he has retreated to his Citadel again.~
==RTColan~Ooh, too bad. There is no way to activate the portal without him.~
==CVSan25J~To be precise just like you always try to be, there is no way to activate it without his hand.~
==RTColan~(Smiles wickedly) I see the difference...and it explains the bleeding stump that was his left arm.~
==CVSan25J~Once we went through the portal I ask you to retrieve the two items we need to open it again and keep them save. Let only Candrella and Edwin and the red hoods use them to access the Citadel when the time is right.~
==RTColan~I am confident in your success, my lady.~
==CVSan25J~I have friends that guarantee success - friends like you are one.~
=~*She gently kisses his cheek.*~EXIT

