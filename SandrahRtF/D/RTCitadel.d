BEGIN RTLordAO
BEGIN RTPhaer
BEGIN RTRedWil
BEGIN RTLichle

IF~NumTimesTalkedTo(0)~THEN BEGIN Why
SAY~I was just about to get bored and wonder what was I supposed to protect this area from. The red-robed was right, it was worth the waiting - not that I had better things to do.~ 
IF~~THEN DO~Enemy()~ EXIT
END

BEGIN RTCitMec
IF~Global("Drilling","RTF170",6)~THEN BEGIN GetHome
SAY~My job here is done, I will find my way home. Farewell.~
IF~~THEN DO~EscapeArea()~EXIT
END

IF~NumTimesTalkedTo(0)~THEN BEGIN First
SAY~I have never seen you before, is that good or bad?~
IF~~THEN EXTERN CVSan25J Mecha1
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Second
SAY~Have you made any progress?~
IF~PartyHasItem("RTCitKey")Global("IamFree","LOCALS",0)~THEN REPLY~We have found the key to free you.~DO~SetGlobal("IamFree","LOCALS",1)~GOTO FoundKey
IF~!PartyHasItem("RTCitKey")Global("IamFree","LOCALS",0)~THEN REPLY~We are still searching.~EXIT
IF~Global("IamFree","LOCALS",1)PartyHasItem("RTCitBo")OR(2)GlobalLT("Drilling","RTF170",2)Global("Hadlfit","RTF170",0)~THEN REPLY~We found an operating manual around the Citadel.~ GOTO FoundBook
IF~Global("IamFree","LOCALS",1)Global("Hadlfit","RTF170",0) PartyHasItem("Misc92")~THEN REPLY~We have the machine's handle from the Admiral.~GOTO FoundHandl
IF~Global("IamFree","LOCALS",1)Global("Hadlfit","RTF170",1)~THEN REPLY~We have repaired the control board with the handle.~GOTO FitHandl
IF~Global("IamFree","LOCALS",1)PartyHasItem("Misc7z")GlobalLT("Drilling","RTF170",2)~THEN REPLY~We have found some coal for the machine.~GOTO FoundCoal
IF~Global("IamFree","LOCALS",1)~THEN REPLY~We are still searching.~EXIT
IF~Global("IamFree","LOCALS",1)PartyHasItem("RTCitBo")Global("Drilling","RTF170",2)Global("Hadlfit","RTF170",2)~THEN REPLY~I think we now have everything you required to operate the machine.~DO~SetGlobal("Drilling","RTF170",3)~GOTO MechReady
IF~Global("Drilling","RTF170",3)~THEN REPLY~We are ready now, you may start the machine?~ GOTO MechReady
END

IF~~THEN BEGIN MechReady
SAY~Fabulous. All I need to do now is to set the scales according to this book to suit our task. Shall I start right now?~
IF~~THEN REPLY~We are ready to face Szass Tam.~DO~TakePartyItem("RTCitBo")~GOTO MechReady2
IF~~THEN REPLY~Not yet, we need a bit more preparation.~EXIT
END

IF~~THEN BEGIN MechReady2
SAY~Let me see...ah, this here...now here...Ready.~
=~Now all you need to do is pull down this lever. Good luck, my friends.~
IF~~THEN DO~SetGlobal("Drilling","RTF170",4)~EXIT
END


IF~~THEN BEGIN FoundKey
SAY~Then release me and I will help you advance.~
IF~~THEN DO~TakePartyItem("RTCitKey")~EXTERN CVSan25J Mecha2
END

IF~~THEN BEGIN FoundBook
SAY~Keep it safe. We need it when you have everything else I told you to find.~
IF~~THEN EXIT
END

IF~~THEN BEGIN FoundHandl
SAY~What do you wait for, fit it onto the control board.~
IF~~THEN EXIT
END

IF~~THEN BEGIN FitHandl
SAY~Fine, fine, we are progressing.~
IF~~THEN DO~SetGlobal("Hadlfit","RTF170",2)~EXIT
END

IF~~THEN BEGIN FoundCoal
SAY~Ah, a glimpse of hope - place it into the oven at the back end of the machine quickly.~
IF~~THEN EXIT
END

