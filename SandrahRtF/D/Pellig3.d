APPEND Pellig
IF WEIGHT #-7~AreaCheck("RTF143") Global("RTSimbul","RTF143",6) ~THEN BEGIN PelHum1
SAY~Worry not, <CHARNAME>, do not loose your hope nor your love.~
IF~~THEN REPLY~Who are YOU to talk to me in this hour of despair?~ GOTO PelHum2
IF~~THEN REPLY~What do you know about hope and loss - who are you anyway and how come you to be here?~GOTO PelHum2
END

IF~~THEN BEGIN PelHum2
SAY~We have travelled together for a long time, <CHARNAME>, you, me...and her.~
IF~~THEN REPLY~Pelligram!!!??? You must feel OUR loss like I do.~ GOTO PelHum3
END

IF~~THEN BEGIN PelHum3
SAY~I am here to help you in this hour which appears to be the darkest in a long time, for you and me and the whole Prime.~
IF~~THEN REPLY~I cannot believe what has happened - we were trapped by Shar and that traitor Larloch, but odds were in our favour...we were about to defeat them and suddenly all went black. Deceit and foul play...she cannot be gone...~DO~SetGlobal("RTSimbul","RTF143",7) ~GOTO PelHum4
END

IF~~THEN BEGIN PelHum4
SAY~We must leave from here now, there is nothing we can find in this ruin. Remember what she told you to do, we must do it together like she wanted it to be.~
=~(She takes your hand and for a moment you are shocked - it was as if Sandrah was still at your side and giving you back your strength and hope like she did so often.)~
=~Come now - there will be time to talk about everything soon but now we must make haste to perform the duties she has left for us.~
IF~~THEN REPLY~She said to consult her sister and Thalantyr and then Midnight.~DO~SetGlobal("Pelljoined","LOCALS",1)JoinParty() ~EXIT
IF~~THEN REPLY~She mentioned those insignia we need to retrieve and then her grandmother...~DO~SetGlobal("Pelljoined","LOCALS",1)JoinParty() ~EXIT
END
END

BEGIN PELLIGP
IF ~ Global("Pelljoined","LOCALS",1)~ THEN BEGIN NoKickRTF
SAY ~*Pelligram resists any attempt to get rid of her until you have accomplished Sandrah's last will.*~
IF ~~ THEN DO ~JoinParty()~
EXIT
END

BEGIN PELLIGJ
IF~IsGabber(Player1)OR(2)AreaCheck("RTF143") AreaCheck("RTF141")~THEN BEGIN PidPellE
SAY~<CHARNAME> let us leave this temple behind us before we can talk. Our enemies may use our desperate situation to their advantage. We must fulfil Sandrah's last instructions before we can think of striking at them ourselves. Please, trust me like you trusted her.~
IF~~THEN REPLY~Right, let us leave. We will soon find a quiet moment to talk about our plans.~EXIT
END

IF~IsGabber(Player1)~THEN BEGIN PidPell
SAY~Pelligram's human form is beautiful and graceful like her animal appearance was. It is a strange new sensation to be able to talk to her.~
IF~Global("Realpel","LOCALS",0)~THEN REPLY~Tell me the truth now, Pelligram - who are you?~GOTO PellId1
IF~Global("Realpel","LOCALS",1)~THEN REPLY~We have a quiet moment now, Pelligram, I am eager to learn more about you.~  GOTO PellId3
IF~Global("Realpel","LOCALS",2)~THEN REPLY~As Mystra's own daughter you come from the same bloodline than Sandrah did, the one all incarnations of Mystra came from. Will you succeed her?~GOTO PellId10
IF~Global("PelItem3","LOCALS",1)~THEN REPLY~We have assembled Sandrah's artefact, Pelligram. What do we do now, we still need the *item that will find me*?~GOTO Pellitem3
IF~~THEN REPLY~*You stare at your old and nevertheless new companion, lost for words.*~EXIT
IF~~THEN REPLY~I do not feel so lost and alone thanks to your presence. You are the only one who can really understand what we all have lost with Sandrah's death.~GOTO NotReally1
END

