BEGIN RTEdwin

IF~Global("Opening","RTF082",7)~THEN BEGIN NewEd1
SAY~<CHARNAME>, Sandrah, I can imagine you are a bit amazed to find me here today. (Their imagination is limited, I must be careful not to overwhelm them.)~
IF~~THEN REPLY~Edwin?~GOTO NewEd2
IF~~THEN REPLY~EDWIN??~ GOTO NewEd2
IF~~THEN REPLY~Edwin Odesseiron, the last of the family.~ GOTO NewEd2
IF~~THEN REPLY~Edwin - This is a trap, Candrella, he's a traitor if there ever was one!!~GOTO NewEd2b
END

IF~~THEN BEGIN NewEd2
SAY~A valid observation, <CHARNAME>, Edwin Odesseiron, last of the premier family of Thay (<PRO_HESHE> always had a faible to state the most obvious). Edwin Odesseiron, leader of the Red Hoods and liberator of Thay. (They love such grand titles, I know they do.)~
IF~~THEN REPLY~A not so small surprise, Edwin, especially considering you as husband to Candrella and father of her daughter as well. ~DO~SetGlobal("Opening","RTF082",8) SetGlobal("SanRTFPlot3","GLOBAL",4)~ EXTERN RTCandre NewEd3
END

IF~~THEN BEGIN NewEd2b
SAY~Hush, no need to get excited. I will become clear to you in a minute. (At least I hope that simian will be able to comprehend it all. If not, I hope Sandrah should be.)~
IF~~THEN GOTO NewEd2
END

CHAIN
IF~Global("Opening","RTF082",1)~ THEN RTOdLuc FoundCan1
~They are here, mama!~
DO~SetGlobal("Opening","RTF082",2) SetGlobal("SanRTFPlot3","GLOBAL",3)~
==RTCandre~Yes, all will become better now.~EXIT

CHAIN
IF~AreaCheck("RTF082") GlobalLT("Opening","RTF082",4)~THEN RTOdButl Hint2
~ Hope appears in these caves today!!~
==CVSan25J~Candrella and her daughter will be around here as well, I presume.~
==RTOdButl~Mylady is in her quarters in the south of this area.~
==CVSan25J~Your lady? Lady O...I see...~ EXIT

CHAIN
IF~AreaCheck("RTF082") GlobalGT("Opening","RTF082",3)~THEN RTOdButl Hint3
~ Hope appears in these caves today!!~
EXIT

CHAIN
IF~Global("Opening","RTF082",3)~ THEN RTOdLuc FoundCan2
~Hello, Mystra.~
DO~SetGlobal("Opening","RTF082",4)~
==RTCandre~Greetings, my goddess. Psst, Lucinda, this will be our little secret, yes?~
==CVSan25J~Your mother is right, for the time beeing I will stay Sandrah of Waterdeep for all our safety. I greet you again, Lucinda, it is good we finally meet, Candrella.~
==RTCandre~We will soon reveal the necessity for this arrangement, my goddess...eh, Sandrah. You have already received some insight into our situation and more you will learn down here today. The first step is made, our latern and the entrance are in our hands once again.~
==CVSan25J~There must be some other means of entrance as you met us in the town above, Candrella.~
==RTCandre~There is a small hidden entrance from the cellar of the mansion but it is for special purposes only, as the estate is under close observation and you must use a potion to pass it unseen. We cannot apply any spells as such would be immediately recognised by the red wizards.~
==CVSan25J~Candrella, after we met with you and your daughter it is now probably the time you introduced us to your husband? I think it will shed further light on the situation here.~
==RTCandre~My Ssinssrigg anticipates this meeting just as well, even...~
==RTCandre IF~GlobalGT("Cowscroll","GLOBAL",3)~ THEN~He is a bit nervous due to some history he shares with you - but you will see yourself in a little while.~
==RTCandre ~I'd propose to see another acqaintance you made above before we see my beloved husband.~
==CVSan25J~Lead on, Candrella.~
==RTCandre~This way please.~ EXIT

