BEGIN RTLeyThi
BEGIN RTLonk

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",1)~THEN RTLeyThi SaeTrou1
~Hey, you there, please wait, I need a minute of ya time!~
==CVIzy25J IF~InParty("CVIzzy")~THEN~You're a shadow thief, right man, I've seen ya in Saemon's place, cutie.~
==CVSan25J IF~!InParty("CVIzzy")~THEN~ A shadow thief if I'm not mistaken. Are you one of Saemon's guild?~
==RTLeyThi~Absolutely right, ma'am, and it's because of the boss the boys sent out to seek for ya. Ac'tally it's for her we look.~
==CVLey25J~For me? What have I to do with the shadow thieves?~
==RTLeyThi~Well, yeah, see...the boys 'n' me sat together and discussed. See, somethin's wrong with the boss for a couple of days now. We fear for his brainwise sanity and such.~
==CVLey25J~Does it concern his liasion with Shaleij, maybe?~
==RTLeyThi~You're the expert for those love things, aren't ya? Trouble is that the gal's missing.~
==CVLey25J~Did they have a quarrel, did she leave him?~
==RTLeyThi~That's the point, ma'am, we don't know and we don't dare to ask the boss...see, this is his privacy and so. The mood he has, he'd kill me if I'd address the subject.~
=~The two of them were in heaven number seven since he returned with her. All day sunshine an' love makin', couldn't stand so much...bah...harmony. Now is gone 'n' boss gone mad...well, we thought you'd be right one for counselling such things.~
==CVLey25J~What do you think, <CHARNAME>? I would not cost us too much to talk with Seamon and see if we can help here. Whatever he did to you in the past he seems to have compensated by now. Let him not return to the old ways.~
END
++~We can pay the docks a short visit to see what's going on, Lathan.~+ SaeTrou2
++~Serves the scoundrel right, he never deserved a good woman like Shaleij.~+ SaeTrou3
++~Given his position in Amn by now, there may well be a different background to the missing girl. Maybe she did not go voluntarily.~+ SaeTrou2

CHAIN
IF~~THEN RTLeyThi SaeTrou2
~Brilliant, I need to tell the boys of your response. The whole guild will be grateful if you'd come one of these days. ~
DO~SetGlobal("RTLeyPlot1","GLOBAL",3) AddJournalEntry(@2082,QUEST)MoveBetweenAreas("rtf305",[390.599],4)~EXIT

CHAIN
IF~~THEN RTLeyThi SaeTrou3
~Too bad, I need to tell the boys of your declining. Anyway, if you reconsider the whole guild would be grateful if you'd come one of these days.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",2) MoveBetweenAreas("rtf305",[390.599],4)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",2) Global("Sanrompath","GLOBAL",1)~THEN  CVLey25J ReconM
~I beg you, <CHARNAME>, let us see Saemon in the near future. If only to see if my skills can provide some help - in your name, my Lord.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",3)AddJournalEntry(@2082,QUEST)~
END
++~Who could deny the plea of his sweetest servant.~ EXIT
++~Baah, the old weasel only receives what he has earned.~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",2) Global("Sanrompath","GLOBAL",2)~THEN  CVLey25J ReconF
~I beg you, <CHARNAME>, let us see Saemon in the near future. If only to see if my skills can provide some help - in your name, my Lady.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",3)AddJournalEntry(@2082,QUEST)~
END
++~Who could deny the plea of her sweetest servant.~ EXIT
++~Baah, the old weasel only receives what he has earned.~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",3)~THEN RTSaemon Sheimiss1
~Ah, you...~
DO~SetGlobal("RTLeyPlot1","GLOBAL",4)~
==CVSan25J~This sounds very far from the Saemon Havarian we all know.~
==CVLey25J~I know this depressed tone quite well, I councelled many like that in the name of love and hope.~
==RTSaemon~Love and hope, are there still fools who believe that silly stuff?~
==CVLey25J~Neither you nor your beloved were doubting those principles when we last saw you. We are your friends, Saemon, tell us what has happened.~
==RTSaemon~Nothing happened, do you see her around here anymore?~
==CVLey25J~Shaleij knew well the kind of business you run, Saemon. It did not prevent her from her feelings for you. Why is she not here?~
==RTSaemon~Ask her if you see her - I do not know it. She said not a word before disappearing.~
==CVLey25J~How did she do it, I mean this *disappearing*? Did she walk out the door without a word or sneak out in the night?~
==RTSaemon~No one knows as no one saw her leave. When I came down to our quarters three nights ago she simply was not there.~
==CVLey25J~Did you consider that she may not have left on her own?~
==RTSaemon~Leyala, I respect your good will - but this is the Shadow Thieves Headquarter of Amn. Nobody enters or leaves here without my consent - and definitely nobody takes anything away from here without my knowledge and approval.~
==CVLey25J~I am sure we have your approval to investigate this case a bit and look around in your quarters below. Should she really have left you, she would surely have left you some sign of what went wrong.~
==RTSaemon~Do what you think you can do, I expect little from it.~ EXIT