IF~~THEN BEGIN NotReally1
SAY~A goddess dies if no one believes in her any more. I know many who have not given up and I walk beside the deity representing Hope itself. I am not desperate.~
IF~~THEN EXIT
END

IF~~THEN BEGIN PellId1
SAY~I am really Pelligram, even if my current appearance as well as the previous one are just avatars I use on the prime.~
IF~~THEN REPLY~Fine - but what are you then?~GOTO PellId2
END

IF~~THEN BEGIN PellId2
SAY~It will take a moment to explain - (She smiles) I have a long life behind me already - do you want to hear the story now or later.~
IF~~THEN REPLY~I cannot wait another minute to hear the truth.~GOTO PellId3
IF~~THEN REPLY~I will ask you later when we have sufficient time for the topic.~DO~SetGlobal("Realpel","LOCALS",1)~EXIT
END

IF~~THEN BEGIN PellId3
SAY~I am Pelligram, Servant and Chosen of Mystra, also known to your ancestors as the Witch-Queen of Aglarond.~
IF~~THEN REPLY~But...that means you are one of the Seven Sisters.~ GOTO PellId4
IF~~THEN REPLY~The watchful...I heard you named *The Simbul* as well...~ GOTO PellId4
END

IF~~THEN BEGIN PellId4
SAY~All of that is true, <CHARNAME>. I am a daughter of the earliest incarnation of Mystra. They called me The Simbul or Alassra Shentrantra Silverhand when I stood at the side of Rashemeen witches to defend their lands against the aggressors.~
=~When Sandrah's grandmother realised the threat of Bhaal against her bloodline she gave me the task to protect and guide Sandrah in her youth. You know most of our common story yourself.~
=~When Sandrah finally chose to accept Mystra's cloak and reign we had grown so close to each other that she released me from all duties and allowed me to follow her - and you.~
IF~~THEN REPLY~And now, with her gone...you stay with me?~GOTO PellId5
END

IF~~THEN BEGIN PellId5
SAY~This quest is not yet over for us, <CHARNAME>, and the answer will be given soon. We must accomplish the task she has left for us before we can talk about the future.~
IF~~THEN DO~SetGlobal("Realpel","LOCALS",2)~EXIT
END

IF~~THEN BEGIN PellId10
SAY~No.~
=~(She hesitates a moment before she continues.)...There will be no further incarnations of Mystra, not ever.~
=~Even...my heritage is not equal to Sandrah's - I am no creature of the Prime like it is required for Mystra. Even being born to a human mother I was conceived by Mystra out of the Weave itself.~
IF~~THEN REPLY~That explains why you did not appear as a candidate at the Time of Troubles nor as an alternative to Sandrah.~DO~SetGlobal("Realpel","LOCALS",3)~EXIT
END

IF~~THEN BEGIN Pellitem3
SAY~The road ahead is clear, <CHARNAME>. Sandrah has advised us to go to Midnight.~
IF~~THEN REPLY~She has the third item then?~ DO~SetGlobal("PelItem3","LOCALS",2)~ GOTO Pellitem3b
END

IF~~THEN BEGIN Pellitem3b
SAY~Oh, no - the third item has already found you like it was promised. Mystra had referred to the Simbul that I carry and protect.~
IF~~THEN REPLY~Let us go to see Midnight without delay. I cannot wait to smash those who have deprived me of my true love.~EXIT
IF~~THEN REPLY~The Mistress of Mysteries, of course...why have I not seen the obvious...~EXIT
END