CHAIN
IF WEIGHT #-3~AreaCheck("RTF071") Global("SharDes","RTF071",0)~THEN CVSharg BezDes1
~ By the Nine Hells...YOU??~
=~That may well be the explanation to what has just happened here...~
DO~SetGlobal("SharDes","RTF071",1)~
==CVSan25J~It is not. The explanation is just your own disrespect and breaking of the pact that had provided order ever since the days of Karsus when the True and the Shadow Weave were separated.~
=~You fuel the madness of that mad new Karsus, Szass Tam, and try to unite what needs to be kept apart by all means.~
==CVSharg~You have known that, haven't you?~
==CVSan25J~You should have known it just as well. We are both keepers, each with our own ward to protect. The worst that can happen is for one of us to hunger for the other one's part. Szass Tam has betrayed you already by fuelling your ambitions. It was surely his intention that we weaken each other enough to have an easy prey in the survivor.~
==CVSharg~But it was once ONE WEAVE and Mystril ruled it.~
==CVSan25J~We cannot revert the separation. Look around at the result of even this minor attempt with the small amount of my power I let Larloch give you.~
==CVSharg~Szass Tam claims and proves by the ancient knowledge he has found that it can be done. That wisdom is older than Nethril's fall and older than the splitting of the ONE.~
==CVSan25J~It is ancient knowledge for an ancient constellation of the powers and the multiverse. Much has changed meanwhile.~
==CVSharg~You were foolish enough to come once more, Mystra. This time I will claim your full ward, as only by this the restoration of the one weave can be accomplished.~EXIT