CHAIN
IF~AreaCheck("ar0307") OR(2) Global("RTLeyPlot1","GLOBAL",4) Global("RTLeyPlot1","GLOBAL",5)~THEN CVLey25J AskMissy
~You are always down here, doing your job, aren't you?~
DO~SetGlobal("RTLeyPlot1","GLOBAL",6)~
==Arngrl01~Missy, the coat check girl, must always watch like a HAWK, people come at all times and must check their coats.~
==CVLey25J~Those people three nights ago, did they check in their coats?~
==Arngrl01~There's never no one who don't check in their coat with Missy!!. So for the last time - hand... over... the... COAT!~
==CVLey25J~I only have a cloak...~
==Arngrl01~I told all of you before that Missy is the coat check girl, no CLOAKS, NO LOUSY BANDANAS...~
==CVLey25J~They checked in bandanas, how unusual..?~
==Arngrl01~I've had enough of you, you coatless little weirdos! All you from the red light secret door come with NO COAT AND NO CODE!!~DO~EscapeArea()~
==CVSan25J~The red light door...the one that leads to Irenicus' little place?~
==CVLey25J~But he and Aerie are celebrating their honeymoon, they are not at home.~
==CVSan25J~Bandanas are worn by pirates and Irenicus once had connections to the Asylum on Brynnlaw. His place on the island and his place right here may have a connection that someone uses during his absence.~
==CVLey25J~I would like to ask Saemon again about some *friends* who may try to hurt him - and Shaleij.~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",6)~THEN RTSaemon Sheimiss2
~Already back? There was nothing to find, right (sigh), I would have found it, be sure.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",7)~
==CVLey25J~Someone was down there three days ago and without your knowledge, Saemon, someone who came to steal what is the most valuable for you.~
==RTSaemon~Impossible!! She can't be kidnapped...this is Shadow Thieves...~
==CVLey25J~...Headquarter of Amn, yes, yes. You must have hurt someone quite a bit to risk such a deed, that is for sure. The good news is that Shaleij did not leave you.~
==RTSaemon~I must free her!! Who has her?? I received no demand for a ransom.~
==CVLey25J~There may not come one.~
=~Say, Saemon, have you ever stolen something equally valuable from a man, something that hurt him as much as Shaleij's loss hurts you?~
==RTSaemon~He?~
==CVLey25J~Maybe you took his woman as well, or his ship?~
==RTSaemon~Well, there have been some incidents in my past...~
==CVLey25J~What about one from whom you stole his woman AND his ship?~
==RTSaemon~Oh, no!!~
==CVLey25J~Are you thinking of a pirate right now?~
==RTSaemon~Desharik!! MEN, hoist sails - we go to Brynnlaw immediately!~
==CVLey25J~Just like he probably wants you to. NO, Saemeon, you will stay here just in case we err and someone contacts you for ransom still. Your attack will just endanger her should the pirate king really have her. We will go, right, <CHARNAME>?~
END
++~Yes, Leyala, I completely agree. We must find a secret way to the island and operate silently.~ EXTERN CVLEY25J Sheimiss3
++~Leyala is right. Desharik will surely know about your coming as soon as you leave this building. You must stay here and keep up the facade while we secretly try to reach the island.~EXTERN CVLEY25J Sheimiss3