CHAIN
IF~Global("CyrChance","RTF140",1)~THEN chalcy01 SanDeCha1
~Love and hope, it seems to me, are a weak foundation for a new god and disastrous for an alliance of celestials.~
=~So here you are alone now to face your doom and just like my stupid granddaughter had to let go the Weave you will release Bhaal's heritage to me.~
DO~SetGlobal("CyrChance","RTF140",2)~
==PelligJ~You may find Love and Hope much stronger powers than your limited view has revealed to you, Cyric...~
==Chalcy01~YOU??!! What are you...ah, Mystra's old servant - there is nothing to serve for you any more, Simbul.~
==PelligJ~Was it Shar's clever idea to send you here, Prince of Lies? Has she - by any chance - planted those ideas you just expressed in your empty head?~
==Chalcy01~Shar immediately informed us of her success and her possession of the Weave.~
END
++~You fool, of course she did. To get you out of the way for her own manipulation of her new toy. You are crazy enough to leave her with the Weave unattended.~+ SanDeCha2
++~I had never guessed that the greatest Deceiver of All would let himself be fooled so easily by the Dark Goddess. She apparently plans to get rid of you this way.~+ SanDeCha2
++~The Simbul? You see we are far from being helpless while Shar has tricked you into covering her retreat, you damned fool.~+ SanDeCha2

CHAIN
IF~~THEN chalcy01 SanDeCha2
~What...? There may be some truth in what you say...Shar was very urgent in getting me to face you...~
=~I must check for the Weave immediately - you will not be able to escape me now without any powers from the dead goddess to aid you.~
=~My elites will keep you occupied until I return.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-10~Global("RThintNash","BG3202",1)~THEN Thalan HintNash1
~Gluck, I feel you are whom the master left me here to meet.~
DO~SetGlobal("RThintNash","BG3202",2)~
==PelligJ~A talking chicken messenger?~
==RTMeli IF~InParty("RTMeli")~THEN~My old master has a strange sense of humour.~
==CVIzy25J IF~InParty("RTMeli") InParty("CVIzzy")~THEN~Hihi, we know for sure what has inspired him.~
==Thalan~Master found it safer to seek a refuge now that the protection of Mystra is gone , gluck, and spells are plagued that draw from the Weave.~
END
++~Gosh, what do we do now, we need the guy?~ + HintNash2
++~Are you left here to tell us where he has gone?~ + HintNash2
++~Without him we cannot complete our mission. At least our last meal on the prime will be a delicate fried chicken.~+ HintNash2

CHAIN
IF~~THEN Thalan HintNash2
~Gluck, I wasn't left here to be your last supper but to give you, creek, the hint you need.~
==PelligJ~(Laughs) We are all vegetarians, you have nothing to fear.~
==Thalan~Master said, gluck, the All-seeing Eye is neutral as always.~
==PelligJ~He went into the shelter of a temple of Helm, I presume?~
END
++~The nearest one is in Nashkel.~+ HintNash3
++~There is a small temple in the northern quarters of Baldur's Gate.~ + HintNash3
++~Helm has a major keep in Athkatla's Temple District.~+ HintNash3

CHAIN
IF~~THEN Thalan HintNash3
~Gluck, Master said that the spell plague is felt most where there is many people together.~ DO~EscapeArea()~
==PelligJ~He would be cautious and avoid to be detected in a big city by those who hate Mystra's followers. ~EXIT

CHAIN
IF WEIGHT #-10~Global("Thamove","BG4802",1)~THEN Thalan HintNash4
~Your presence here confirms that you have the habit of listening to talking chickens, haha.~
DO~SetGlobal("Thamove","BG4802",2)~
==PelligJ ~Animals are more at times than meets the eye.~
==RTMeli IF~InParty("RTMeli")~THEN~It has paid off before to do so and it does once again, Master Thalantyr.~
==Thalan~I decided to act before those who feel strong now take their chance on me.~
==PelligJ~Your goddess has not left you even if it is her today who needs your help.~
==Nalin~Thalantyr acted quickly but I find now that you may be correct - even as others are affected by the spell plague after Mystra's death his abilities seem to be intact.~
END
++~Mystra has left an item in your care and it is for that reason we have sought you out.~ + HintNash5