CHAIN
IF~Global("SharDes","RTF071",2)~THEN RTLordAO SharInter1
~The whole pantheon these days is but a bunch of traitors and rebels - and YOU, Mystra, are even outgrowing your demented grandfather, it seems!!~
DO~SetGlobal("SharDes","RTF071",3) SetGlobal("SanRTFPlot4","GLOBAL",8)~
==CVSan25J~*There is an almost wicked smile upon Sandrah's lips.*~
=~AO I know just too well what has really brought you here. Your existence depends on the Weave like everyone else's around here.~
==RTLordAO~You are just the Weave's keeper and watcher, not its owner.~
=~Both parts of the Weave must co-exist as you have just explained to your silly opponent. Keep them apart as you have been tasked - Shar, you have imbalanced the energies of the multiverse with your attempt, you will no longer partake in the current conflict. My verdict is that you withdraw to your Realm until I notify you. Do you consent to this sentence?~
==CVSharg~Grr, not till I hear what will happen to HER.~
==RTLordAO~You will hear it but you will not negotiate my decision, hush now.~
=~Mystra, you will continue your quest with <CHARNAME> of Love and Hope until the aggressor from the Prime is eliminated. Meanwhile you will restore the full power of the True Weave to us.~
==CVSan25J~We will see about that, AO. There are some conditions to be negotiated first.~
==RTLordAO~There is no negotiation with renegade gods - I was willing to forgive you as you are new to your duties, but now you start to get impertinent...~
==CVSan25J~Listen, AO, and listen carefully. The Prime Plane is my home, mine and <CHARNAME>'s. I made a solemn vow that it will never again be the playground to the escapades of the Celestials. Agree to that and the Weave will continue to guarantee Celestia's existence - and yours, Overloard.~
==RTLordAO~You try to blackmail your Overgod with the Weave as your hostage. This will be your end!~
==CVSan25J~My end will be the end of the Weave, the end of those who depend on it, the end of the gods and their Overlord.~
==RTLordAO~You bluff.~
==CVSan25J~Mystra cannot be separated from the Weave and the Weave cannot be separated from me. Since Karsus' days and by your own making the Weave can only go to another female human of the bloodline. Agree to my terms or my end will end it all.~
==CVSharg~Ha, now the REAL TRAITOR shows her true face and ambition...~
==RTLordAO~Silence, Shar!~
=~Cyric was a fool to provoke the two of you, <CHARNAME> and Mystra. Your union is stronger than any alliance the gods have forged so far. This is my last word, Mystra, listen and agree.~
=~Those who have caused this trouble will pay the price. Velsharoon will stay under Kelemvor's custody. Talos, Shar, and Cyric will be banned from the Prime from hereon, their essence will go to Demigorgon should they trespass this verdict.~
=~Mystra and <CHARNAME> will be responsible to clean up the mess the new Karsus produced - they will also need to capture Cyric and return him to Celestia to enforce the ban on him.~
==CVSan25J~When our task is done the Weave will return to Celestia like I said.~DO~EraseJournalEntry(@1943)~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",15)~THEN CVSzas InPrison1
~Your constant interruptions get unacceptable, priestess.~
DO~ SetGlobal("CitEntpl","GLOBAL",16)~
==CVSan25J~It seems we are more of a threat to your plans than should be left to your inferiors, Zulkir.~
==CVSzas~It was one of them who captured you and your companions and ended the spook.~
==RTSamas~My master will surely not forget our arrangement...~
==CVSzas~This is the girl you wanted? I doubt that you will get her under control so easily...~
==CVSan25J~Faerun has seen much betrayal to win the heart of a woman or the power to possess her in the past, Samas. However I have the feeling you did not tell your master the whole truth about my identity.~
==RTSamas~Hush, woman...this is your only chance - come to my side before it is too late. Do you not know what fate will await Mystra should Szass Tam get a hold of her?~
==CVSzas~What is this about, you two? You can quarrel among yourself as long as you want once we have finished this little interview. You can have the girl and do what you want with her, Samas, provided she is willing to give me the information I need.~
==CVSan25J~I may give you more than you expected to get from Samas. Is the new Karsus already so powerful and godlike that he can give the Goddess of All Magic as a playtoy to his unfaithful servant?~
==RTSamas~YOU ARE A FOOL, MYSTRA!!~
==CVSzas~Mystra?~
==CVSan25J~The traitor did not tell you my true identity? He really thought he could hide me from your view and treat me like a love slave...~
==CVSzas~Not a bad idea...Samas Kul was always known as a man of excellent taste, tsst tsst. A bit ambituous but useful. ~
=~Very useful.~
=~And superflous by now.~
==CVSan25J~Samas, it looks like your master has a similar intent with me like you had.~
==CVSzas~The difference is that I have the power to get what I want - even if the woman is a goddess. Please receive my heartfelt reward for your treason, Samas Kul.~
DO~StartCutsceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","CVSzass")
Wait(2)
CreateVisualEffectObject("sppolymp","RTSamas")
CreateVisualEffectObject("spportal","RTSamas")
CreateVisualEffect("raiser",[1546.831])
Wait(2)
CreateVisualEffectObject("SPDEATH3","RTSamas")
Wait(2)
ActionOverride("RTSamas",DestroySelf())
Wait(2)
EndCutsceneMode()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",16)~THEN CVSzas InPrison2
~The Goddess of All - baah...nearly all Magic. In her mortal avatar, limited in power to that of a priestess. Limited in wit to follow a party of adventurers into Thay. A new Karsus you have called me?~
DO~ SetGlobal("CitEntpl","GLOBAL",17) SetGlobal("SanRTFPlot5","GLOBAL",4)~
==CVSan25J~Is it not godhood you aim for like he did? Is it not the Weave you want to control?~
==CVSzas~I like your analysis, Mystra. A new Karsus - but one who knows what the other one did wrong.~
==CVSan25J~We have already reduced your little phalanx quite a bit without you even knowing whom you face.~
==CVSzas~You did - and one with your insight also knows you did part of my own work to rid myself of those who had become useless.~
==CVSan25J~The timing and the results of our cleaning up may not suit you.~
==CVSzas~It has all been repaired in a single step now, as now I have YOU. I may take the chance to give you a small guided tour to this installation and its devices. You may be a goddess and powerful - but in your present state you are a woman feeling pain and fear. Look around - there are many methods to make you co-operate.~
==CVSan25J~The iron maiden? The screws?~
==CVSzas~We will take our time, Mystra, you will learn about all of them and you will be my willing toy more and more.~
=~And then...if you are a good girl I will end it mercifully with this great new device.~
==CVSan25J~Interesting - I heard about it, a guilottine, right?~
==CVSzas~It will cut off your godly head in a mere second, clean and quick.~
==CVSan25J~I see...ah, yes, you put the culprit's head into here...you switch the lever...the hatchet will come down...~
==CVSzas~What....????~
==CVSan25J~*Sandrah has seized Szass Tam's left hand and before the mage realises what has happened she has snapped his arm into the device. Before he becomes aware of the danger she has already switched the machine and his hand is cut off cleanly...~
==CVSzas~AAAARGHH!!!!~DO~AddJournalEntry(@2091,QUEST)~EXIT