CHAIN
IF~~THEN CVLEY25J Sheimiss3
~The pirate king of the island will surely have complete control over the waters around his bastion. We must consider an approach that is not by boat or ship.~
==CVSan25J~We may have a chance to come in via the backdoor, the former Spellhold Asylum. It is vacated since we defeated Bodhi and Irenicus there.~
==CVLey25J~Can we get there from Irenicus' installation here in Athkatla?~
==CVSan25J~Even if such a connection still exists, I doubt we can find and activate it without the master of the house. We have no idea where they spent their honeymoon or when they will return.~
==CVLey25J~Your magic transportation then, Sandrah?~
==CVSan25J~Desharik is directly supported by Umberlee from her temple on the island. He will detect us as quickly as if we approached over the waves.~
==RTSaemon~Then our approach over the waves must be so quick and forceful that he is swept away before he even recognises it.~
==CVLey25J~I doubt that force is the answer here. We have not heard all of Sandrah's options yet.~
==CVSan25J~He guards the water and the intraplane. Consequently we come by air.~
==CVLey25J~Nib's skyship!~
==CVSan25J~The gardens of the former asylum can be reached from the mainland without being seen from his outposts. They will look for sails on the horizon but we will come riding high on the jetstream that blows nightly from the cooling coast to the offshore islands.~DO~AddJournalEntry(@2083,QUEST)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",11)~THEN CVLEY25J Sheifree
~There she is in the glass prison, but no trace of the switch Cayla mentioned.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",12)~
==RTShaj~(The girl gestures at Sandrah and pantomimes as if using a hammer.)~
==CVLEY25J~It seems she wants us to do something with Sandrah's hammer...~
==CVSan25J~Magic glass versus a magical hammer. Let us see where that leads to.~
=~(Sandrah resolutely steps up to the glass prison and strikes with her hammer. Immediately the container starts to vibrate and hum lowly.) ~
=~(Under the second strike the vibrations becomes heavier and the humming turns to an incredible shriek.)~
=~(Only seconds later the room is filled with a whirl of splinters from every glass object in the vicinity...)~
DO~ClearAllActions() StartCutSceneMode() StartCutScene("RTShaFre")~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",12)~THEN RTShaj Sheifree2
~It is good you understood. We are once again in your debt, Saemon and me.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",13)~
==CVLEY25J~Saemon will be more than happy to hold you in your arms very soon. We had a hard job to prevent him from sailing to your rescue immediately.~
==RTShaj~You are wise to do so. My capturer was planning on just that. This asylum is a trap with me for bait.~
==CVLEY25J~Your new friend Cayla warned us about that.~
==RTShaj~Oh poor Cayla, she was my help and hope here, she had to suffer for so long already from that pirate brute.~
==CVLEY25J~We promised her to help her out of Brynnlaw as well.~
==RTShaj~The bridge to and from town is deadly, but how can we leave the island any other way?~
==CVSan25J~We had to send our skyship back to the mainland. We had no idea what we would find here and that ship would have notified about our presence immediately. We need to defeat the pirates and disable the trap to get access to the harbour and the ships down there.~
==RTShaj~I propose to consult Cayla, she knows Desharik and the island better than anyone.~DO~EscapeAreaMove("ar1515",1696,820,5)~EXIT

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",13)~THEN RTShaj Sheifree3
~I told Cayla about our need to find a ship from this island.~
END
++~Yes?~EXTERN ppgirl Sheifree4