CHAIN
IF~~THEN Thalan HintNash5
~I had to be very cautious so I have not endangered the artefact by taking it on the road with me.~
==PelligJ~My - we made the journey all in vain?~
==Thalan~You did not, my dear, as otherwise you would not have known where to look for it.~
=~Go to the house north of my compound at the High Hedge. You will find what Mystra has required of you.~
==PelligJ~May our goddess bless you, good mage. Loyalty and trust will be repaid soon.~DO~AddexperienceParty(6600)~
==RTMeli IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN ~Master, it may not be the adequate time now, but we found these two parts of a very ancient scroll during out travels.~
==Thalan IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN ~I wish we had the time to study them together, but it is like you say, Mystra's quest is more urgent. Also, my beloved boy, we may not advance on our own and without her assistance. I look forward to see you soon, my boy.~
==RTMeli IF~InParty("RTMeli") PartyHasItemIdentified("RTMels1") PartyHasItemIdentified("RTMels2") Global("RTMeliQuest","GLOBAL",5)~THEN ~I will return, Master. ~
EXIT

CHAIN
IF WEIGHT #1~Global("PelItem2","LOCALS",1)~THEN PelligJ PelQuidr1
~We greet you, Qilandrha. I think you know why we came.~
DO~SetGlobal("PelItem2","LOCALS",2)~
==CVQidr~I greet our friend, the Simbul, (smiles) your current avatar is well remembered from the time you fought alongside our goddess.~
END
++~You know Pelligram - ah of course you do...~ EXTERN CVQidr PelQuidr2
++~The news is bad that we carry...your sister...~EXTERN CVQidr PelQuidr2

CHAIN
IF~~THEN CVQidr PelQuidr2
~You seem to be more in grief than you should be, <CHARNAME>. You of Hope and Love should know better than any that gods do not die as long as they are believed in.~
==PelligJ~We will soon learn the truth of that wisdom, Qilandrha. We need the item that Sandrah gave to your care in order to fulfil her will.~
==CVQidr~I have felt the impact of the Spellplague on our opponents. Her item has assured that we here in Undermountain have not been impacted.~
==PelligJ~Her blessing and that of Eilistraee will continue to support you. The Weave is not hidden from you, high priestess.~
==CVQidr~I have not reason to doubt the words of the Simbul herself. Take what you need and finish your mission. The light will soon shine on Faerun.~ DO~GiveItemCreate("RTBummy","Pellig3",1,0,0)~
==PelligJ~May our goddess bless you.~DO~AddexperienceParty(8200)~EXIT

CHAIN
IF WEIGHT #2~Global("PelItem3","LOCALS",3)~THEN PelligJ PellMys1
~It is accomplished, my mistress, we have come as the goddess has requested us to do.~
DO~SetGlobal("PelItem3","LOCALS",4)~
==SanMyst~You are the truest of all Chosen, Pelligram, it was good to have entrusted you once again with a mission of the highest importance.~
==PelligJ~Love and Hope have always been motivation like nothing else can be.~
==SanMyst~Even in our secluded retirement we have received enough information to deduct that the spell plague has produced the desired results. Those gods and goddesses we have targeted loose influence, power and believers at great scale.~
END
++~The price for it was too high for my liking. Your granddaughter's death seems to leave you unimpressed.~ + PellMys2
++~You make your granddaughter's death and the spell plague sound like the success of a great stage production.~ + PellMys2

CHAIN
IF~~THEN PelligJ PellMys2
~I have suffered with you, <CHARNAME>, and the loss you felt was my own. It was Sandrah's own will and dictate that you had not to know of the plan.~
END
++~I had surely prevented her to walk into the trap and Larloch's deceit with open eyes...~+ PellMys3

CHAIN
IF~~THEN PelligJ PellMys3
~Wait and listen, please. It is true that you had to believe all of that. YOU had to believe and act authentic or YOUR ENEMIES would have known about the deceit. The spell plague is an enormous ploy.~
==SanMyst~All had to believe in it, Sandrah made sure that even the Overlord is unaware of her deed.~
==PelligJ~You will see Larloch in some moments, stay your wraith - he acted perfectly and his staged deceit made the whole thing possible - that and your own belief that Mystra is dead.~
END
++~Sandrah has not died?~+ PellMys4