CHAIN
IF~AreaCheck("RTF172") See("CVSandr") Range("CVSandr",25)!Allegiance(Myself,ENEMY)~THEN CVCyr01 Citadl1
~Here is someone you would be *dying to meet*, my little nagging grandchild. Have fun with her.~
DO~Enemy()RealSetGlobalTimer("Clonetime","RTF172",350)~EXIT

CHAIN
IF~Global("CyrGetMid","GLOBAL",1)~ THEN CVCyr01 Citadl1
~You lack what your grandmother had at hand when she set out to Kill the God of Murder!~
DO~SetGlobal("CyrGetMid","GLOBAL",2) SetGlobal("SanRTFPlot5","GLOBAL",6)~
==CVSan25J~The current one who holds that title is not to be killed. It is AO's verdict that you are simply banned from the Primary Plane.~
==CVSzas~Cyric, you will stand your ground here with me.~DO~Enemy() SetGlobal("SzassFight","Global",1) RealSetGlobalTimer("Reinforce","RTF172",420)~
==CVCyr01~Dream on, fool.~
==CVCyr01~Granddaughter, you never gave up your home and mortal attitude - don't forget this was my world as well. The advantage you had over the other fools who think of themselves as Gods fails with me. I will have your companion's essence before I leave.~
==CVSan25J~The Throne of Bhaal is known to be a very uncomfortable piece of furniture, Cyric...~
==CVCyr01~You both will be more than willing to trade it for the life of the one you admire so much and who has once won even my heart - and made me become a murderer to get her.~
DO~AddJournalEntry(@2093,QUEST) SetGlobal("Chapter","Global",29) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~~THEN CVSan25J Mecha1
~Obviously you are not here by your free will, and most likely the one responsible for your state is the one we are persuing.~
==RTCitMec~That sounds as if your appearance so shortly after the bastard himself is a good sign.~
==CVSan25J~You have seen Szass Tam recently, master mechanic?~
==RTCitMec~He fled to his sanctum, well protected behind those ancient walls of the Citadel's inner sanctum.~
==CVSan25J~He did not use the door we do not see, right?~
==RTCitMec~There are no doors to that part of the Citadel...He uses his spells to go there - nobody else is allowed to go there, only his thieving buddy...~
==CVSan25J~Cyric.~
==RTCitMec~You know much and you seem to be eager to get them, he?~
=~You have come far, closer to him than even his allies...maybe you are able to go all the way.~
==CVSan25J~Maybe we can - provided you tell us about yourself and that machine you are chained to.~
==RTCitMec~You are observant and you are trustworthy and you are HIS enemies. The machine will help to get to his lair. Free me from this chain and I will help you to operate it.~
END
++~Do you have an idea where the key to the chain is?~+ Mecha1b
++~We cannot activate the machine as long as you are bound to it, it may kill you.~ + Mecha1b
++~Sandrah, can your hammer break that chain?~ + Mecha1b

CHAIN
IF~~THEN CVSan25J Mecha1b
~You see we are most willing to help you.~
DO~SetGlobal("RTCitKeySearch","GLOBAL",1)~
==RTCitMec~The key he gave to his drow mistress. She must be somewhere in the outer halls of the citadel, maybe with her own kin.~
END
++~We will find her.~ EXIT
++~(Sigh) We have no choice but to find her.~ EXIT
++~Do not be afraid, good gnome, we will return soon with your key.~EXIT

CHAIN
IF~~THEN CVSan25J Mecha2
~Here, it is done. We have found your key and I assume that this machine may be the key we seek.~
==RTCitMec~This machine and the one who can use it, yes. It will break the wall over there and give you access to Szass Tam's lair.~
==CVSan25J~The way it looks to me someone has set it out of order. (Smiles) Let me guess...you will not be hindered long by this state?~
==RTCitMec~Right, my friends. We only need a few items and they all should be somewhere to be found around the Citadel.~
=~The machine needs coal to burn and produce the steam that drives the large drilling head. For our purpose three portions of coal will be needed.~
=~As you see the handle on the control board has been removed. Szass gave it to the care of his worst Admiral who will probably not hand it to you without some, eh, hesitation. Go and convince him.~
=~The last item required will be a copy of the operating manual, so we can adjust the machine's setting for our purpose. Easy, isn't it?~
==CVSan25J ~Not so much harder than some things we have done before. Have good faith, master mechanic, we will soon return with all the required items.~
EXIT