CHAIN
IF~Global("Opening","RTF082",5)~THEN RTColan InredHod1
~ You were right, mylady, we were destined to meet again. Maybe we should start again with some introductions, Mystra, <PRO_LADYLORD> <CHARNAME>.~
DO~SetGlobal("Opening","RTF082",6)~
==CVSan25J~Let us keep it at Sandrah and <CHARNAME>, Colano. It is Colano still?~
==RTCandre~Squadron Leader Colano, head of the Red Hood intelligence service.~
==RTColan~I had to quit my part-time job as Chief-Inquisitor of Bezantur recently.~
==RTCandre~Colano was to protect you, forgive me, I know well you can protect yourselves quite well...I would rather say, protect US from your early recognition in Thay.~
==RTColan~You may have found by now that the alliance Szass Tam has gathered against the West but most of all against his primary target - Mystra - is quite significant.~
END
++~(Listen silently.)~+ InredHod2
++~We already decided to take them out one by one rather than by a frontal attack.~ + InredHod2

CHAIN
IF~~THEN RTColan InredHod2
~We believe that the battle must be fought in Thay as well as outside of Thay. The Red Hoods may play their role in it but most will be on your shoulders.~
==RTCandre~Before we should start to bring the storm over Thay, my goddess, we should reduce the power of our enemies in order to avoid a massive bloodshed.~
==CVSan25J~You are a Chosen of Mystra for many reasons, my Candrella. Your reasoning fits exactly with mine. We have already acquired the knowledge about an installation in the Sharp Teeth Wood we would like to eliminate.~
==RTColan~I am much relieved to hear that - on behalf of my home country and its people.~
==CVSan25J~It has been our intent from the beginning to keep the impact and harm caused for the people of Faerun to a minimum, Colano. This is not your fight and you should not suffer from the stupidity of a single mortal and the vanity of power hungry gods.~
==RTCandre~We should now all go to the northern part of this installation to meet my Ssinssrigg and discuss further plans.~EXIT