CHAIN
IF~~THEN PelligJ PellMys4
~You have felt her presence even in your despair. Your feelings have not betrayed you. Love and Hope remain victorious. She had to disappear in the full view of your foe and with the expected results.~
==SanMyst~What Larloch gave to Shar was just a small portion of the Weave, enough to keep her occupied for some time but not enough to cause massive destruction.~
==PelligJ~It is time now to use the artefacts and the Simbul, my mistress.~
==SanMyst~I will go upstairs and open the Arboretum for the ritual. Come with the ingredients to make Mystra return.~
==PelligJ~You will be united with your true companion in a moment.~
=~*She gives you a kiss on the cheek and smiles the same mysterious smile you have seen so often from Sandrah.* Let us go upstairs.~DO~SetGlobal("Miston","RTF018",1)~EXIT

CHAIN
IF WEIGHT #3~Global("PelItem3","LOCALS",5)~THEN PelligJ PellMys5
~She has chosen an excellent location for her return.~
DO~SetGlobal("PelItem3","LOCALS",6)~
==SanMyst~This place is shielded from any type of scrutiny. Only those present will ever know what will happen.~
==PelligJ~<CHARNAME>, we must place our items in the three chambers under the energy pillars, the Simbul itself should be placed to the purple flame.~
==SanMyst~This will be a happy event for us - and the beginning of a hard times for those who opposed you.~
==PelligJ~If Sandrah's large plan evolves, this may as well become the beginning of a new age for Faerun in the long term. But probably it is only us who will ever know this fact.~
END
++~Let us perform the ritual without delay.~EXIT

CHAIN
IF WEIGHT #3~Global("PellMellB","LOCALS",1)~THEN PelligJ PellMell
~*Pelligram has laid her arm around Melicamp's shoulder as they walk side by side.*~
DO~SetGlobal("PellMellB","LOCALS",2)~
==RTMeli~Is it not strange that I do not feel the loss of the only woman I have ever cared for? You with your endless experience - may you tell me why that is?~
==PelligJ~You do not feel the loss because you maybe have not lost her.~
==RTMeli~I tell it to myself in a way...she is still there in every thought and every beat of my heart. But then - she would be the first one to remind me not to chase an illusion but to face the facts. ~
==PelligJ~The fact about her is what you feel in your heart, my friend.~
==RTMeli~Those could well have been her own words. She always advised me to follow my heart.~
==PelligJ~If your heart feels her alive then she is. ~
==RTMeli~It is always with joy and pleasure that I think of her. You are right, Pelligram, I do not wish to loose a bit of those feelings.~ EXIT

CHAIN
IF WEIGHT #-7~Global("RTPellSol","BG2300",2)~THEN Pellig SolarJ1
~Solar!~
DO~SetGlobal("PelligFollow","GLOBAL",0)~
==Solar~Pelligram!~
==Pellig~Solar...Argonsan...~
==Solar~The mission is finished, Pelligram.~
DO~SetGlobal("RTPellSol","BG2300",3) SetGlobal("PelligFollow","GLOBAL",0)  CreateCreature("Pellig3",[3244.2518],13) Wait(2) ActionOverride("Solar",POLYMORPH(FIGHTER_MALE_HUMAN))  ActionOverride("Solar",SetName(@1989)) EndCutSceneMode() ActionOverride("Pellig",DestroySelf()) ~EXIT

CHAIN
IF WEIGHT #-7~Global("RTPellSol","BG2300",3)~THEN Pellig SolarJ2
~I have done all I could do to make Mystra succeed.~
DO~SetGlobal("RTPellSol","BG2300",4)~
==CVSan25J~You have, Pelligram, my Chosen, my comrade, my friend. Do now what your heart demands of you.~
==Pellig~You know what that is, my Goddess - you know it too, Argonsan.~
==Solar IF~Global("SanRomPath","GLOBAL",1)~THEN~It is the same that my heart tells me, Pelligram. The God of Love and Hope has grown into an authority now. My tutoring is no longer required by him.~
==Solar IF~Global("SanRomPath","GLOBAL",2)~THEN~It is the same that my heart tells me, Pelligram. The Goddess of Love and Hope has grown into an authority now. My tutoring is no longer required by her.~
==Pellig~Our way will be together from now on, Argonsan.~ DO~MoveToPoint([1406.3139])EscapeArea() ~
==Solar~It will, Pelligram.~ DO~MoveToPoint([1406.3139])EscapeArea() ~EXIT