CHAIN
IF~Global("RTCitKeySearch","GLOBAL",2)~THEN RTPhaer InCitadl
~My little ones, astonished to see me here?~
DO~SetGlobal("RTCitKeySearch","GLOBAL",3)~
==CVSan25J~Not at all, Phaere, not at all.~
=~We last saw you when an over-ambitious plan was definitely failing - and here you are again involved in an intrigue sizes too large for your delicate feet.~
==RTPhaer~Ah, you are still there at <CHARNAME>'s side? You were almost impressive in your drow disguise, almost of deadly beauty and power. Too bad your true face is so pale and so...human.~
==RTPhaer IF~Global("SanRomPath","GLOBAL",1)~THEN~I halfways could understand what you saw in her when she was drow, but now - you are as weak as she is pale.~
END
++~Phaere, you may have a chance to escape here before it is too late. We just need a key you will now hand over to us.~ + InCitadl2
++~You have not learned much, Phaere, and your fate will be the same as before.~ + InCitadl2
++~Trying again to handle a monster that is far beyond your capabilities. I feel almost sorry for you, Phaere.~+ InCitadl2

CHAIN
IF~~THEN RTPhaer InCitadl2
~I am the key to your success once again - or for your final fall.~
=~I owe you some pain for what you once did to me...*Veldrin*.~
DO~Enemy()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)~THEN RTRedWil 171
~The treacherous Bhaalspawn in person. It is really time to end your miserable existence.~
DO~Enemy()~EXIT

CHAIN
IF~Global("Wayout","RTF172",3)~THEN RTCandre SzassDef
~Now the shaping of the new Thay can finally begin.~
DO~SetGlobal("Wayout","RTF172",4)~
==CVSan25J~The shaping of the new Faerun still has to wait, our mission is not yet finished, <CHARNAME>.~
==RTEdwin~After all you have done, after all the success, it seems you are not ready to celebrate our victory with us, Sandrah?~
==CVSan25J~As much as I rejoyce with you and your beloved Candrella and all of Thay...we must still eliminate the one who pulled all those strings.~
==RTCandre~Cyric...your grandfather...~
==CVSan25J~Old family business has caught up with me, my Chosen. From Cyric's words before he deserted once again the scene of his crime we have learned that he is on his way to kidnap my grandmother.~
==RTCandre~She and Drizzt will not be completely helpless against the Prince of Lies in his human avatar.~
==CVSan25J~Knowing him I would not expect he will face them openly.~
END
++~Let us rush to Waterdeep to prevent his success.~ EXTERN CVSan25J SzassDef2
++~We may not make it in time to Waterdeep to prevent the deed.~ EXTERN CVSan25J SzassDef2

CHAIN
IF~~THEN  CVSan25J SzassDef2
~I assume we will not be able to prevent the kidnapping. I only hope that Drizzt will not attempt to stop the Mad Liar alone.~
=~<CHARNAME>, he still wants you and the essence you no longer possess. He wants us to find him. I would propose to meet with Cyric right away to leave him no further time for preparation. He gave us the hint...the place where he became a murderer once to gain Midnight.~
END
++~ The place where he murdered Kelemvor, wherever that may be.~ + SzassDef3
++~ Cyric murdered Midnight's lover Kelemvor atop Blackstaff Tower - where is that today?~ + SzassDef3

CHAIN
IF~~THEN  CVSan25J SzassDef3
~Blackstaff Tower fell to ruins after the Time of Troubles, its name was lost from memory. It was a large fortress guarding the southern frontier of the Sword Coast.~
=~Gnolls settled in the ruins later - until the heroic <CHARNAME> cleared the place to rescue a Wychalarn of Rashemen.~
END
++~THAT was once Blackstaff Tower, the ancient castle where we rescued Dynaheir? Let us go there at once.~EXIT
++~I still think we may first check Midnight's home at Waterdeep before we travel to the gnoll compound that once was Blackstaff Tower.~EXIT