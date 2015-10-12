BEGIN RTGnarl
BEGIN RTHairto
BEGIN RTMystC
IF~AreaCheck("RTF123")~THEN BEGIN YoungMys1
SAY~Strange powers are at work here, I feel so young once again.~
IF~~THEN REPLY~Hurry to the bridge, Midnight! Drizzt awaits you there.~GOTO YoungMys2
IF~~THEN REPLY~Oh, Cyric, what a stupid charade is this!!~ GOTO YoungMys3
IF~~THEN REPLY~Sandrah, what do you make out of this?~ GOTO YoungMys4
END

IF~~THEN BEGIN YoungMys2
SAY~Who is this Drizzt you talk about?~
=~You try to confuse me with your stupid words...~
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

IF~~THEN BEGIN YoungMys3
SAY~Who is this Cyric you talk about?~
=~You try to confuse me with your stupid words...~
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

IF~~THEN BEGIN YoungMys4
SAY~Who is this Sandrah you talk about?~
=~You try to confuse me with your stupid words...~
IF~~THEN DO~Enemy() Polymorph(MARILITH)~EXIT
END

CHAIN
IF~AreaCheck("RTF123")~THEN RTGnarl Bridge
~Stop! You go nowhere! This our bridge, you pay to walk it!~
==RTHairto~100 gold for all heads, or lose heads! Pretty good deal!~
==RTGnarl ~No! They pay 200 gold pretty quick! Maybe got more gold! Maybe rich!~
END
++~Have you guys not learned your lessons from last time or what?~ +Bridge2
++~200 gold is a little steep, don't you think? I mean, do I look like I have that kind of coin in abundance?~+Bridge2

CHAIN
IF~~THEN RTGnarl Bridge2
~Your head so dumb you not miss it!~DO~Enemy() Polymorph(MARILITH)~
==RTHairto~Yeah! We kill you, take stuff, and get gold anyway! Dumb head!~DO~Enemy() Polymorph(MARILITH)~EXIT

CHAIN
IF~Global("SanRTFPlot5","GLOBAL",6) Global("Gnollend","RTF123",2)~THEN CVCyr01 Gnollend1
~Hi, hi, you just appear in time for the exchange, my dears. I knew I have an offer for you that you cannot refuse.~
DO~SetGlobal("Gnollend","RTF123",3)~
==SanMyst~Sandrah, <CHARNAME>, do not make any concessions to this liar and traitor. He will not hold his word anyway.~
==CVCyr01~Not everyone gives away the power once acclaimed away as easy as you do, poor beloved Midnight.~
==SanMyst~Do not call me such, murderer and deceiver.~
==CVDRIZR~She is yours no longer, Prince of Lies!~
==CVCyr01~The deal is easy and straightforward. Bhaal's essence for Midnight's now again mortal existence.~
==CVSan25J~Have you understood nothing, Prince of Lies? What you ask for has long already been destroyed.~
==CVCyr01~What, babbling foolish girl? Wasn't it YOU who told me that the essence is the key to the Throne of Bhaal?~
==CVSan25J~It surely would be - if it still existed. I think you better explain the facts to this God of Murder immitation, <CHARNAME>.~
END
++~Bhaal's essence, mine and that of the spawns who were victim to Melissan's attempt to become the new Goddess of Murder, was destroyed together with the Throne of Bhaal in the Abyss by AO. My essence today is connected with the new portefolio created for Love and Hope.~+ Gnollend2
++~Why should Sandrah have told you such? She and Midnight were present when all existing essence of Bhaal was given to the ambitious priestess Melissan before she was forever destroyed together with the Throne of Bhaal.~+ Gnollend2
++~You have lost, Cyric. I have none of the essence you ask for anymore. It was taken and destroyed when I accepted my new godly power. The Throne of Bhaal went down with the ursupator Melissan.~+ Gnollend2

CHAIN
IF~~THEN CVCyr01 Gnollend2
~Why should I trust any of you liars...?~
==Pellig~*Another witness of those events is here today.*~
==CVCyr01~The Simbul will always stand to Mystra, new or old. Eh?~EXIT

CHAIN
IF~Global("Gnollend","RTF123",4)~THEN RTKelem Gnollend3
~A good place for dying you chose, Cyric.~
DO~SetGlobal("Gnollend","RTF123",5)~
==SanMyst~Kelemvor!~
==CVCyr01~Kelemvor? Well, hihihi, you must know better than any...~
==RTKelem~Blackstaff Tower saw my end, how adequate that my murderer has voluntarily chosen it for his own.~
==RTLordAo~As we all have learned by now the essence of the former God of Murder is not an issue for anyone anymore. The new Lord of Murder will need to stick with what he has got in his portefolio.~
==CVSan25J~Blackstaff Tower is the last glimpse you will have of the Primary Plane, *grandfather*.~
==RTLordAo~Mystra and <CHARNAME> were sent to give you the word that from this day you are banned from this Plane forever, Cyric. This struggle is hereby ended!~
==CVCyr01~YOU, miserable descendent of that meddling harper - ALL OF THIS IS YOUR WORK!!~
==CVSan25J~You have done everything, Cyric, to provoke this verdict, you and your phalanx of allies.~
==RTLordAo~Enough, all of you - this is over and you will all return to Celestia as decreed. Mystra and <CHARNAME> will escort Midnight to Waterdeep - within a Prime's tenday you shall follow us then. So be it.~
==CVSan25J~*You observe that wicked smile again on Sandrah's lips that you have seen once or twice before during the recent events.*~
=~Does our Overlord not have the intention to clarify the background of this Celestial intrigue? Was it Cyric really or Szass Tam who pulled all the strings - or maybe Shar?~
==RTLordAo~You play with fire, Mystra! I said it ends with what I have said.~
=~*You can feel the ground tremble from AO's anger.*~
==CVSan25J~Such attitude leaves much room for all kinds of suspicion, my Lord. Who gains the most, whose power is enlarged by this *divide and rule* strategy?~
==CVCyr01~Interesti...~
==RTLordAo~MYSTRA!!! Not a further word!~EXIT