CHAIN
IF~Global("RTLeyPlot1","GLOBAL",13)~THEN ppgirl Sheifree4
~The only way to leave the asylum's ground is via the bridge to the town. But the bridge is blocked by a deadly trap.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",14)~
==CVLEY25J~ What is this trap, do you know?~
==ppgirl~Anyone who crosses the bridge without holding a specific wardstone is immediately turned to stone.~
==CVLEY25J~You received water and food while encarcerated here and there is no supply within these walls.~
==RTShaj~The madman Lonk who calls himself Lonk the Sane brought everything we needed from town.~
==CVSan25J~He fled the asylum when we entered to notify Desharik of our intrusion.~
==ppgirl~Desharik never expected an assault from the back entrance so he only guarded the access from town.~
==CVLEY25J~Which means he will appear here soon to prevent our escape.~
==ppgirl~He will surely not come alone, Brynnlaw today is fully in the hands of his pirates.~
==CVLEY25J~Anyway, he needs to deactivate his trap to reach us and we will have a chance to escape or to get possession of a wardstone.~
==CVSan25J~I would propose to meet his attack at the end of the narrow bridge outside where he has no chance to make use of his manpower. The pirates cannot come at us with more than two men side by side across that bridge.~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",8)~THEN ppgirl Leyquest1
~Quickly, come into the asylum, it's relatively safe inside even if it's a prison for us.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",9)~
==CVLey25J~For us? You are not alone inside there?~
==ppgirl~I'm not the fool to think you came to rescue ME. She was sure that her Saemon would do everything possible to get her back - (sigh) I wish I had the power back then to trigger the change in this man.~
==CVLey25J~Shaleij is here then, just like we had assumed!~
==ppgirl~We're both Desharik's prisoners, but she's also the bait for Saemon in this deadly trap.~
==CVLey25J~We were able to convince Saemon to stay in Athkatla where Desharik's spies may get sore feet from observing his every move while we came through the backdoor to free the prisoner - well, the prisoners as it appears now.~
==ppgirl~Heavens, I hope you will be able to get me out of here after all these years that I pay now for my mistakes I made as a foolish youngster.~
==CVLey25J~Fear nothing, we will leave no one to the pirate's wraith.~
==ppgirl~I am Cayla, by the way. Have your weapons ready when you get inside, there are further guards all over the place.~ DO~MoveToPoint([1313.1581]) EscapeAreaDestroy(30)~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",9)AreaCheck("ar1515")~THEN ppgirl Leyquest2
~Please allow me to wait here for your return. I am not a fighter who can help you against the guards further on.~
DO~SetGlobal("RTLeyPlot1","GLOBAL",10)~
==CVLey25J~Stay here, we will return, no fear. Do you know where they keep Shaleij?~
==ppgirl~You must find your way to the lower level, some strange laboratory of old. And you must find a switch to release her from the strange glass prison she's kept in.~
==CVLey25J~Fear not for her or for yourself. We have overcome larger obstacles in the name of love and hope.~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyspawn","ar1515",1)~THEN ppworker alert
~How did they come in...Desharik must know that immediately!~
DO~SetGlobal("RTLeyspawn","ar1515",2) EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-4~Global("RTLeyPlot1","GLOBAL",15)~ THEN PPDesh Showdown
~What is the meaning of this intrusion?~
=~Madam, you ravening ditch-pig, I spared your life just to be betrayed again?~
DO~SetGlobal("RTLeyPlot1","GLOBAL",16)~
==PPGirl~You spared my life just to make my existence more miserable than it was before. I owe you nothing, you just wanted your revenge on me - and on Havarian!~
==PPDesh~I am the Lord of this Isle! I sentence you to death and all that are with you.~
==RTLonk~But, sir...captain...the wardstone...I still have it here...~
=~Uuuh!!~DO~MoveToObjectFollow("rtdesh")~EXIT

CHAIN
IF WEIGHT #-3~Global("RTLeyPlot1","GLOBAL",16) Global("escape","LOCALS",0)~THEN pirsea01 alerti
~Intruders, kill them for Desharik!~
DO~SetGlobal("escape","LOCALS",1) Enemy()~EXIT