CHAIN
IF~~THEN RTCandre NewEd3
~I beg you to forget everything you ever thought to have known about my husband and listen to us. It is crucial for all of us, Sandrah. ~
==CVSan25J~If your former self was a masquerade, Edwin, I have to compliment you for the excellent performance.~
==RTEdwin~(Did she really say that - a compliment from her lips...) Well, to be honest, not all of it was brilliant acting from my side, a lot has changed since we last saw each other.~
=~(He reaches out to touch Candrella's hand.) A lot has changed, indeed.~
==CVSan25J~It must be true, I cannot imagine Candrella calling the Edwin I once knew her beloved Ssinssrigg nor letting him close enough to get her pregnant.~
==RTCandre~Are you willing to listen to what has happened -it is important for what we have to do next, both you and us.~
END
++~This will be most interesting.~ + NewEd4
++~It must be true, it is just too unbelievable to be a lie.~ + NewEd4

CHAIN
IF~~THEN RTCandre NewEd4
~It is the truth, I swear by my goddess and my daughter that it is.~
==RTEdwin~Years ago, my uncle Homen Odesseiron, Tharchion of Surthay, who raised me after Szass Tam's minions had killed my parents, sent me on a mission to the Sword Coast. It is on that occassion we first met and I do not know to this day whether his reason was forged or whether he only intended to get the last of his possible heirs safely out of Thay. ~
=~My uncle led a large scale operation to once and for all conquer Rashemen and he knew any failure would mean the extinction of our whole family from the hands of the High Zulkir.~
=~To make it short, the operation failed, Homen is missing to this very day, no one knows if he is dead or alive. The red wizards had killed or enslaved the Odesseirons and confiscated their lands and goods. Only the estate above us had remained as it legally belonged to a former mistress of another Zulkir who escaped the holocaust.~
==RTCandre~This mistress was my mother and it was me as her heiress whom Edwin found in his former home when he returned from abroad eight years ago and unaware of what had happened in his absence.~
==RTEdwin~Candrella initiated me to the secrets of the Red Hoods and as an outcast in my own former home they became my natural allies (And they badly needed the guidance and input of an intellectual analyst in their midst.)~
==RTCandre~We had lost our leader in a recent raid of Ithrash's mad legions and his lizard men and I had tried to substitute as good as possible, even if many mistrusted me as a half-drow and...a woman.~
==RTEdwin~With my family heritage and inborn leadership I naturally came just at the right time...~
==RTCandre~My Ssinssrigg, let us give our guests a break to comprehend the new situation and regather their health down here. Please feel free to look around and find some other members of the Red Hoods you might recognise. We will await you upstairs in the mansion when you are ready to discuss the future actions with us.~
=~You may take the other exit from these halls - it will lead you to the mansion's cellar. We await you in a more pleasant environment in the study. Lucinda, Edwin, let's all go upstairs.~
==CVSan25J~(Mumbles with a smile) Yes, they need a powerful leader...~DO~SetGlobal("RTMetCandre","GLOBAL",4)~
EXIT

CHAIN
IF~Global("SecTalk","RTF087",1)~THEN RTCandre Plans1
~I hope you have mastered your initial surprise about me and my husband Edwin.~
DO~SetGlobal("SecTalk","RTF087",2)~
==CVSan25J~So Edwin was forced to the underground and the Red Hoods by his family's fate after Homen's failed assault on Rashemen. You and Colano already were in that organisation opposing the Red Wizards.~
==RTCandre~So much is correct, Sandrah. Our private relationship grew with Edwin's growing involvements in the Red Hood's activities.~
END
++~I cannot really imagine the Edwin I knew freeing slaves and helping old ladies across the road.~+ Plans2
++~What are the motives and goals of the organisation, you seem to be in no position to overthrow the government or threaten Szass Tam?~+ Plans2

CHAIN
IF~~THEN RTCandre Plans2
~The Red Hoods are legions outside of the small enclave here, we are all over Thay. Thousands live in the underground and approximately as much are in the towns, many of them in influentual positions. ~
==RTEdwin~We are a mighty power and the Red Wizards fear and persecute us but with little success (Brilliant leadership prevents this).~
=~The Red Hoods will rule Thay (Odesseiron will finally rule Thay), what we need is the spark that starts the explosion and the additional power to hold off Szass Tam in his Citadel from the events.~
==RTCandre~My Ssinssrigg is right, as long as Szass and his unlimited undeads, clones and monsters can be summoned and deployed from the Citadel our attempts will cause nothing but bloodshed and desaster.~
==CVSan25J~You mean us, Candrella, the force to bind Szass, even defeat him, while you start the revolution against the Government?~
==RTCandre~The interests of Mystra and the interests of Thay are the same in this respect. We need to eliminate Szass Tam. The Red Hoods are ready to stabilize and rule Thay and prevent a political vacuum after his demise.~
==CVSan25J~The Odesseirons will rule Thay, that is.~
==RTCandre~You must understand Thay and its society, please. Do not make the mistake to compare this land with the Realms of the West. Tyranny, oppression, slavery and expansion wars have been the constant in Thay's history for millenia. The upper class rules the masses.~
=~Do not expect a drastic change within days, it would end in a massive civil war, uproar and destruction.~
==CVSan25J~You are content with a replacement of the rulers, Candrella, is that all?~
==RTEdwin~The most competent ruler Thay has ever had...~
==RTCandre~Ssst, my love. Let me explain so that <CHARNAME> and Sandrah do not misunderstand the situation.~
END
++~I will not aid one tyrant to replace another one.~ EXTERN CVSan25J Plans3
++~What do we care for Thay's internal affairs?~EXTERN CVSan25J Plans3
++~As long as you help us with Szass we will do what is needed.~EXTERN CVSan25J Plans3

CHAIN
IF~~THEN CVSan25J Plans3
~Now it is *Ssst* to you, <CHARNAME>, I trust Candrella to have a valid justification for her approach.~
==RTCandre~The change for Thay must come from above, from the rulers not from the masses. Sad as that fact is but the common folk will just seek revenge and their own gain in any time of trouble and under a weak government. ~
=~Edwin and me, we have been abroad, we have seen other countries and other models of society. We and our friends will not change it in a day but carefully over time.~
==RTEdwin~Without the mighty landowners and their slaves, Thay's economy will crash within weeks and the land will be in an uncontrolled state and ruleless. I know how you hate slavery, Sandrah, but we cannot just set the millions free without any perspective, work, education, and care.~
==CVSan25J~I see your point, Candrella. Any ruler other than Szass Tam is an improvement for Thay. Without the tyranny of the Red Wizards a change may become reality. You are no dreamer or idealist nor is Edwin a revolutionairy, but you may improve the state of the land bit by bit.~
END
++~What do we do now?~ EXTERN RTCandre Plans4

CHAIN
IF~~THEN RTCandre Plans4
~Before we do anything, we all need a period of preparations.~
==CVSan25J~We cannot face Szass and his allies face to face right now. We already discovered that we need to return to the Sword Coast first to eliminate the new Academy of Xephistagoras there. We also must activate some powerful allies that can neutralise some of Szass Tam's associates so that we can target on him.~
==RTEdwin~We will arrange for your return and provide you with some more information. For that purpose we need to meet in Bezantur in a day from now with some of our allies.~
==RTCandre~Come to Sharkey's tomorrow, we will meet in the save backroom of the tavern. Ask Sharkey for admission. Try to avoid Ithrash's legions in town, they probably have noticed your escape and theft by now.~
==CVSan25J~We will be there, Candrella, take care yourself.~DO~AddJournalEntry(@2077,QUEST) EraseJournalEntry(@2069) EraseJournalEntry(@2063) EraseJournalEntry(@2062) EraseJournalEntry(@2060)~EXIT

CHAIN
IF~Global("3Talk","RTF109",1)~ THEN RTCandre Plans5
~Now we are all here and I think introductions are not necessary as we all know each other.~
DO~SetGlobal("3Talk","RTF109",2)~
==CVSan25J~We know each other but we are unsure about some roles of the ones present, like for example Samas Kul - last time we talked he assured me to be neutral in this case.~
==RTSamas~It is still true, good, eh, Sandrah. Still I feel an obligation to help you out of town together with Saemon - you paid me quite a sum for compensation and I am in your debt.~
==CVSan25J~Just that?~
==RTColan~There is a role for the Guild of Foreign Trade regardless of who rules Thay. Samas and the Red Hoods are aware of this responsibility. He can be trusted beyond the amount of gold and jewels he may receive.~
==RTCandre~He has probably not told you that Szass Tam owes him something that goes beyond earthly goods and the Guildmaster is one who is not forgiving.~
==CVSan25J~I take your word for it, Candrella.~
==RTSaemon~My ship is ready to sail within the hour should you decide to take the save cruise with me rather than to trod back the endless miles of grassland and raiders between here and Baldur's Gate.~DO~EscapeArea()~
END
++~I still wonder about that portal right on your estate, Edwin.~ EXTERN RTEdwin Plans6

CHAIN
IF~~THEN RTEdwin Plans6
~A blessing and a curse and maybe an additional reason for Szass Tam to demolish my uncle Homen. The portal is older than Thay itself and probably has been created by the same ancient race that is reported to have build the Citadel in the Thay Mountains.~
=~Apparently that race used this method of transport in the old days all over Faerun.~
=~Much later my anchestors found out how to use it and the family gained much of its high status due to our support of the first Sword Coast Invasion against Westgate.~
==CVSan25J~The one that was stopped by Cerameon.~
==RTEdwin~YOUR family has a talent to cross those plans each time. Anyway, the hatred in Thay against Mystra comes from those days and events.~
==RTCandre~The portal became unuseable and forgotten just like the old Bhaal temple that protected it.~
==RTSamas~Szass Tam has discovered and studied the knowledge of the ancient race in the Citadel for ages and it appears he found a way to use the transport methods again, even if only in a limited way until now.~
==RTColan~We have intelligence information that he sent agents to the West to re-discover and initiate the lost portal exits.~
==CVSan25J~He did, but we found some and also hindered his men to activate others. It was through the main portal that we instead came here to Thay. The key to it is in our possession, even if it just works in the one direction.~
==RTColan~There is a control room that only Szass can operate. His presence is required in the room to activate the mechanisms.~
==CVSan25J~(Mumbles) The presence of his right hand should be sufficient for that...~
END
++~What will you do while we return to the Sword Coast.~ EXTERN RTColan Plans7
++~There is not much we can do here at the moment. I follow Sandrah's advice to return to the Sword Coast for the moment and do our homework there.~EXTERN RTColan Plans7

CHAIN
IF~~THEN RTColan Plans7
~Now that the Mausoleum key is ours again my men and me will further study the portal operations, even if we must still hide from Szass' and his men using it occasionally.~
==RTEdwin~We will bring further forces into Bezantur (hidden among the slave quarters where the red wizards do not go). We will prepare for the day of your return.~
==RTCandre~You must...Mystra must..do something to reduce Szass Tam's dayly growing magical powers.~
==CVSan25J~Mmh, you are right...there is an idea I develop for some time now about that. I will need to discuss it with my grandmother at Waterdeep.~
==RTColan~Your secret advisor, this grandmother?~
==CVSan25J~The best I can imagine on that subject, Colano.~
==RTColan~We will know within minutes about your return, <CHARNAME>, and we will contact you.~DO~EscapeArea()~
==RTEdwin~Thay and the Sword Coast count on you.~ DO~EscapeArea()~
==RTSamas~Your presence was enjoyable, lady...Sandrah, regardless of your reputation in Thay.~DO~EscapeArea()~
==RTCandre~Farewell~DO~AddJournalEntry(@2078,QUEST) AddJournalEntry(@2079,QUEST)EraseJournalEntry(@2077)~ EXIT

CHAIN
IF~AreaCheck("RTF082")~THEN RTSlav1 Below
~You have succeeded, friends, another bit of hope has been added for Thay.~
==Cultsa7~My friend Lucinda is here with her mom. She says we will soon have a real life again.~EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",1) GlobalLT("CitEntpl","GLOBAL",2)~THEN RTODButl SeeEddiPlot51
~We have heard already about your return to Thay.~
DO~SetGlobal("CitEntpl","GLOBAL",2) ~
==CVSan25J~We have advanced in our goal to weaken the phalanx, Ehrdwin. Currently we seek a way to provoke Autharch Ithrash. Once he would be defeated it will create a reason for Szass himself to come out of his citadel.~
==RTODButl~This is exactly the reason why the Mistress sent me to contact you. She - and Master Edwin - have a plan how to advance with that task.~
END
++~Tell them we will come to the estate in a short while to discuss the plan.~EXIT
++~I guess it's rather the mistress than the master who has the brains here. Anyway we will meet them at the estate soon.~EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",1) GlobalLT("CitEntpl","GLOBAL",3)~THEN RTCandre GetIthr1
~We have heard already about your return to Thay.~
DO~SetGlobal("CitEntpl","GLOBAL",3)SetGlobal("SanRTFPlot5","GLOBAL",2) ~
==CVSan25J~This time we have come to enter the Citadel, Candrella.~
==RTEdwin~It is good to see you all alive and well, especially the goddess announced to be dead and reason for the spellplague that so much impedes our enemy these days.~
==CVSan25J~We advanced quite a bit against the phalanx...(Sandrah reports the recent events to the red robes' representatives.)~
==RTCandre~You risked a lot and gained more than expected, My...Sandrah. How do you plan to access the Citadel?~
==CVSan25J~ Through the portal beneath the former Bhaal temple if we could get Szass' hand to open it - or as his prisoners.~
==RTCandre~In both cases we need to lure him out of his fortification first.~
==CVSan25J~He wants me, he wants Mystra, so I am the logical bait for him, <CHARNAME> should be an attraction to his ally Cyric at the same time.~
==RTCandre~We must provide them with a reason to make any of them see the necessity to act for themselves instead of sending another of their endless cohorts.~
==CVSan25J~We thought of that already, Candrella. We must hurt them here in the heartland of Thay in a way that endangers their power and reputation in Bezantur.~
=~Legion Commander and Autharch Ithrash is the local focus of power and Szass representative in this region. His removal will require their action as those lizard elites and undead forces would be out of control otherwise.~
==RTEdwin~After your last battles with him you will not be able to trick him so easily again. We must cleverly conceal the trap for him.~
END
++~You seem to have an idea, Edwin - or rather Candrella?~+ GetIthr2
++~You have an idea, Edwin?~ + GetIthr2
++~You have a plan, Candrella?~ + GetIthr2
++~Can the red hoods assist us in that?~ + GetIthr2

CHAIN
IF~~THEN RTCandre GetIthr2
~It is a great risk, but it is a language the Legion Commander will understand best.~
==RTEdwin~The red hoods will betray you, they will deliver you to Szass Tam to avoid their own elimination.~
==RTCandre~My beloved husband himself will be the traitor to tell Ithrash where you can be found.~
==CVSan25J~Edwin, that brute may not fall for your story easily, he may use extreme measures to interrogate you...~
==RTEdwin~I am aware of the risk, Sandrah. This is the task of a leader who puts the mission success above his personal fear and safety. I will lead the Commander and his men out to the estate while you and my wife make sure none of them will escape.~
==RTCandre~We have talked about this thoroughly, Sandrah and we have agreed that one of us must take the risk. Edwin convinced me that Lucinda needs me and a mage like him will have a better chance to return unharmed than a fighter like me.~DO~EscapeArea()~
==RTEdwin~For a new Thay!~ DO~EscapeArea()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",7)~THEN RTCandre Iltdef1
~This ends the siege of the Odesseiron estate.~
DO~SetGlobal("CitEntpl","GLOBAL",8)~
END
++~You fought a truely heroic battle, you and the red hoods.~EXTERN CVSan25J Iltdef2

CHAIN
IF~Global("CitEntpl","GLOBAL",7)~THEN RTEdwin Iltdef1e
~This ends the siege of the Odesseiron estate.~
DO~SetGlobal("CitEntpl","GLOBAL",8)~
END
++~You fought a truely heroic battle, you and the red hoods.~EXTERN CVSan25J Iltdef2

CHAIN
IF~~THEN  CVSan25J Iltdef2
~Your estimation of the red hoods abilities were not exaggerated, Candrella.~
=~I am truely glad you could persuade the Legion Commander without getting into too much trouble, Edwin.~
==RTCandre~ I am so glad I can hold you in my arms unharmed, my Ssinssrigg.~
==RTEdwin~(Smiles) I had to re-use some of my former *diplomatic* skills. They aided me in my old days on the Sword Coast when my mastermind had to outwit brainless but powerful foes or allies alike.~
==CVSan25J~As much as I disliked your behaviour back then...this time I am relieved you used your slick tongue well.~
==RTCandre~Let us go inside, friends, we may want to celebrate our success a bit and also discuss our next steps.~DO~EscapeArea()~
==RTEdwin~I surely have deserved a glass of Thayan wine or two accompanied by some equally sweet kisses from my wife (Oh, those drow skills..mmh). Come inside once you are ready, I will let Ehrdwin set up a small feast for friends.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("AdmiDefend","RTF070",1)~THEN RTCandre Iltdef3
~Szass Tam left those to cover his retreat to the Citadel. Can you use the portal now to follow him?~
DO~SetGlobal("AdmiDefend","RTF070",2)~
END
++~His own hand is needed to use the machine. We have it.~ EXTERN CVSan25J Iltdef4

CHAIN
IF~Global("AdmiDefend","RTF070",1)~THEN RTEdwin Iltdef3e
~Szass Tam left those to cover his retreat to the Citadel. Can you use the portal now to follow him?~
DO~SetGlobal("AdmiDefend","RTF070",2)~
END
++~His own hand is needed to use the machine. We have it.~ EXTERN CVSan25J Iltdef4

CHAIN
IF~~THEN  CVSan25J Iltdef4
~*Sandrah quickly summarises the events after the recent celebration*.~
==RTCandre~ I never had suspected Samas Kul to be a traitor to our cause.~
==RTEdwin~I think he was not one until his mind got occupied by the lust to possess a goddess and a woman like Sandrah. (I was on the brink to such madness once myself - a drow's love saved me.)~
==CVSan25J~The red hoods have potent men and women in their ranks to lead the Guild of Foreign Trade now. The turn for Thay is not far away anymore.~
==RTEdwin~It looks like Szass Tam has retreated to his Citdel through the old temple below. I wonder why he had to use this way to get there.~
==CVSan25J~His own defence system probably does not allow any other access to his lair. (Laughs harshly) He has one hand left still to activate the portal.~
==RTCandre~It will take us half a day probably to assemble enough of the Red Hood forces to persue him...~
END
++~We will not give him this time for preparation. Our party will follow him immediately and seize him while he is still weakened.~+ Iltdef5
++~Should we wait until the full force is ready or strike with a smaller group before Szass can recover, what do you think counsellor?~ + Iltdef5

CHAIN
IF~~THEN  CVSan25J Iltdef5
~I fully agree with you, <CHARNAME>. According to what little we have learned about the Citadel, a small vanguard may be more efficient for the initial strike than a large army.~
=~I propose to leave the portal open for the Red Hoods to follow us once they are ready.~
==RTCandre~It is not cowardice that makes me agree. The dungeon may be full of traps and defences that do not allow operation of a large troupe. You are the most experienced party in Faerun to explore such a place and face the remaining enemies.~
==CVSan25J~This is your and Edwin's opportunity to start the change in Thay. Make sure that Bezantur will not be a place for Szass to return to, should he by any chance escape us from the Citadel.~
==RTEdwin~Good luck, friends. (And I mean it, yes and yes). The next celebration will be one in a free Thay and without any traitors to spoil it.~DO~EscapeArea() ActionOverride("RTCandre",EscapeArea())~EXIT