APPEND CVSan25J
IF~Global("Gnollend","RTF123",6)~THEN BEGIN Gnollend4
SAY~Interesting reactions, my love.~
IF~~THEN REPLY~You really think that AO was behind it all to divide and rule us?~
DO~SetGlobal("Gnollend","RTF123",7)~GOTO Gnollend5
END

IF~~THEN BEGIN Gnollend5
SAY~*As she turns to you with her mysterious smile, you realize it all of a sudden...*~
IF~~THEN REPLY~AO was completely perplexed by your accusation, he could not believe it at all.~GOTO Gnollend6
IF~~THEN REPLY~Considering who has gained and who has lost...Mystra might be considered a true winner this time.~ GOTO Gnollend7
IF~~THEN REPLY~Cyric's words still ring in my ears that actually you planted this Throne of Bhaal idea in his head.~ GOTO Gnollend8
END

IF~~THEN BEGIN Gnollend6
SAY~Others were licking up this potential solution like it was sweet wine for them.~
IF~~THEN REPLY~Cyric will spread this version most eagerly, it covers up his own involvement just like he needs it to.~GOTO Gnollend6b
IF~~THEN REPLY~Honestly, I don't. Considering who has gained and who has lost...Mystra might be considered a true winner this time.~ GOTO Gnollend7
END

IF~~THEN BEGIN Gnollend6b
SAY~He is really the disappointed loser of this campagne just like he deserves to be.~
IF~~THEN REPLY~Considering who has gained and who has lost...Mystra might be considered a true winner this time.~ GOTO Gnollend7
IF~~THEN REPLY~Cyric's words still ring in my ears that actually you planted this Throne of Bhaal idea in his head.~ GOTO Gnollend8
END

IF~~THEN BEGIN Gnollend7
SAY~Mystra is dead, do not forget that, at least for the people of the Prime she so much cared for.~
IF~~THEN REPLY~I see.~EXIT
IF~~THEN REPLY~I'd really like to know how far you went, granddaughter of the Prince of Lies.~GOTO Gnollend9
END

IF~~THEN BEGIN Gnollend8
SAY~He misunderstood me, it seems. I told him the truth, namely that your essence was the key to the Throne he so much desired. I was maybe not aware that he had no idea that the essence was already destroyed.~
IF~~THEN REPLY~I see.~EXIT
IF~~THEN REPLY~I'd really like to know how far you went, granddaughter of the Prince of Lies.~GOTO Gnollend9
END

IF~~THEN BEGIN Gnollend9
SAY~Fine - you have every right to know and not to doubt my love and loyalty. Yes, I set some of the things in motion, but I did not plan or steer this whole affair. Listen.~
=~Almost immediately after our ascencion it became clear that we were facing opposition from various old and new foes in Celestia. With the ears and eyes of my ever loyal Pelligram and your Solar it became apparent that some alliance was forming around Cyric and Shar.~
=~I decided not to let them finish their preparations and also I decided that it would be advantageous for us to set the scenery for the confrontation.~
IF~~THEN REPLY~You decided on the Prime to be battlefield once more - how could you!~GOTO Gnollend10
IF~~THEN REPLY~You must have had your reasons, continue please.~ GOTO Gnollend10
END

IF~~THEN BEGIN Gnollend10
SAY~The Prime would give us the advantage of the home team over our opponents and we still had substantial support from the mortals - this would not have been the case anymore in a number of decades - as long as probably the Phalanx would have needed without my ignition sparks to trigger on their actions. Furthermore it gave me the chance for my primary goal, namely Faerun's emancipation from this bunch of useless gods that stand in the way of the progress of the mortals.~
=~So, Pelligram and me made sure that the name of Szass Tam reached the prying ears of those who should not have known about him and with that the phalanx got connected to the Prime. Cyric used the zulkir's ambitions to gain Mystra's power like a new Karsus, everything that weakened me and Shar at the same time would be in his favour. The rest of the players and their intentions you know yourself.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~And what about me in all this?~ GOTO Gnollend11
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~And what about me in all this?~ GOTO Gnollend12
END

IF~~THEN BEGIN Gnollend11
SAY~Are we not inseparable? Can I go without love and hope at my side?~
=~You were their target just like I was, you once again had little choice. Earlier on you asked me about who has gained from it all - you did.~
=~The spell plague as they call it will continue, no matter what the Overfool AO might think. The gods relying on mystical and magical manifestations for their believers will vanish over time. The people will turn to science, literature and research and start to create their own devices that do *magic* tasks for them.~
=~But wherever two pairs of lips meet each other in love and desire, there will be a god who grows in power daily.~
IF~~THEN REPLY~*Your own lips meet each other in love and desire*~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~ EXIT
END

IF~~THEN BEGIN Gnollend12
SAY~Are we not inseparable? Can I go without love and hope at my side?~
=~You were their target just like I was, you once again had little choice. Earlier on you asked me about who has gained from it all - you did.~
=~The spell plague as they call it will continue, no matter what the Overfool AO might think. The gods relying on mystical and magical manifestations for their believers will vanish over time. The people will turn to science, literature and research and start to create their own devices that do *magic* tasks for them.~
=~But wherever two lips meet each other in love and desire, there will be a goddess who grows in power daily.~
IF~~THEN REPLY~*Your own lips meet each other in love and desire*~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~ EXIT
END
END