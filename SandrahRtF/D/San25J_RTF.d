APPEND CVSan25P

IF WEIGHT #-2~GlobalGT("SanBeginRTF","GLOBAL",1) Global("SandrahJoined","GLOBAL",61)~THEN BEGIN RTFDead
SAY ~My Love!! You have achieved so much and I owe you a thorough explanation for the hurt and loss I had to cause you.~
IF~~THEN REPLY~You are alive, that is all I need to know at this moment. (You kiss her again and again.)~GOTO RTDead2
IF~~THEN REPLY~My stubborn heart never accepted the fact of your loss. Someone I love more than everything else always advised me to listen to my feelings.~GOTO RTDead2
END

IF~~THEN BEGIN RTDead2
SAY~Mystra may stay dead and hidden for everyone's eye some time longer but Sandrah will be by your side once again, <CHARNAME>.~
IF~~THEN REPLY~The spell plague, the disaster Shar creates with the Weave, the betrayal of Larloch, your downfall - it was all a big farce?~GOTO RTDead3
END

IF~~THEN BEGIN RTDead3
SAY~Your reaction and action was a big part of that plan as well, beloved. YOU had to believe it in order for all others to swallow the bait.~
IF~~THEN REPLY~But the Weave? It is in the hand of our foe still!~GOTO RTDead4
END

IF~~THEN BEGIN RTDead4
SAY~Shar has most likely destroyed most of what I gave her through Larloch by now in her vain attempt to reunite it with the Shadow Weave - thus reducing her own dark power by the same amount.~
=~You must know that the Weave cannot be separated from its keeper just like I cannot be separated from you.~
IF~~THEN REPLY~You mean...~DO~SetGlobal("SanRTFPlot4","GLOBAL",6)~GOTO RTDead5
END

IF~~THEN BEGIN RTDead5
SAY~Shar has received as much essence from the Weave as was needed to make the ploy plausible and to keep her occupied for some time. The rest of it is with me and with the Simbul. We will keep it in custody for as long as it is necessary to end and win this struggle. ~
=~Now let us go and see Larloch and my grandmother to discuss our actions to finally face what has remained of our opponents.~
IF~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~
EXIT
END

IF WEIGHT #-1~GlobalGT("SanBeginRTF","GLOBAL",1) !Global("SandrahJoined","GLOBAL",60) Global("SandrahJoined","GLOBAL",1)~THEN BEGIN NoKickRTF
SAY ~*By AO's verdict you cannot part with Sandrah while on your mission in Faerun.*~
IF ~~THEN DO ~JoinParty()~
EXIT
END
END


APPEND CVSan25J

//PID
IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",17) ~THEN BEGIN SanPCInit17
SAY ~*Sandrah - once again in her human avatar - has not changed a single bit from the girl you loved and admired before your common ascension.*~
IF~Global("RTFOldFriends","GLOBAL",2) Global("SanRTFPlot5","GLOBAL",0)~THEN REPLY~Can you tell me some locations where our old friends are today?~GOTO RTFSearchfr2
IF~Global("Godsnow","LOCALS",0)~THEN REPLY~*She's the Goddess of All Magic now, a powerful member of the Pantheon - still for you she will always remain your beloved Sandrah*.~GOTO Godsnow1
IF~Global("RTParcel","LOCALS",0) Global("SanRTFPlot3","GLOBAL",0)~THEN REPLY~Will your parcel again aid us in travelling the Realms, Sandrah?.~DO~SetGlobal("RTParcel","LOCALS",1) ~GOTO RTParcel1
IF~Global("RtFReasonSent","LOCALS",2)~THEN REPLY~I have remembered who that trader Nerkio was.~GOTO NerkiHi1
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTFIren","GLOBAL",0)~THEN REPLY~How can we get to Irenicus? A journey to the Abyss once again?~GOTO RTFIren1
IF~Global("SanRTFColl","GLOBAL",1) Global("Sanfence","LOCALS",0)~THEN REPLY~Where should we start our search for the Collector now, what do you think? ~GOTO FencHint2
IF~Global("RTFoundIce","GLOBAL",8)~THEN REPLY~Tell me about that Summer Camp and how we can go there, counsellor.~GOTO SumCamp1
IF~GlobalGT("SanRTFPlot1","GLOBAL",8) Global("RTTethRoad","LOCALS",0)~THEN REPLY~Amkethran is quite a journey away without your parcel's aid. Can you suggest something?~DO~SetGlobal("RTTethRoad","LOCALS",1)~GOTO TethRoa
IF~Global("SanRTFPlot1","GLOBAL",9) Global("RTFWhy1","GLOBAL",0)~THEN REPLY~So, my beloved counsellor, who do you think our foe are really targeting - you or me?~GOTO RTFTargt1
IF~GlobalGT("SanRTFPlot2","GLOBAL",4) Global("RTFWhy1","GLOBAL",1)~THEN REPLY~Some time ago you mentioned Karsus, the mighty sorcerer who challenged the ancient Mystryl.~GOTO Kars1
IF~Global("SanRTFPlot2","GLOBAL",4) Global("RoadMorn","LOCALS",0)~THEN REPLY~Any idea how we can best travel to Mornbryn's Shield?~GOTO MornTrav1
IF~Global("SanRTFPlot1","GLOBAL",6)~THEN REPLY~What about the graveyards of Waterdeep?~GOTO WDGravey1
IF~Global("SanRTFPlot1","GLOBAL",8)Global("AskedcandV","LOCALS",0)~THEN REPLY~What is your interest to go to Candlekeep, my learned counselor?~GOTO CanCear1
IF~Global("RTBalow","GLOBAL",2) Global("BalowolQ","LOCALS",0)~THEN REPLY~Are you earnestly trying to deal with that Balrog in a civilized way?~GOTO Balod1
IF~Global("SeenMysPid","LOCALS",1)~THEN REPLY~We wanted to talk about Candrella, I propose it's time for that now.~DO~SetGlobal("SeenMysPid","LOCALS",2)~GOTO Candr2
IF~Global("RTOdess","GLOBAL",1)GlobalGT("GuardOd","RTF070",1)GlobalLT("SanRTFPlot3","GLOBAL",4)~THEN REPLY~I am pretty unsure which role the Odesseiron family plays in this affair.~GOTO Odedisc1
IF~Global("RT78BoHi","LOCALS",0) PartyHasItemIdentified("RT78Bok")~THEN REPLY~This book here speaks of *...place the artefact left of you and put your right hand on the scales...*. It must be the scales in that control room where we found the book. Which artefact does it talk of?~GOTO Scales2
IF~GlobalGT("RTSamThrone","GLOBAL",3)Global("ThayLesson","LOCALS",0)~THEN REPLY~A sly creature, this Samas Kul, but what did we really learn from him?~GOTO AfterSam1
IF~GlobalGT("RTColan","GLOBAL",16) GlobalLT("SanRTFPlot3","GLOBAL",3) Global("Colanrole","LOCALS",0)~THEN REPLY~What role does that Chief-Inquisitor really play here, any idea?~GOTO ColRol1
IF~Global("SanRTFPlot4","GLOBAL",1) Global("LarlHint","LOCALS",0)~THEN REPLY~You surely have an idea where that Shadow King Larloch and the Warlock's Crypt can be found?~GOTO Larlhint1
IF~Global("SanRTFPlot4","GLOBAL",1) Global("LarlHint","LOCALS",1)~THEN REPLY~Now tell me a bit about the Shadow King Larloch.~GOTO Larlhint2
IF~GlobalGT("SanRTFPlot4","GLOBAL",0)Global("Suldatry","LOCALS",0)~THEN REPLY~Maybe we should as well try to mobilize some of my allies for this campaign?~GOTO OwnAlly1
IF~Global("SanRTFPlot4","GLOBAL",7)GlobalLT("RetThay","LOCALS",2)~THEN REPLY~Do you think we are ready by now to return to Thay?~DO~SetGlobal("RetThay","LOCALS",2)~GOTO RetThay2
IF~Global("SanRTFPlot4","GLOBAL",6) Global("RetThay","LOCALS",0)~THEN REPLY~Do you think we are ready by now to return to Thay?~DO~SetGlobal("RetThay","LOCALS",1)~GOTO RetThay1
IF~GlobalGT("SanRTFPlot4","GLOBAL",5) Global("Pellrevrt","LOCALS",0)~THEN REPLY~Pelligram was a great comfort and help during your absence, why had she to revert to her animal form again?~GOTO Pellrev1
IF~Global("SanRTFPlot5","GLOBAL",1)Global("CitEntpl","GLOBAL",0)~THEN REPLY~Do you have an idea how to enter the notorious Citadel?~GOTO Cit5Ent1
IF~Global("SanRTFPlot5","GLOBAL",7) Global("LastFAIV","LOCALS",0)~THEN REPLY~What is there still to do before we return to Celestia? ~DO~SetGlobal("LastFAIV","LOCALS",1) ~GOTO InnLastV1
IF~Global("RTLouPlot","GLOBAL",12) ~THEN REPLY~We must rescue our drow companion urgently.~GOTO SavLou1
IF~Global("RTLouPlot","GLOBAL",13)~THEN REPLY~Looks like we cannot descend again to the Underdark using our known paths.~DO~SetGlobal("RTLouPlot","GLOBAL",14) ~GOTO SavLou3
IF~OR(2) AreaCheck("ar2100") AreaCheck("RTF072")~THEN REPLY~How about some disguise again here in the Underdark?~GOTO NoMirr
IF~Global("RTMeliQuest","GLOBAL",11)~THEN REPLY~What about Melicamp's treasure?~GOTO Meliunp
IF~~THEN REPLY~*Looking at her you feel the urge to kiss her immediately - and you do.*~EXIT
END

//Search Friends

IF~Global("RTFOldFriends","GLOBAL",1)~THEN BEGIN RTFSearchfr1
SAY~Before we actually start our quest we may want to gather some old friends to accompany us.~
IF~~THEN REPLY~They may be shattered everywhere - those who are still alive...~DO~SetGlobal("RTFOldFriends","GLOBAL",2) SetGlobal("SanPidPack","GLOBAL",17)~GOTO RTFSearchfr2
END

IF~~THEN BEGIN RTFSearchfr2
SAY~I have kept track of some of them, those that we may easily search out around here.~
IF~!InParty("CVIzzy")~THEN REPLY~What about your besta friend Imoen?~GOTO IzreplImo
IF~Dead("Viconia") !Dead("Yasraena")~THEN REPLY~Do you know where any of our drow friends are?~GOTO Yasonly
IF~!Dead("Viconia") Dead("Yasraena")~THEN REPLY~Do you know where any of our drow friends are?~GOTO Vicionly
IF~!Dead("Viconia") !Dead("Yasraena")~THEN REPLY~Do you know where any of our drow friends are?~GOTO Bothdrow  
IF~!Dead("O#Xan")~THEN REPLY~Is our doomed elf from Evereska still around?~GOTO RTXan
IF~!Dead("ACBre")GlobalGT("SanBreBa","GLOBAL",1)~THEN REPLY~What about our grumpy dwarven smith, Breagar?~GOTO BreagCK
IF~Global("SuSanKnowsFinch","GLOBAL",1) !Dead("Sufinch")~THEN REPLY~Where is our bookworm Finch?~GOTO FinchCK
IF~!Dead("Haerdalis")~THEN REPLY~How about a bard to enrich our company?~GOTO HaerThe
IF~~THEN REPLY~What happened to our noble Samaritan?~GOTO NalCoun
IF~!Dead("Jan")~THEN REPLY~What has happened to the turnip gnome inventor, do you know?~GOTO JanRT
IF~GlobalLT("RTTalkedSaem","GLOBAL",9)~THEN REPLY~Where could our Avariel have gone to?~GOTO AerJon
IF~GlobalGT("MWleaveShau","GLOBAL",1)~THEN REPLY ~Our blood thirsty pit fighter?~GOTO Ariena1
IF~~THEN REPLY ~Anyone else?~GOTO FriArm
END

IF~~THEN BEGIN AerJon
SAY~She was reported to be with a very powerful mage. The place was related to the air elements and Akadia.~
IF~~THEN REPLY~We know of such a place below Athkatla, but that is surely not the same one. Maybe we learn about her during our travels.~EXIT
END

IF~~THEN BEGIN  FriArm
SAY~Some of our friends that are still travelling a lot may drop into the Friendly Arm from time to time.~
IF~~THEN REPLY~A good idea to check the place if we have a chance for it.~EXIT
END

IF~~THEN BEGIN RTXan
SAY~He is no longer threatened by the cowled wizards in Athkatla, so it seems he has arranged himself with the current authorities.~
IF~~THEN REPLY~I can imagine him serving the council as good as the greycloaks.~EXIT
END

IF~~THEN BEGIN JanRT
SAY~Jan travelled with his cousin Nib Jansen and his sky ship. Maybe he tries to teach the advantages of turnip planting to Shauhana's orcs.~
IF~~THEN REPLY~The berserkers have either killed him or are all snorting while he tells them another tale.~EXIT
END

IF~~THEN BEGIN NalCoun
SAY~I doubt that Nalia de'Arnise would once again join our company these days. The Governor and head of the Council of Six will be occupied by her duties for Amn.~
IF~~THEN REPLY~Keeping all those poor mouths fed will really keep her busy.~EXIT
END

IF~~THEN BEGIN  HaerThe
SAY~Haer'Dalis, my little twirly bird, runs the theatre in the bridge district of Athkatla.~
IF~~THEN REPLY~If I know him well he'd be ready to spread his wings once again if you'd give him the word.~EXIT
END

IF~~THEN BEGIN Ariena1
SAY~The half orc fighter Ariena lives with Shauhana's orcs.~
IF~~THEN REPLY~Let's see if this quest includes a lot of *smashing heads to pulp*.~EXIT
END

IF~~THEN BEGIN  BreagCK
SAY~He has returned to Candlekeep after all his journeys. It is a place that had no smith before.~
IF~~THEN REPLY~These days they will let me in even if I have no rare book to contribute.~EXIT
END

IF~~THEN BEGIN  FinchCK
SAY~She's in her most natural environment, the largest library on the Sword Coast.~
IF~~THEN REPLY~I should have known that myself, darling, where else but Candlekeep could she stay longer than a day.~EXIT
END

IF~~THEN BEGIN IzreplImo
SAY~Imoen and Henning run the Orphanages of Beregost and Waterdeep with Henning overseeing his trade posts all over the Sword Coast. Imoen is also member of Beregost's Town council. We will find her in their mansion in Beregost~
IF~~THEN REPLY~I can't imagine an adventure without the constant remarks from my *little sister*, haha.~DO~RevealAreaOnMap("BG3300")~EXIT
IF~~THEN REPLY~Beregost is on the list - anyone else you can propose?~DO~RevealAreaOnMap("BG3300")~GOTO RTFSearchfr2
END

IF~~THEN BEGIN Yasonly
SAY~The lovely Yasraena and her Divalir have tried to live in a number of places until they have finally found a shelter with Qilandrha's community in Undermountain.~
IF~~THEN REPLY ~Waterdeep and Undermountain are places we will visit anyway soon.~EXIT
IF~~THEN REPLY ~As you mention her, how about your sister herself?~GOTO QuiNo
IF~~THEN REPLY~Anyone else you can propose?~GOTO RTFSearchfr2
END

IF~~THEN BEGIN Vicionly
SAY~The enigmatic Viconia has tried to live in a number of places and with ever-changing males until she and her daughter have finally found a shelter with Qilandrha's community in Undermountain.~
IF~~THEN REPLY ~Waterdeep and Undermountain are places we will visit anyway soon.~EXIT
IF~~THEN REPLY ~As you mention her, how about your sister herself?~GOTO QuiNo
IF~~THEN REPLY~Anyone else you can propose?~GOTO RTFSearchfr2
END

IF~~THEN BEGIN Bothdrow
SAY~The enigmatic Viconia has tried to live in a number of places and with ever-changing males until she and her daughter have finally found a shelter with Qilandrha's community in Undermountain. Yasraena and her Divalir made a similar odyssey over the surface and now live there, too.~
IF~~THEN REPLY ~Waterdeep and Undermountain are places we will visit anyway soon.~DO~RevealAreaOnMap("cvroa1")~EXIT
IF~~THEN REPLY ~As you mention her, how about your sister herself?~DO~RevealAreaOnMap("cvroa1")~GOTO QuiNo
IF~~THEN REPLY~Anyone else you can propose?~GOTO RTFSearchfr2
END

IF~~THEN BEGIN QuiNo
SAY~I would dearly love to spend some more time with my Qilandrha myself, yet I am afraid her responsibility for the Undermountain community and her service for Eilistraee and - eh, for me - will not allow for adventuring with us. (Sigh).~
IF~~THEN REPLY~I see...she would have been an interesting companion - so you have to try hard to compensate for that, haha.~EXIT
IF~~THEN REPLY~Anyone else you can propose?~GOTO RTFSearchfr2
END

IF~~THEN BEGIN RTParcel1
SAY~It could but I recommend to use it with utmost care this time. Travelling through the intra-plane always leaves our signature that can be traced. You know we face opponents this time that have the godly abilities to see those traces like a ranger sees an animal's trail.~
IF~~THEN REPLY~(Sigh) Does it mean endless marches by foot once again?~+ RTParcel2
END

IF~~THEN BEGIN RTParcel2
SAY~See the positive side of it, darling, we are back in our beloved home and so much has changed that will be worth exploring. While we travel in our mortal avatars we are much harder to be located by our enemies. They will have no opportunity to surprise us with nasty traps and ambush like when we materialise at a new destination.~
IF~~THEN REPLY~I almost forgot your joyful view on things - but, yes, your arguments are convincing me.~EXIT
IF~~THEN REPLY~Hm, I agree we should limit travelling with the parcel to the essential necessities.~EXIT
IF~~THEN REPLY~Well, let's combine necessity and opportunity then. I am anxious to see how our old world has changed meanwhile.~EXIT
END

IF~~THEN BEGIN WDGravey1
SAY~A good question - there are three of them actually, two very busy ones currently in use. I think we, and of course Nerkio, might be more interested in the third one.~
=~I am talking about the ancient graveyard, no longer used but the last rest for most of the Capital's former leaders and heroes. Its catacombs were carved into Undermountain, which is also the reason why it was later abandoned when it was found that it started to connect to the haunted parts of the Undermountain labyrinth.~
IF~~THEN REPLY~I fully agree with you - it sounds like the place to inspect for what we search. Where is it exactly?~GOTO WDGravey2
IF~~THEN REPLY~Sounds like an interesting place for sure, but the Collector needs fresh material for his purpose, not bodies fallen to dust since centuries.~GOTO WDGravey3
END

IF~~THEN BEGIN WDGravey2
SAY~It is just east of Mystra's temple.~
IF~~THEN DO~AddJournalEntry(@2050,QUEST)~EXIT
END

IF~~THEN BEGIN WDGravey3
SAY~There are two issues, <CHARNAME>. Even if he gets his artefacts elsewhere he needs to preserve and store them quickly. The old catacombs have a very special icy climate from the sea winds and a system of air funnels said to be constructed by Halaster himself. It preserves the bodies buried there and of course his new stuff as well.~
=~Secondly it is close to his activities but still unvisited by the people due to its history and reputation.~
IF~~THEN REPLY~I fully agree with you - it sounds like the place to inspect for what we search. Where is it exactly?~GOTO WDGravey2
END

IF~~THEN BEGIN Meliunp
SAY~We need a quiet place outdoors where we can observe the constellations. If you rest with the party we can finish our studies meanwhile.~
IF~~THEN REPLY~We will soon find that time for you.~EXIT
IF~~THEN REPLY~I think that can be arranged shortly.~EXIT
END

IF~~THEN BEGIN CanCear1
SAY~I think that Cerameon's journal may contain details about her fight against the eastern hordes long ago. Details that may be helpful to us.~
IF~~THEN REPLY~I have never heard about that book during my young days there.~DO~SetGlobal("AskedcandV","LOCALS",2)~GOTO CanCear2
IF~~THEN REPLY~Helpful in which way?~DO~SetGlobal("AskedcandV","LOCALS",2)~GOTO CanCear2
END

IF~~THEN BEGIN CanCear2
SAY~Your tutors have probably thought the tome was too precious for a young rascal like you, even though you might have liked the adventures.~
=~The reason I want to look for it is the secret supply system her enemies used in these days, a system of portals and remote reservoirs they used to supply their troupes to the Realms from the far east in no time.~
=~If our suspicions are correct, we face a foe that is well aquainted in even the oldest lore and wisdom. We must know what he or they know.~
IF~~THEN REPLY~I see your point - it is worth a try.~EXIT
IF~~THEN REPLY~My former home is worth a visit anyway, maybe we can find other lore as well that may be helpful.~EXIT
IF~~THEN REPLY~If such information is at Candlekeep we must at least assure it is save from the hands of our enemies.~EXIT
END

IF~~THEN BEGIN TethRoa
SAY~West of the Church near Waterdeep's East Market we can access the Overland Road to Tethir. If we are lucky we can hitch a ride with a caravan.~
IF~~THEN REPLY~Worth a try, I'd say.~EXIT
IF~~THEN REPLY~Time is pressing, I would risk your parcel this time.~EXIT
END

IF~~THEN BEGIN MornTrav1
SAY ~Mornbryn's Shield lies east of Eversuit. We should go to the Friendly Arm and then travel east following the river Surbrin.~
IF~~THEN REPLY~Another long dreadful journey (Sigh.)~DO~SetGlobal("RoadMorn","LOCALS",1)~EXIT
IF~~THEN REPLY~Another long journey (Smile.) And still it will pass too quickly in such wonderful company.~DO~SetGlobal("RoadMorn","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SumCamp1
SAY~Well, the old place is referred to by many as *Ghotal's Summer Camp*. It is an old frontier fortress from a long forgotten northern kingdom, unused since centuries.~
IF~~THEN REPLY~Just a ruin then?~GOTO SumCamp2
IF~~THEN REPLY~Why has it Ghotal's name then?~GOTO SumCamp2
END

IF~~THEN BEGIN SumCamp2
SAY~It was unused for a long time until General Ghotal used it to assemble his orc forces to defend their Clan's Land against the southerners. It was his last camp in the summer before he marched to the Fields of Death and the historic battle we know about.~
=~We might reach it from the Friendly Arm if we want to march there, otherwise I am sure Nib Jansen can take us there in his skyship.~
IF~~THEN DO~SetGlobal("RTFoundIce","GLOBAL",9) RevealAreaOnMap("RTF030")~EXIT
END

IF~~THEN BEGIN Balod1
SAY~I am impressed in a way. He fought against Cerameon and they both lost a hand or similar in that fight. For seven hundred years he was separated from his kin and any chance to perform any demonic action.~
=~All of it has changed him. We need him to go on and he needs us. Other than his kin normally acts he seems to accept this fact and come to reasonable conclusions.~
IF~~THEN REPLY~I'm still listening, counsellor. Anything else.~DO~SetGlobal("BalowolQ","LOCALS",1)~GOTO Balod2
END

IF~~THEN BEGIN Balod2
SAY~The red wizards of old have chosen him for the mission against Cerameon for some reason, they must have known his potential, maybe even tried to train him in some way.~
=~He on the other side must hate Thay deeply. They left him here after their plan failed. It may be quite useful to have him on our side for the further march.~
IF~~THEN REPLY~Somehow you seem to be quite impressed by that monster. It's time to get you in perspective again. He is a monster and a demon after all. His kin changes temper and alliance at a whim. Your plan to cross the lava will work with his dead body just as well.~GOTO Balod3
IF~~THEN REPLY~If you are right - and I still have my doubts - we will bind him even further to our side if we could find his lost claw. I can't imagine the lizards have devoured the thing.~GOTO Balod4
END

IF~~THEN BEGIN Balod3
SAY~Make sure his body falls correctly when you slay him. I still think it will be a bad mistake if we shed blood here unnecessarily. This area gives him every favour and he is a tough one. I rather would have him on our side than against us.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Balod4
SAY~That is a splendid idea. Such a claw has nothing on it that can rot through the ages. If we find it intact my skills will even allow me to restore him with it and by such bind him further to our side. ~
IF~~THEN EXIT
END

IF~~THEN BEGIN Pellrev1
SAY~She did not have to - it was her own will and choice.~
=~She is very special among the Chosen of Mystra for we are together for so long and she is really my true friend and companion. She has done her fair amount of duties for the different incarnations of Mystra, as you might have learned from her. The panther avatar allows her to accompany the two of us.~
=~(Smiles) She loves us and still thinks we need a kind celestial guardian - and I would really miss her as well. By the way she performs her duties exemplary.~
IF~~THEN REPLY~I am glad to hear it is her free choice and not the cruelty of her godly mistress, which I had not expected anyway.~DO~SetGlobal("Pellrevrt","LOCALS",1)~EXIT
IF~~THEN REPLY~Maybe she will grant us the pleasure of her human form once we return to Celestia. There is so much she could tell us of the adventures of her long existence before we met.~DO~SetGlobal("Pellrevrt","LOCALS",1)~EXIT
END

IF~~THEN BEGIN RetThay1
SAY~We should inquire with my grandmother whether she has heard something about Kelemvor's pending decision concerning Velsharoon.~
IF~~THEN REPLY~Right, his endless supply of undead and clones for Szass Tam will still be a major hindrance to get close to the heads of this conspiracy.~EXIT
IF~~THEN REPLY~Ah, the Lich King - it would be good to hear that another player is eliminated before we go to Thay.~EXIT
END

IF~~THEN BEGIN RetThay2
SAY~I think we did all we could do over here in the west. The heads of the conspiracy are found in Thay and the mysterious Citadel.~
=~We may not have a chance to return to our homelands once we make the trip to Bezantur, so if you can think of any business you still have or friends you want to see, the time would be now.~
IF~~THEN REPLY~Do you recommend the use of the portal from Ravencrest again or should we take the overland trip?~GOTO RetThay3
IF~~THEN REPLY~As I plan to take the portal passage from Ravencrest instead of the cumbersome trip over the plains, we can easily make one or two small diversions on the way to look after some unfinished business.~EXIT
END

IF~~THEN BEGIN RetThay3
SAY~I would prefer to enter Thay secretly again via the portal. And while we go down to Amkethran and Ravencrest we may as well squeeze in a stop or two in case you get some idea of what you forgot to finish anywhere on the way.~
IF~~THEN REPLY~A good idea, my love. Let's go.~EXIT
END

IF~~THEN BEGIN Godsnow1
SAY~<CHARNAME> of Candlekeep?~
IF~Global("Sanrompath","GLOBAL",1)~THEN REPLY~It is good that you call me such and not the God of Love and Hope. Do you really think we can keep up our disguise down here for long?~GOTO Godsnow2
IF~Global("Sanrompath","GLOBAL",2)~THEN REPLY~It is good that you call me such and not the Goddess of Love and Hope. Do you really think we can keep up our disguise down here for long?~GOTO Godsnow2
END

IF~~THEN BEGIN Godsnow2
SAY~Yes, we can. Try to look at the situation like an outsider who had never met any of us in that time a decade ago.~
=~Many have heard about <CHARNAME> of Candlekeep's heroic deeds on the Sword Coast of course, but few have seen the mystic figure in real life. The adventures in Amn and especially in Suldanessalar are known to few outside of the elvish community.~
=~Finally - the Bhaal war of course was an historic event of some dimension but actually few really know about the identity of the key players and only those present at your ascension know who the Bhaalspawn was who finally ended the war and overcame his father's taint to emerge as the God of Love and Hope.~
IF~~THEN REPLY~And what about yourself?~DO~SetGlobal("Godsnow","LOCALS",1)~GOTO Godsnow3
END

IF~~THEN BEGIN Godsnow3
SAY~The adventures of Sandrah of Waterdeep alongside the famous <CHARNAME> are bard's tales by now. Nothing is known about what became of her afterwards.~
=~And Mystra is Mystra still. Only a handful of Celestials and humans are aware of the fact that there has been a change of the guard. The changes that Mystra has initiated after the end of the Bhaal war are largely accounted to her relationship with the new Celestial - and rightfully so - but not to a change of persona.~
IF~~THEN REPLY~So we are famous on the one hand but still pretty unknown in our mortal avatars.~EXIT
IF~~THEN REPLY~Probably you're right. I wouldn't have recognised Cyric if I had met him on the street until I made the unpleasant acquaintance during our adventures.~EXIT
END

IF~~THEN BEGIN  NerkiHi1
SAY~I always knew you are a disguised genius. Please, let us know.~
IF~~THEN REPLY~A strange trader who called himself The Collector we encountered him in Amn several times.~GOTO NerkiHi2
END

IF~~THEN BEGIN  RTFIren1
SAY~It will not be that dramatic, <CHARNAME>, even if it will still recall some unpleasant memories. Joneleth has returned to his old place in Athkatla and some semi-retirement down there.~
IF~~THEN REPLY~You think we can walk into that place just like that?~DO~SetGlobal("RTFIren","GLOBAL",1)RevealAreaOnMap("ar0020")~GOTO RTFIren2
END

IF~~THEN BEGIN  RTFIren2
SAY~He is not known to welcome visitors. On the other hand he will need some connections and supplies from the outside world.~
IF~~THEN REPLY~The only ones who would do such a thing will probably be our old friends in that town, the Shadow Thieves.~GOTO RTFIren3
IF~~THEN REPLY~I doubt that the authorities in the council are were happy about his presence.~GOTO RTFIren4
END

IF~~THEN BEGIN  RTFIren3
SAY~Guildmaster Havarian is a practical man and money still opens his doors and supplies to anyone. If he sees a profit to deal with Irenicus he will not hesitate. Even if somebody else is involved it will not be without his knowledge.~
IF~~THEN REPLY~Saemon Havarian!! Let's pay the squirrelling scoundrel a visit then.~GOTO RTFIren5
END

IF~~THEN BEGIN  RTFIren4
SAY~Governor Nalia de'Arnise is a tolerant ruler, as long as he does not disturb her citizens she will let him dwell in his *Chateau Irenicus." I doubt that she and the guards have taken the trouble to find access to his place.~
IF~~THEN REPLY~Nalia...she'll be out feeding the poor. You are right, she'll probably ignore the mage as long as he does not cause problems. Other suggestions?~GOTO RTFIren3
END

IF~~THEN BEGIN  RTFIren5
SAY~Something else, dear?~
IF~~THEN REPLY~How do we get to Athkatla in the first place?~GOTO RTIren6
IF~~THEN REPLY~Can your parcel transport us to Athkatla quickly?~GOTO RTIren6
IF~~THEN REPLY~Oh, nothing, just a reminder how much I enjoyed those adventures - in your company...and travelling ~EXIT
END

IF~~THEN BEGIN  RTIren6
SAY~My parcel could take us but I recommend to use it with utmost care this time. Travelling through the intra-plane always leaves our signature that can be traced. You know we face opponents this time that have the godly abilities to see those traces like a ranger sees an animal's trail.~
=~We have the option to return to Waterdeep and go through the passage once more to Nib's skyship. He can get us to the town with less attention drawn to us.~
=~We can also find transportation with the harbour master in Waterdeep, for a price of course.~
=~The most secretive way would be to travel the roads in the old fashioned way.~
IF~~THEN REPLY~I would say we use our feet and take the chance to see how the Realms have developed since we last travelled them together.~EXIT
IF~~THEN REPLY~I would risk the magic despite your warning - we can thus act quicker than our foe may expect us.~EXIT
IF~~THEN REPLY~What would be your preference, my counsellor?~GOTO RTIren7
END

IF~~THEN BEGIN  RTIren7
SAY~I think we are under no pressure at the moment having prevented the initial clash in the Neutral Zone. We are back in our beloved home and so much has changed that will be worth exploring by foot.~
IF~~THEN EXIT
END

IF~~THEN BEGIN RTFTargt1
SAY~*She embraces you kindly.* As close as we are, aiming at one of us would always affect the other, would it not? *She kisses you.*~
=~But even with cold analytic skills I would come to the same result. What makes us the target of our foe's envy and hatred is our close relationship. We have worked together in a way that is not common among the celestials, who have their alliances from time to time with each partner having his or her personal gain but not a partnership like ours.~
IF~~THEN REPLY~That is an aspect to be considered but not really an answer.~DO~SetGlobal("RTFWhy1","GLOBAL",1)~GOTO RTFTargt2
END

IF~~THEN BEGIN RTFTargt2
SAY~To get to the answer we must probably slice the alliance or our opponents into their parts, as everyone will have their own different motivation.~
IF~~THEN REPLY~Cyric is definitely after me and the essence of Bhaal that he claims for himself as the reigning god of murder.~GOTO RTFTargt3
IF~~THEN REPLY~Talos has always quarrelled with us since our adventures on the Sword Coast. It's hard to tell if he's in it just out of principle or for a more dedicated reason.~GOTO RTFTargt4
IF~~THEN REPLY~That Supra Lich Velsharoon sounds to me like one of your guys rebelling against his goddess and her open agression towards necromancy.~GOTO RTFTargt5
END

IF~~THEN BEGIN RTFTargt3
SAY~Right, the Throne of Bhaal is known to be a most uncomfortable piece of furniture.~
IF~~THEN GOTO RTFTargt6
END

IF~~THEN BEGIN RTFTargt4
SAY~Right, it would be strange NOT to find the Storm Lord in any alliance against us.~
IF~~THEN GOTO RTFTargt6
END

IF~~THEN BEGIN RTFTargt5
SAY~I admit that - as Mystra - I have not seen and counteracted this growing danger early enough.~
IF~~THEN GOTO RTFTargt6
END

IF~~THEN BEGIN RTFTargt6
SAY~However, none of those forces we have identified yet would be in a position to forge such an alliance of much different colours. Add to this the fact that we have hints that the whole thing originates from the Prime. There is a puppet master pulling his strings from the background. One powerful enough to involve even gods and demi-powers into his machinations.~
IF~~THEN REPLY~Who might that be?~GOTO RTFTargt7
IF~~THEN REPLY~Szass Tam already tried it similarly with your grandmother.~GOTO RTFTargt7
END

IF~~THEN BEGIN RTFTargt7
SAY~We have the mortal actors as well, <CHARNAME>, the former cowled wizards, the Collector, Liches and wizards from Thay.~
IF~~THEN REPLY~The cowls were already referring to their new master in the Citadel, whatever that means.~GOTO RTFTargt8
END

IF~~THEN BEGIN RTFTargt8
SAY~The Zulkir residing in the Thaymount, in a citadel founded by an ancient lizard folk even before the time of Netheril's fall, full of the most secret and powerful arcane knowledge you can imagine. ~
=~Enough to produce armies of clones and other thralls, enough to challenge even the gods. Enough to attempt again where Karsus had failed and provoked Netheril's destruction.~
IF~~THEN REPLY~*You see how her imagination starts to construct and re-construct the pieces of her ancient lore. You will give her time to analyse her facts and ask about the results later.*~EXIT
END

IF ~~THEN BEGIN Kars1
SAY~Karsus ...the destruction of Netheril and Mystryl...the split of the Weave for the true and the shadow Weave...~
IF~~THEN REPLY~That was VERY long ago, wasn't it?~DO~SetGlobal("RTFWhy1","GLOBAL",2)~GOTO Kars2
END

IF~~THEN BEGIN Kars2
SAY~Netheril, the floating city, was the ancient centre of wisdom, technology, and arcane knowledge. Among them all Karsus was the most powerful sorcerer seeing himself almost equal to the gods.~
=~Karsus tried to steal the divinity from the keeper of the Weave Mystryl - in her last resort Mystryl sacrificed herself to prevent Karsus' success. AO himself separated the shadow weave which he gave to Shar and established the first Mystra as the Guardian of the Weave and All Magic.~
IF~~THEN REPLY~At Candlekeep I learned that all magic departed the Netheril afterwards and the city itself crashed into the Anauroch desert.~GOTO Kars3
END

IF~~THEN BEGIN Kars3
SAY~Through the ages there have always been mortals following similar schemes.~
IF~~THEN REPLY~Irenicus aiming for the power of the Seldarine...~GOTO Kars4
END

IF~~THEN BEGIN Kars4
SAY~A valid example - another one is Szass Tam. We saw his early attempts to manipulate the Shadow Weave in order to weaken Mystra and the True Weave. He cannot have continued his efforts without some celestials to assist him - whether she is in leage with him or his foe, we must add Shar to the equation.~
IF~~THEN REPLY~I begin to understand why AO had the need to get us out of Celestia. With all those powers involved the effect of a clash would really cause massive destruction throughout the whole multiverse.~DO~ClearAllActions()SmallWait(2)SetInterrupt(FALSE)
TextScreen("RTPL2")AddJournalEntry(@1776,QUEST)~EXIT
END

IF~~THEN BEGIN Odedisc1
SAY~This is indeed puzzling. We should apply our usual method to look at the details we have learned one by one.~
IF~~THEN REPLY~The Odesseirons are obviously under siege of the authorities.~GOTO Odedisc2
IF~~THEN REPLY~The family is missing, just leaving behind a child and an old servant.~GOTO Odedisc2
IF~~THEN REPLY~What is Candrella's relation to the family. Her daughter is here alone.~GOTO Odedisc2
IF~~THEN REPLY~The temple of Cyric, which used to be Bhaal's is here, together with that portal installation. ~GOTO Odedisc2
IF~~THEN REPLY~Where is our old *friend* Edwin these days?~GOTO Odedisc2
END

IF~~THEN BEGIN Odedisc2
SAY~Let me tell you what my lore knows about the family history here in Thay.~
=~The patriarch of the family, Tharchion Homen Odesseiron of Surthay, some time ago ventured on an enterprise against Rashemen that not only has failed, but has also put him in opposition against Szass Tam and his trusted. The family seems to have fled or gone underground or, like Edwin, has gone abroad.~
=~The last I know about Edwin himself is that he has returned to Thay about three years ago, but obviously he was not able to restore his relationship with the authorities. He might as well be hiding at this moment - maybe he will venture to come out should he learn about our presence here.~
IF~~THEN REPLY~This somehow contradicts the presence of the portal right here on their premisses.~DO~ SetGlobal("RTOdess","GLOBAL",2)~GOTO Odedisc3
END

IF~~THEN BEGIN Odedisc3
SAY~On first glance I would agree. Still, we must consider that the installation itself is very old, coming from an age where power constellations and politics where quite different from what we find today.~
=~It might very well be that the Odesseirons of today have nothing to do with Szass' usage of what is located here on their grounds. Maybe it is a factor that has added to the tension between the parties to some extend.~
IF~~THEN REPLY~Do you know who Lucinda's father is?~GOTO Odedisc4
IF~~THEN REPLY~What is Candrella's position in that?~GOTO Odedisc4
END

IF~~THEN BEGIN Odedisc4
SAY~A good question. Candrella's private life seems to be connected in some way to the Odesseirons. I hope we can get in contact with her soon. She is our key to resolve a lot of issues in this case.~
IF~~THEN REPLY~The tension between the powers here in Thay may work for us in a way. We need to learn more to find a possible ally in some people here, the Red Hoods or someone else.~EXIT
END

IF~~THEN BEGIN  AfterSam1
SAY~We gained a lot of information openly and between the lines, <CHARNAME>.~
IF~~THEN REPLY~Another portal to seek and destroy is in the Wood of Sharp Teeth.~DO~
SetGlobal("ThayLesson","LOCALS",1)~GOTO Sharpw1
IF~~THEN REPLY~The alliance Szass Tam has forged is powerful if not overpowering unless we find a way to split it.~DO ~SetGlobal("ThayLesson","LOCALS",1)~GOTO AfterSam2
IF~~THEN REPLY~We learned this and that but not where Szass' Citadel is.~DO~
SetGlobal("ThayLesson","LOCALS",1)~GOTO AfterSam2
END

IF~~THEN BEGIN Sharpw1
SAY~I agree, this should be one of our future steps once we returned to the Sword Coast.~
IF~~THEN GOTO AfterSam2
END

IF~~THEN BEGIN  AfterSam2
SAY~We may not even want to face our foe directly at the moment nor do I think it is wise to enter the Citadel, even if we could.~
IF~~THEN REPLY~What do you propose instead?~GOTO AfterSam3
END

IF~~THEN BEGIN  AfterSam3
SAY~Let us continue to attempt contacting the Red Hoods. Once we have finished our more or less secret investigation here in Thay I would think it is time to return to the Sword Coast, probably with Saemon's help.~
IF~~THEN REPLY~We do not strike against Szass yet?~GOTO AfterSam4
IF~~THEN REPLY~Return...run away? Well, you surely have a reason to recommend such!~GOTO AfterSam4
END

IF~~THEN BEGIN  AfterSam4
SAY~This Academy that Samas mentioned disturbs me. I think his analysis was correct, its purpose is an over production of mages that all at once would try to drain the Weave in the hour of utmost need. It must be destroyed together with Xephistagoras.~
=~Secondly, you have heard which phalanx of opponents we face, my love. You already proposed to break it up a bit, but for that we need our own allies. I think we should consult again with my grandmother on that subject.~
IF~~THEN REPLY~So it's the Red Hoods now and then a return to the West.~EXIT
IF~~THEN REPLY~We may leave for now but we will return and succeed. But first let us find those Red Hoods.~EXIT
IF~~THEN REPLY~Sounds like a solid plan to me, except we may not use Saemon for the return, I don't trust him.~EXIT
IF~~THEN REPLY~Sounds like a solid plan to me, even Saemon's ship sounds better than a march all the way back.~EXIT
END

IF~~THEN BEGIN ColRol1
SAY~The future ex-Chief-Inquisitor I would assume, after what he did for us.~
IF~~THEN REPLY~He pursued and observed us, brought us to court, pleaded before the court for our execution - pfft, and then let us escape?~DO~SetGlobal("Colanrole","LOCALS",1) ~GOTO ColRol2
IF~~THEN REPLY~He persued and observed us, brought us to court, pleaded before the court for our execution - pfft, and then let us escape? It's a trap, isn't it, he wants us to find the Red Hoods for him.~DO~SetGlobal("Colanrole","LOCALS",1) ~GOTO ColRol2
END

IF~~THEN BEGIN ColRol2
SAY~He is a loyal and competent man, <CHARNAME>, not a lackey of any ruler or government. He told the truth when he said he worked for justice in Thay.~
IF~~THEN REPLY~You mean he's one of the Red Hoods himself?~GOTO ColRol3
END

IF~~THEN BEGIN ColRol3
SAY~If not by oath than at least by attitude, I would say. Now that he helped us to find our course around town, the Red Hoods may also be his future. He has none any more with the government.~
=~His arresting us has served its purpose - it brought us into the building to get the key and it also helped us to disappear from the view before the red wizards really get too suspicious about our true nature and intention.~
IF~~THEN REPLY~I wish you were right, my love. Anyway I will keep my eyes wide open just in case there is some betrayal afoot.~EXIT
IF~~THEN REPLY~Perhaps we will see him again to discuss those questions in person.~EXIT
END


IF~~THEN BEGIN Larlhint1
SAY~I do, in a way Larloch has always been supported by and supporter to the Weave. I can provide you with some information before we meet him. First we must go however to the North East Waterdeep Quarters. Passing the church and continuing north there is a small and seldom used path out of town that will lead us on.~
IF~~THEN REPLY~Let us start our journey and later I will ask you more about Larloch.~DO ~SetGlobal("LarlHint","LOCALS",1)~EXIT
IF~~THEN REPLY~While we are at it, tell me more about the lich we will meet.~GOTO Larlhint2
END

IF~~THEN BEGIN Larlhint2
SAY~Larloch, the Shadow King, not to be confused with the King of Shadows, is the last surviving Netherese arcanist-king, one of the oldest non-draconic beings in Faerun, who ruled over his flying city for centuries and abandoned it before Karsus's Folly. Then a lich by his own process, Larloch amassed an arsenal of spells, magic items, and servants. The Shadow King rules the Warlock's Crypt and its inhabitants, many liches from Netheril, vampires, wights, and lesser undead.~
=~Larloch possessed incredible power and intelligence, but human assessment would also declare him as insane.~
IF~~THEN REPLY~Which means we must prepare for possible attacks from his minions until we can convince the master of our allignment.~DO ~SetGlobal("LarlHint","LOCALS",2)~GOTO Larlhint3
END

IF~~THEN BEGIN Larlhint3
SAY~Exactly, once he recognises me as Mystra, we should be able to get his agreement.~
=~Having survived the cataclysm that resulted from the death of Mystryl, Larloch values the goddess of magic - and the Weave she protects - very highly. Probably the only thing that can draw him out of his studies would be an imminent threat to Mystra or the Weave, like we have it currently. Larloch knows that the destruction or malfunction of the Weave would mean the end of his research and the destruction of all he had accomplished in the last few millennia.~
=~He also received many boons from Mystra - in exchange for disseminating many of his new discoveries, all incarnations of Mystra granted him great freedom in the research of mighty spells and the creation of powerful artefacts. In some ways the magic he works rivals that of ancient Netheril itself. ~
IF~~THEN REPLY~Now I understand why you had proposed his involvement. Szass Tam will receive quite a shock if he faces the Shadow King.~EXIT
IF~~THEN REPLY~If we can persuade him to ally with us we will have quite a mighty supporter on our side. Szass Tam will be badly surprised.~EXIT
END

IF~~THEN BEGIN OwnAlly1
SAY~What would you propose, <CHARNAME>?~
IF~~THEN REPLY~Baldur's Gate owes me for releasing them of Sarevok.~GOTO OwnAlly2
IF~~THEN REPLY~I count on Ellesime and Suldanessalar.~GOTO OwnAlly3
IF~~THEN REPLY~We aided a number of towns in Amn out of their trouble.~GOTO OwnAlly2
END

IF~~THEN BEGIN OwnAlly2
SAY~We should not involve the mortals of the prime into this struggle of the celestials.~
IF~~THEN REPLY~Ellesime and Suldanessalar are different, she is descendent of the Seldarine herself.~GOTO OwnAlly3
END

IF~~THEN BEGIN OwnAlly3
SAY~The power of the Seldarine has returned to Suldanessalar...still...well, it is your decision, <CHARNAME>, we might try it.~
IF~~THEN DO~SetGlobal("Suldatry","LOCALS",1)~EXIT
END

IF~~THEN BEGIN Cit5Ent1
SAY~Through the portal beneath the former Bhaal temple if we could get Szass' hand to open it - or as his prisoners.~
IF~~THEN REPLY~In both cases we need to lure him out of his fortification first.~DO~SetGlobal("CitEntpl","GLOBAL",1)~GOTO Cit5Ent2
END

IF~~THEN BEGIN Cit5Ent2
SAY~He wants me, he wants Mystra, so I am the logical bait for him - just as you are the bait for Cyric. Let us see which fish bites first.~
IF~~THEN REPLY~Don't forget we are out to catch monstrous sharks, little glow worm.~GOTO Cit5Ent3
IF~~THEN REPLY~They may only want to bite if the bait wiggles and teases in some way.~GOTO Cit5Ent3
IF~~THEN REPLY~Without any risk from our side we will not advance. What do you suggest?~GOTO Cit5Ent3
END

IF~~THEN BEGIN Cit5Ent3
SAY~We must provide them with a reason to make any of them see the necessity to act for themselves instead of sending another of their endless cohorts.~
=~We must hurt them here in the heartland of Thay in a way that endangers their power and reputation in Bezantur.~
IF~~THEN REPLY~You seem to have a plan, counsellor?~GOTO Cit5Ent4
END

IF~~THEN BEGIN Cit5Ent4
SAY~Legion Commander and Autharch Ithrash is the local focus of power and Szass' representative in this region. His removal will require their action as those lizard elites and undead forces would be out of control otherwise.~
=~Ithrash is still searching some thieves that have as well deeply hurt his pride and reputation if I am not mistaken.~
IF~~THEN REPLY~Let us stick out our fishing rod's then. Let us start at his house we already burgled once.~EXIT
IF~~THEN REPLY~Are we not escaped criminals from Bezantur's court? A visit to the government district will probably alert the Legion and its leader.~EXIT
END

IF~~THEN BEGIN InnLastV1
SAY~I proposes to travel one last time to the Friendly Arm Inn to say goodbye to our friends and companions and celebrate our success before we part with them.~
IF~~THEN REPLY~A brilliant idea, my love.~EXIT
IF~~THEN REPLY~I will take a long detour to enjoy the Sword Coast once more.~EXIT
END

//Plot1

IF~Global("RTFTwoOptionsPlot1","GLOBAL",1)~THEN BEGIN TwoOptPlot11
SAY~We have two options now, <CHARNAME>, we may either hear out the other side before we make a decision or we can enter the Hornswamp passage right away.~
IF~Global("RTFShauInfo","GLOBAL",1)~THEN REPLY~I plan to go through the passage and report to Shar-Teel with all the information we will have by then.~DO~SetGlobal("RTFTwoOptionsPlot1","GLOBAL",2)~EXIT
IF~Global("RTFSharInfo","GLOBAL",2)~THEN REPLY~I plan to go through the passage and report to Shauhana with all the information we will have by then.~DO~SetGlobal("RTFTwoOptionsPlot1","GLOBAL",2)~EXIT
IF~Global("RTFShauInfo","GLOBAL",1)~THEN REPLY~Let us first talk to Shar-Teel to get a complete picture.~DO~SetGlobal("RTFTwoOptionsPlot1","GLOBAL",2) SetGlobal("SanTravel","GLOBAL",303)~EXIT
IF~Global("RTFSharInfo","GLOBAL",2)~THEN REPLY~Let us first talk to Shauhana to get a complete picture.~DO~SetGlobal("RTFTwoOptionsPlot1","GLOBAL",2) SetGlobal("SanTravel","GLOBAL",302)~EXIT
END

IF~Global("Scar","RTF004",2)~THEN BEGIN Scarfound
SAY~Scar? He is dead for a decade already, even as this body is dead less than a day?...~
IF~~THEN DO~SetGlobal("Scar","RTF004",3)~EXIT
END

IF~Global("Brage","RTF004",2)~THEN BEGIN Bragefound
SAY~Brage? He is dead for ten summers already, even as this body is not yet frozen regardless of the cold out here?...~
IF~~THEN DO~SetGlobal("Brage","RTF004",3)~EXIT
END

IF~Global("FoundStuffClon","GLOBAL",1)~THEN BEGIN RTFPlot1Ide1
SAY~Let us see what we have gathered so far, <CHARNAME>.~
IF~~THEN REPLY~Freshly killed bodies of people long, long dead according to our knowledge.~GOTO RTFPlot1Ide2
IF~~THEN REPLY~A battlefield with orcs and humans but neither being sent from Shauhana nor Shar-Teel.~GOTO RTFPlot1Ide2
IF~~THEN REPLY~A battlefield without a trace of blood, instead bottles full of a mysterious liquid.~GOTO RTFPlot1Ide2
END

IF~~THEN BEGIN RTFPlot1Ide2
SAY~Absolutely correct, my love. Corpses of people who died a decade ago but obviously not any of those undead we have known before. A battlefield full of orcs and people from the south, but none of the parties have send their troupes up here by now.~
=~The combatants are all dead without visible injuries and without the masses of blood you would expect from such a battle. Certainly they are not victims of those yeti who have just come down from the mountains after the killing to get their share of the bodies.~
=~And finally this strange liquid that all of the creatures had on them...~
IF~~THEN REPLY~Any conclusions yet, my counsellor?~DO~SetGlobal("FoundStuffClon","GLOBAL",2)~GOTO RTFPlot1Ide3
END

IF~~THEN BEGIN RTFPlot1Ide3
SAY~(Laughs roughly) Not more than you see, <CHARNAME>. Nothing here is what it is supposed to make us think. The battle has been no battle even if there are dead bodies. Those bodies are not the people we are supposed to think they are. They are neither undead or summoned creatures - they are real and they have lived and are now dead. What killed them I cannot say - maybe the strange substance has something to do with it.~
IF~~THEN REPLY~However, it appears to me that someone tries hard to get the North and South to move into the Neutral Zone and to make them believe that blood has been spilled already.~GOTO RTFPlot1Ide4
END

IF~~THEN BEGIN RTFPlot1Ide4
SAY~I have taken some probes from the bodies and also a sample of the liquid. We need a laboratory to analyse these items, I cannot do it out here. Old Thalantyr at High Hedge should be able to assist us. I can see only one more thing we can do out here...~
IF~~THEN REPLY~...that's what?~GOTO RTFPlot1Ide5
IF~~THEN REPLY~The witness, if he is really one?~GOTO RTFPlot1Ide5
END

IF~~THEN BEGIN RTFPlot1Ide5
SAY~Somewhere around here must be that trader's hut. We should pay the only witness of those events a visit, I propose.~
IF~~THEN EXIT
END

IF~Global("Addscout","RTF04h",2)~THEN BEGIN SharScoutHut1
SAY~Scouts from the Waterdeep Elite of Shar-Teel. They did not make it to Shauhana with their message. This *trader* has a few things to explain.~
IF~~THEN REPLY~If we find him at all...anyway there is a trapdoor that may hide some further revelations.~DO~SetGlobal("Addscout","RTF04h",3)~EXIT
END

IF~Global("RTFFoundLab402","GLOBAL",2)~THEN BEGIN HornLab1
SAY~A secret laboratory in a remote mountain range, again those liquids. Our trader *friend* seems to have a number of secrets for us to unveil.~
IF~~THEN REPLY~Those terrible jars down there, just like Irenicus had them in his dungeon beneath Athkatla.~DO~SetGlobal("RTFFoundLab402","GLOBAL",3)~GOTO HornLab2
END

IF~~THEN BEGIN HornLab2
SAY~The picture starts to get its contures. With what we have I highly recommend that we talk with either Shauhana or Shar-Teel so peace can be maintained between the two. Now that we have seen what has happened they can exchange messengers and trade again, I guess.~
IF~~THEN REPLY~And we should go after that Nerkio guy wherever he may have gone.~GOTO HornLab3
END

IF~~THEN BEGIN HornLab3
SAY~I propose to see Thalantyr as soon as we have delivered our message to our friends. I have a suspicion that I do not want to issue until I have heard another expert's opinion on it. If I am not completely mistaken the answer will provide us with some insight into what is really behind this intrigue - and why we are down here on the Prime to investigate it.~
IF~~THEN REPLY~Well. let us go to Shauhana's Palace.~EXIT
IF~~THEN REPLY~Well. let us see the Waterdeep Commander then.~EXIT
END

IF~Global("RtFReasonSent","LOCALS",1)~THEN BEGIN WhySent1
SAY~I wonder who is behind all this?~
IF~~THEN REPLY~Irenicus maybe - and someone to support him?~GOTO WhySent2
IF~~THEN REPLY~Why had gods to be sent down to Faerun for such a lousy little intrigue?~GOTO WhySent2
END

IF~~THEN BEGIN WhySent2
SAY~There must be much more to it than meets the naked eye instantly.~
=~I remember a story that started with a bit of tainted ore and ended in a major clash of mighty Bhaalspawns and the birth of a new god.~
IF~~THEN REPLY~It's a trap to get us down to the Prime where we are vulnerable. But AO himself made us go here...~GOTO WhySent3
END

IF~~THEN BEGIN WhySent3
SAY~Hm, our foe are as vulnerable here as we are. And never forget - we are at home and we have a lot of friends and allies among the mortals.~
=~We will know more once we have analysed the samples I took from the dead on the Hornswamp and this strange liquid we found. The glass tubes in the secret laboratory have given me a hint but I want to confirm it with Thalantyr urgently.~
IF~~THEN DO~SetGlobal("RtFReasonSent","LOCALS",2) AddJournalEntry(@1730,QUEST) EraseJournalEntry(@1721)~EXIT
END

IF~Global("RtFReasonSent","LOCALS",3)~THEN BEGIN NerkiHi3
SAY~Call me blind and stupid, <CHARNAME>...at least sometimes. This trader we look for, Nerkio...~
IF~~THEN REPLY~I am at least as blind and stupid as you are. I cannot recall who he was.~GOTO NerkiHi2
IF~~THEN REPLY~You mean, you remember now who he was?~GOTO NerkiHi2
END

IF~Global("RTDockSolution","GLOBAL",1)~THEN BEGIN DockOrph
SAY~It is not just the information we need from Saemon but also the benefit of Athkatla we must have in mind when solving this problem between Nalia and the Guild.~
IF~~THEN REPLY~Probably one will not be feasible without the other anyway.~GOTO DockOrph2
IF~~THEN REPLY~I would be puzzled if my clever counsellor has no solution to propose.~GOTO DockOrph2
IF~~THEN REPLY~Give both sides enough money and they forget about it all. Nalia can feed the poor and Saemon can buy himself a harem or whatever.~GOTO DockOrph2
END

IF~~THEN BEGIN DockOrph2
SAY~I was thinking of the unused Guild building in the docks, <CHARNAME>. It would not be a loss for Saemon to give it to the community for a good use and Nalia could establish a charitable building for the poorer quarters.~
IF~Global("PlayerThiefguild","GLOBAL",1)~THEN REPLY~As far as I know it's still my guild, I never gave it up.~GOTO DockOrph3
IF~~THEN REPLY~Brilliant, they can make it a hospital or orphanage or such.~GOTO DockOrph3
IF~~THEN REPLY~I like the idea, everybody wins, nobody looses.~GOTO DockOrph3
END

IF~~THEN BEGIN DockOrph3
SAY~I can assure you that Nalia will accept the deal right away, especially if we tell her that the Shadow Thieves agree to pay half of the cost of it.~
IF~~THEN REPLY~Will Saemon agree to that?~DO~SetGlobal("RTDockSolution","GLOBAL",2)~GOTO DockOrph4
END

IF~~THEN BEGIN DockOrph4
SAY~He will be reasonable enough, I guess. Being on the board of directors for the Charity House will be a first step towards Council representation.~
IF~~THEN REPLY~You could have been politician in another life. Sorry, I didn't mean to insult you.~EXIT
IF~~THEN REPLY~Let's try to sell this package to Saemon then.~EXIT
END

IF~Global("Sanfence","LOCALS",1)~THEN BEGIN FencHint1
SAY~Well, I think we have different options to inquire for the Collector now.~
IF~~THEN REPLY~Some fence around town or in the Thief's guild should have seen him.~DO~SetGlobal("Sanfence","LOCALS",2)~EXIT
IF~~THEN REPLY~Maybe it makes sense to inquire a bit at the local graveyard, like Irenicus suggested.~DO~SetGlobal("Sanfence","LOCALS",2)~EXIT
END

IF~~THEN BEGIN FencHint2
SAY~Well, I think we have different options, some fence around town or in the Thief's guild should have seen him or maybe he visits the graveyard at times to inquire for his *material*.~
IF~~THEN DO~SetGlobal("Sanfence","LOCALS",2)~EXIT
END

IF~Global("AskedcandV","LOCALS",1)~THEN BEGIN CanCearq
SAY~I hope we get to Cerameon's book before someone else does.~
IF~~THEN REPLY~What is your urgent interest to go to Candlekeep, my learned counsellor?~GOTO CanCear1
END

IF~Global("BalApp","rtf020",2)~THEN BEGIN UMOunWarn
SAY~The ancient graveyard is long unused, <CHARNAME>. It was found to be too dangerous by the Lords of Waterdeep as they soon found an existing connection to the Undermountain caves.~
IF~~THEN REPLY~What does that imply, my counsellor?~DO~SetGlobal("BalApp","rtf020",3)~GOTO UMOunWarn2
END

IF~~THEN BEGIN UMOunWarn2
SAY~The collector and his allies have chosen it because it is near to the capital but still undisturbed. But they are not alone down there, these levels hold some other monsters as well that live in these caves since ages.~
IF~~THEN REPLY~Let us prepare well, friends, but onward we must go.~EXIT
IF~~THEN REPLY~We best retreat for the moment and rest before we move deeper.~EXIT
IF~~THEN REPLY~It is the way we must follow, anyway, we should fill up our supplies before moving on.~EXIT
END

IF~Global("RTFoundIce","GLOBAL",3)~THEN BEGIN Icycold2
SAY~This must be a storage area for the Collector's artefacts to preserve them until required for the clone production. The production itself must be performed elsewhere hence the need to freeze the stuff for transport.~
=~*In a distance you hear the rumbling of heavy doors opening.*~
IF~~THEN REPLY~Time we find the man himself to answer all these questions, I would say.~DO~SetGlobal("RTFoundIce","GLOBAL",4)~EXIT
END

IF~Global("VelshAmb","ar10pb",2)~THEN BEGIN Velsh1
SAY~Did you see that ghostly mage figure, <CHARNAME>?~
IF~~THEN REPLY~Although he did nothing visible he seemed to be in command of those creatures.~GOTO Velsh2
IF~~THEN REPLY~His head was a crowned skull, wasn't it?~GOTO Velsh2
END

IF~~THEN BEGIN Velsh2
SAY~We saw a crowned laughing skull not so long ago.~
IF~~THEN REPLY~On those banners in the snake room below the Collector's hideout - what does it mean?~GOTO Velsh3
IF~~THEN REPLY~A crowned laughing lich skull on a black hexagon - it was in a book I once studied in Candlekeep - if I can only remember the context...~ GOTO Velsh3
IF~~THEN REPLY~A new face...eh, not really a face actually...a new player or the ally of one of our foe?~GOTO Velsh3
END

IF~~THEN BEGIN Velsh3
SAY~If it is really him then we have just seen a strong new opponent, <CHARNAME>. We must go to Midnight and to Candlekeep urgently.~
IF~~THEN REPLY~Who do you think it was, tell me!~DO~SetGlobal("VelshAmb","ar10pb",3)~GOTO Velsh4
END

IF~~THEN BEGIN Velsh4
SAY~The Lord of the Forsaken crypt, he is called, others say *The Vaunted*. I think I made a big mistake back in Celestia not to deal with him while I had the chance...~
IF~~THEN REPLY~*You know your beloved well enough not to question her further as her gaze has become absent minded searching her memories and lore for clues and answers.*~EXIT
END

IF~Global("YourTurf","BG2608",1)~THEN BEGIN SeekBook1
SAY~So here we are at your terrain, <CHARNAME>. Have you ever seen Cerameon's journal in your days here?~
IF~~THEN REPLY~I can't recall it.~GOTO SeekBook2
END

IF~~THEN BEGIN SeekBook2
SAY~You would surely remember it, given what I know about her life the memories must be full of magnificent adventures that would have thrilled you.~
IF~~THEN REPLY~Too bad, it was probably not accessible to us youngsters, as old and valuable as it must be.~GOTO SeekBook3
END

IF~~THEN BEGIN SeekBook3
SAY~Do you have an idea where the book might be kept?~
IF~~THEN REPLY~We best ask one of the monks responsible for the level coordination in the library above, they would know.~DO~SetGlobal("YourTurf","BG2608",2)~EXIT
IF~~THEN REPLY~The rarer and more valuable a tome is, the higher up in the library it is kept, the most important are up on Ulraunt's level at the top.~DO~SetGlobal("YourTurf","BG2608",2)~EXIT
IF~~THEN REPLY~I have no idea, we just must search thoroughly.~DO~SetGlobal("YourTurf","BG2608",2)~EXIT
END

IF~Global("RTSarAmb","BG2610",7)~THEN BEGIN Sarfool1
SAY~The laughing skull laughs once again over the the death of another fool.~
IF~~THEN REPLY~Will this really be the last we ever see of my *brother*?~DO~SetGlobal("RTSarAmb","BG2610",8)~GOTO Sarfool2
END

IF~~THEN BEGIN Sarfool2
SAY~*She looks intensively at you and considers long before she speaks.*~
=~It will depend on your decision, <CHARNAME>. I am sure the Vaunted Necromancer will fulfil his promise to Sarevok in that he will make him undying - a mighty fighter lich enthralled in his service, a slave without hope to ever die or be redeemed.~
=~You may save him from that fate - and us from trouble of having to fight him again and again.~
IF~~THEN REPLY~Maybe we must just destroy his corpse completely so Velsharoon will have nothing to ressurect?~GOTO Sarfool3
IF~~THEN REPLY~Why do you say it is my decision, my counsellor?~GOTO Sarfool3
END

IF~~THEN BEGIN Sarfool3
SAY~Remember how you gave him a spark of your soul in your plane in the Abyss to bring him back to life. As long as this part is accessible to the Lich-Lord he can restore Sarevok. ~
=~That spark, a bit of what Bhaal gave to you both, is only yours to take back again, no one else can assimilate it.~
IF~~THEN REPLY~It will taint me once again, will it? The old struggle inside will start again?~GOTO Sarfool4
IF~~THEN REPLY~I have defeated the darkness before in much larger concentration than this. If it can lay Sarevok to rest forever I will do it - unless you advise against it.~GOTO Sarfool4
END

IF~~THEN BEGIN Sarfool4
SAY~You may feel it inside you like you once did, but what you gave to your *brother* was never enough to endanger you now that you made your decision for Love and Hope. You are much too strong at will to be turned by it. And mind that it is just a lost bit of Bhaal's essence that has nowhere to go in the multiverse. The safest place to store it will be within you.~
=~I await your decision to perform the extraction if you want me to.~
IF~~THEN REPLY~I reject. I will not have the evil taint within me again, regardless how small it is.~DO~SetGlobal("SPRITE_IS_DEADRTSAREV","GLOBAL",0) ApplySpellRES("CVSLEEP",Player1)AddXPObject(Player1,-23000)~EXIT
IF~Global("Sanrompath","GLOBAL",1)~THEN REPLY~The god of love and hope will not allow even one like Sarevok to suffer such a fate. I am strong enough to take what I once gave him.~DO~ActionOverride("CVSandr",ForceSpell(Player1,SAREVOK_SOULSTEAL))AddexperienceParty(23000) ~EXIT
IF~Global("Sanrompath","GLOBAL",2)~THEN REPLY~The goddess of love and hope will not allow even one like Sarevok to suffer such a fate. I am strong enough to take what I once gave him.~DO~ActionOverride("CVSandr",ForceSpell(Player1,SAREVOK_SOULSTEAL)) ApplySpellRES("CVSLEEP",Player1)AddexperienceParty(23000)~EXIT
END

IF~Global("OpenSeal","RTF045",2)~THEN BEGIN NewWall1
SAY~This wall looks like it was erected quickly and more recent than the rest of this cellar. I would be astonished if what we seek would NOT be behind it.~
IF~~THEN REPLY~The one who's path we follow would have solved this question with her hammer I guess...~GOTO NewWall2
IF~~THEN REPLY~A woman I know would would normally solve such a question with her hammer I guess...~GOTO NewWall2
END

IF~~THEN BEGIN NewWall2
SAY~*She grins brightly and turns to attack the bricks that hinder your path with her hammer.*~
=~As the dust settles, you see an opening just large enough for your party to slip through one by one...~
IF~~THEN DO~SetGlobal("OpenSeal","RTF045",3)CreateVisualEffect("SPWHIRL",[4440.2617])~EXIT
END

IF~Global("AmbSeal","RTF046",2)~THEN BEGIN CeaSeal1
SAY~That hammer definitely fits into the mould of the seal.~
IF~~THEN REPLY~What are you waiting for, do it!~DO~SetGlobal("AmbSeal","RTF046",3)~EXIT
IF~~THEN REPLY~Wait, let us get our weapons ready for whatever may come through the sealed passage...Now, but be careful, Sandrah!~DO~SetGlobal("AmbSeal","RTF046",3)~EXIT
END

IF~Global("RTFindCham","GLOBAL",1)~THEN BEGIN NoFit1
SAY~*Sandrah places her own mystic hammer into the mould of the seal - it does not fit exactly and nothing happens at all.*~
IF~~THEN REPLY~Looks like only the one which sealed the passage can open it again.~GOTO NoFit2
IF~~THEN REPLY~And now? The real one was buried with your heroine if I remember well.~GOTO NoFit2
END

IF~~THEN BEGIN NoFit2
SAY~She lost her right hand holding the hammer when she closed this seal here. Her journal says she had the wish that both were burried with her when she died.~
IF~~THEN REPLY~So we need to open her tomb - I hate to do it but I imagine the heroine herself would agree to the deed would she know the reason why we have to do it.~DO~
SetGlobal("RTFindCham","GLOBAL",2)~ GOTO NoFit3
END

IF~~THEN BEGIN NoFit3
SAY~I guess she would...Only...where is that tomb?~
IF~~THEN REPLY~It should be somewhere down here, I think.~GOTO NoFit4
IF~~THEN REPLY~Probably at Westgate - they must have given her a first grade funeral for her deeds.~GOTO NoFit5
IF~Global("RTMissBooks","LOCALS",2)~THEN REPLY~It was probably written in one of the stolen biographical books our monks are missing...?~GOTO NoFit6
IF~!Global("RTMissBooks","LOCALS",2)~THEN REPLY~It's family history, isn't it? YOUR family, are you certain you don't know it?~GOTO NoFit7
END

IF~~THEN BEGIN NoFit4
SAY~That is unlikely, <CHARNAME>. She did not die from the injury but lived another twenty years of peace afterwards.~
IF~~THEN REPLY~Probably at Westgate - they must have given her a first grade funeral for her deeds.~GOTO NoFit5
IF~Global("RTMissBooks","LOCALS",2)~THEN REPLY~It was probably written in one of the stolen biographical books our monks are missing...?~GOTO NoFit6
IF~!Global("RTMissBooks","LOCALS",2)~THEN REPLY~It's family history, isn't it? YOUR family, are you certain you don't know it?~GOTO NoFit7
END

IF~~THEN BEGIN NoFit5
SAY~She was not one to seek fame and glory. She saved the town but rejected any celebration as its defender. Also - her tomb would be a well-known attraction if it were in Westgate.~
IF~~THEN REPLY~It should be somewhere down here, I think.~GOTO NoFit4
IF~~THEN REPLY~It was probably written in one of the stolen biographical books our monks are missing...?~GOTO NoFit6
IF~!Global("RTMissBooks","LOCALS",2)~THEN REPLY~It's family history, isn't it? YOUR family, are you certain you don't know it?~GOTO NoFit7
END

IF~~THEN BEGIN NoFit6
SAY~Right...and there is one who claims to have read them all. He may remember this fact if it was mentioned in the one about Cerameon.~
IF~~THEN DO~SetGlobal("RTMissBooks","LOCALS",3)~EXIT
END

IF~~THEN BEGIN NoFit7
SAY~Do you know how many generations ago that was, my dear? I doubt even my father knows about it.~
IF~~THEN REPLY~You really have no clue?? - Please, try to remember.~GOTO NoFit8
END

IF~~THEN BEGIN NoFit8
SAY~There is something in the last section of her journal, maybe. She writes about small town events, nature, the river...~
=~She returned to the village of her birth and childhood for her last years. It is likely that she died in peace and was buried right there.~
=~Mornbryn's Shield on the River Surbrin - a small village between Eversuit and Tezzir.~
IF~~THEN REPLY~We have a new destination then, I presume.~DO~SetGlobal("SanRTFPlot2","GLOBAL",4) RevealAreaOnMap("RTF038") AddJournalEntry(@2057,QUEST)~EXIT
END

IF~Global("CreWave","RTF010",5)~THEN BEGIN MornView1
SAY~*You could swear you hear Sandrah grind her teeth.*~
=~They will pay for it, <CHARNAME>, oh, they will!~
IF~~THEN REPLY~I swear it - they have no right to call themselves *gods* for what they do here.~DO~SetGlobal("CreWave","RTF010",6)~EXIT
IF~~THEN REPLY~*You silently nod. You know she will even stand her ground against AO himself to demand compensation for these misdeeds.*~DO~SetGlobal("CreWave","RTF010",6)~EXIT
END

IF~Global("CreWave","RTF010",7) ~THEN BEGIN MornView2
SAY~Whoever it was who was leading this operation here has failed. He has not found the relict and his ambush to get it from us should we find it has been defeated as well. They know they need the hammer to open the portal at Ravencrest and they will soon know that we have it now.~
IF~~THEN REPLY~We must be prepared for their attempts to get Cerameon's hammer from us.~GOTO MornView3
IF~~THEN REPLY~I assume we must be quick now and get to them before they have much chance to prepare themselves.~GOTO MornView3
IF~~THEN REPLY~So far we have always been one or two steps ahead of them. We must keep that pace and our advantage.~GOTO MornView3
END

IF~~THEN BEGIN MornView3
SAY~The sooner we make it to the portal and through the portal, the better. One of our keys to success has often been the moment of surprise in our favour.~
IF~~THEN DO~SetGlobal("CreWave","RTF010",8) SetGlobal("SanRTFPlot2","GLOBAL",5) ~EXIT
END

//First Thay Visit

IF~Global("OpenedSeal","RTF047",1) ~THEN BEGIN Hotseal1
SAY~It is warm in here, I would anticipate it will get really hot as we move on further.~
IF~~THEN REPLY~We are underground - who knows how deep below the surface we are.~DO~SetGlobal("OpenedSeal","RTF047",2)~GOTO Hotseal2
END

IF~~THEN BEGIN Hotseal2
SAY~To run such an installation like the portal that transports large groups of creatures over large distances it would require an enormous supply of energy.~
=~As we can exclude wind or water down here it would probably be the heat of the lava that was used.~
IF~~THEN REPLY~Thank you for the warning, counsellor. We should continue with the necessary caution.~EXIT
END

IF~Global("CyricNear","RTF049",1)~THEN BEGIN Steelcoffin1
SAY~We must be below a Thayan City already, <CHARNAME>, I have read about those iron coffin cemeteries in Thay.~
IF~~THEN REPLY~This does not look like a cemetery to me?~DO~SetGlobal("CyricNear","RTF049",2)~GOTO Steelcoffin2
END

IF~~THEN BEGIN Steelcoffin2
SAY~It is not the average way for the Thay to bury their dead, it is exclusively for some circles of the red wizards. They preserve their dead and seal them in these steel tanks in the floor to re-animate them when they think they are needed again. One of their necromantic practices that I find so disgusting.~
IF~~THEN REPLY~Do you know which city this could be?~GOTO Steelcoffin3
IF~~THEN REPLY~Which god, if not Mystra, blesses these dead?~GOTO Steelcoffin3
END

IF~~THEN BEGIN Steelcoffin3
SAY~These graveyards are limited to just a few places in Thay. As this one here seems to be quite large I could imagine we are below Bezantur, one of the centres of the country. These days it is Cyric who is worshipped by those who practice what we see here.~
IF~~THEN REPLY~The meddlesome guy might turn up once more, we should have our spells and weapons ready.~EXIT
END

IF~Global("RT78BoHi","RTF078",1)~THEN BEGIN Scales1
SAY~This seems to be the control room for the portal in some way.~
IF~~THEN REPLY~This book here speaks of *...place the artefact left of you and put your right hand on the scales...*. Which artefact?~GOTO Scales2
IF~~THEN REPLY~I think we must destroy it somehow.~GOTO Scales2
IF~~THEN REPLY~This will be our way back home if we find out to handle it.~GOTO Scales2
END

IF~~THEN BEGIN Scales2
SAY~The only artefact we found until now that manipulates those gates is the symbol from Sarevok. I am afraid it will be harder to find the hand that is the second ingredient. The owner might not be willing to co-operate with us.~
IF~~THEN REPLY~An interesting aspect, my counselor. You have some more ideas about this installation?~DO~SetGlobal("RT78BoHi","RTF078",2) SetGlobal("RT78BoHi","LOCALS",2)~GOTO Scales3
END

IF~~THEN BEGIN Scales3
SAY~Given the size and amount of energy in this place this might be the central hub for those portals. You might be able to go to a number of exits from here if you identify to the machine as its master.~
IF~~THEN REPLY~Oh, my - I am afraid the master you talk of might just be the mastermind we face in this quest.~EXIT
IF~~THEN REPLY~If we find and destroy this master - especially his right hand - the installation will become unusable.~EXIT
END

IF~Global("SeenMys","RTF070",5)~THEN BEGIN Candr1
SAY~Candrella...of course...~
=~I owe you some explanation, <CHARNAME>, and by that provide all of us with some more insight into Mystra's position here in Thay.~
IF~~THEN REPLY~Please do so.~DO~SetGlobal("SeenMys","RTF070",6)~GOTO Candr2
IF~~THEN REPLY~We should seek a calm place so we can talk undisturbed. I will ask you about Candrella later, Sandrah.~DO~SetGlobal("SeenMysPid","LOCALS",1) SetGlobal("SeenMys","RTF070",6)~EXIT
END

IF~~THEN BEGIN Candr2
SAY~You are aware that some of the changes that Mystra has made recently involved the actions against the cowled wizards of Amn, but even more severe were the impacts on the red wizards of Thay. Mystra has become a hated goddess in Thay even if her reputation was never really good around here anyway.~
=~To keep in touch of what is going on in Bezantur and other towns in Thay, the ears and eyes I have here are through the Chosen of Mystra who have joined the opposition in the underground of Thay.~
IF~~THEN REPLY~Candrella is one of your Chosen then?~GOTO Candr3
END

IF~~THEN BEGIN Candr3
SAY~Yes, she is a priestess and a Chosen of Mystra, born the illegitimate daughter of a murdered zulkir of Thay. She had to flee from Thay as a child from the regime of Szass Tam and was educated at the temple of Waterdeep.~
=~She has volunteered to return to her home country and is a member of the Thayan underground opposition who call them self the *Red Hoods*.~
IF~~THEN REPLY~They sound to me like the people we should get in contact with.~GOTO Candr4
IF~~THEN REPLY~You have your secret agent here in town, I would say.~GOTO Candr4
END

IF~~THEN BEGIN Candr4
SAY~The issue will be that we cannot just go to a meeting point and address them. They are a secret organisation, constantly having to conceal identity and location from the red wizards and the authorities controlled by them. ~
=~They will soon know we are here. They will get it touch with us when they decide it is safe, we need to wait for their move.~
IF~~THEN REPLY~So let's explore the town and see what we can do on our own until we get a call from the Red Hoods, if that happens at all.~DO~SetGlobal("SanPlot3","GLOBAL",1) AddJournalEntry(@2062,QUEST)~EXIT
END

IF~Global("RTMetCandre","GLOBAL",2)~THEN BEGIN Candrow1
SAY~<CHARNAME>, I must apologize once again - I missed to tell you an important detail that was so obvious to me that I forgot to inform you about it.~
IF~~THEN REPLY~I know this situation, you didn't omit it on purpose. What is it?~GOTO Candrow2
IF~~THEN REPLY~(Laugh) What would the Mistress of Mysteries be without her secrets! What is it?~GOTO Candrow2
END

IF~~THEN BEGIN Candrow2
SAY~I told you about my Chosen Candrella and that she is the illegitimate daughter of a murdered noble.~
IF~~THEN REPLY~You said that. And? ~DO~SetGlobal("RTMetCandre","GLOBAL",3)~GOTO Candrow3
END

IF~~THEN BEGIN Candrow3
SAY~Her father could never marry her mother even though he truly loved her because of the Thay laws and traditions versus the mother's race.~
=~Her mother was a drow who came to Bezantur as a slave. The Zulkir fell in love with her and freed her but could never make their liason official.~
IF~~THEN REPLY~A drow - wait...that hooker...?~GOTO  Candrow4
END

IF~~THEN BEGIN Candrow4
SAY~...was Candrella. She had to use a disguise to contact us, even if the one she chose still was quite a risk. Now we need to find the entry for which we received the ward stone.~
IF~~THEN REPLY~Let us keep our eyes open. If we are observed already they will find a way to guide us further.~EXIT
IF~~THEN REPLY~One locked building we encountered already, strangely enough on the Odesseiron estate.~EXIT
IF~~THEN REPLY~Sometimes the best place to hide such things is way out in the open. We just must recognise the signs.~EXIT
END

IF~Global("Key2","RTF080",2)~THEN BEGIN Mauso1
SAY~Looks like we were a bit too enthusiastic, <CHARNAME>. There is more than one key required to get further. At least we have confirmed that we are at the right location Candrella hinted to.~
IF~~THEN REPLY~Things are getting more twisted, this estate seems to be a target of interest to more than one party involved. Let's return to the city to find more.~DO~SetGlobal("Key2","RTF080",3)~EXIT
IF~~THEN REPLY~There is more in Bezantur for us to explore. I'm confident we will find other pieces of the puzzle sooner or later.~DO~SetGlobal("Key2","RTF080",3)~EXIT
END

IF~Global("RTMaskplot","GLOBAL",3)~THEN BEGIN HasAllMask1
SAY~We now have all the items Shabella had required from Mask.~
IF~~THEN REPLY~I think it's a trap. But we will only find out if we deliver the stuff.~DO~SetGlobal("RTMaskplot","GLOBAL",4)AddJournalEntry(@2076,QUEST) EraseJournalEntry(@2074) EraseJournalEntry(@2073)~EXIT
IF~~THEN REPLY~Let's deliver the things so we have one less threat against us.~DO~SetGlobal("RTMaskplot","GLOBAL",4) AddJournalEntry(@2076,QUEST) EraseJournalEntry(@2074) EraseJournalEntry(@2073)~EXIT
END

IF~Global("RTInCell","RTF061",5)~THEN BEGIN SJailbreak1
SAY~No doubt we could easily pick these locks and free ourselves. We could explore the building a bit if you want - but we really should take the chance to go to court.~
IF~~THEN REPLY~This is our way into the Court Building where the key we need is kept.~GOTO SJailbreak2
IF~~THEN REPLY~Haven't you seen how the law works in this land? A thief from the Sword Coast is more honest and lawful than the judges in Thay.~GOTO SJailbreak2
END

IF~~THEN BEGIN SJailbreak2
SAY~I am most confident we will find our way out of here easily once we found the confiscated key. Let us enjoy our experience with Thayan justice.~
IF~~THEN DO~SetGlobal("RTInCell","RTF061",6) RealSetGlobalTimer("RTInCellD","RTF061",180)~EXIT
END

IF~Global("RTGetOut","GLOBAL",3)~THEN BEGIN VisAut1
SAY~According to this orderly statement Autharch Ithrash has the key we seek, obviously a magical lantern, at his home. I doubt that it would be wise to wait here until he decides to return it to the court exhibits again.~
IF~!InParty("CVIzzy")~THEN REPLY~A little burglary will not drastically worsen our reputation in this town.~DO~SetGlobal("RTGetOut","GLOBAL",4)~EXIT
IF~InParty("CVIzzy")~THEN REPLY~A little burglary will not drastically worsen our reputation in this town.~EXTERN CVIzy25J VisAut2
END

IF~Global("SanFaen","RTF111",1)~THEN BEGIN SanFaen1
SAY~This vegetation and the buildings...I remember the place, I once was here as a child with my father.~
IF~~THEN REPLY~Where are we?~GOTO SanFaen2
IF~~THEN REPLY~No surprise, you have been almost everywhere.~GOTO SanFaen2
END

IF~~THEN BEGIN SanFaen2
SAY~This is Faenya Dale, further up in the mountains is where the Avariel Elves have their home. Aerie would be just too happy if she could be with us today.~
IF~~THEN REPLY~She did not appear to be too unhappy where we last saw her.~DO~SetGlobal("SanFaen","RTF111",2)~EXIT
END

IF~Global("Magedead","ar60pb",9)~THEN BEGIN TalosEnd1
SAY~Let us inspect the former Bhaal temple here, maybe we find the portal to close and other evidence for our case.~
IF~~THEN REPLY~I propose to prepare ourselves well. Who knows which surprise may await us still.~DO~SetGlobal("Magedead","ar60pb",10)~EXIT
IF~~THEN REPLY~It is high time to declare this *academy* as closed.~DO~SetGlobal("Magedead","ar60pb",10)~EXIT
IF~Global("SanRTFPlot3","GLOBAL",5)~THEN REPLY~I propose to prepare ourselves well. Who knows which surprise may await us still.~DO~SetGlobal("Magedead","ar60pb",10) SetGlobal("SanRTFPlot3","GLOBAL",6)~GOTO TalosendNosae1
IF~Global("SanRTFPlot3","GLOBAL",5)~THEN REPLY~It is high time to declare this *academy* as closed.~DO~SetGlobal("Magedead","ar60pb",10) SetGlobal("SanRTFPlot3","GLOBAL",6)~GOTO TalosendNosae1
END

IF~~THEN BEGIN TalosendNosae1
SAY~Now we have learned a bit about the magical powers that Szass Tam and the red wizards possess. Add to that the power of his current allies and it is clear that even you and me cannot defeat this phalanx as it stands.~
IF~~THEN REPLY~It wouldn't be you if there were not some solution forming already beneath those adorable curls.~GOTO TalosendNosae2
IF~~THEN REPLY~True, my dear, but we need to find a solution soon.~GOTO TalosendNosae2
END

IF~~THEN BEGIN TalosendNosae2
SAY~As our foe's current position is based on magic it is there we will start to weaken them.~
IF~~THEN REPLY~A logical solution - if that were possible. Even the Goddess of All Magic cannot deny the arts to the other gods.~GOTO TalosendNosae3
END

IF~~THEN BEGIN TalosendNosae3
SAY~Right, all true magic originates from the Weave. There is a limited power provided by Shar from the Shadow Wave, but I will put that aside for the moment. The Weave can only be controlled by Mystra and even if other gods grant powers to their followers they can only do it through Mystra. There is no direct access to the Weave by anyone else, since the day Mystryl was killed by Karsus.~
=~Afterwards AO gave some of the Weaves energy to Shar, but the majority and the portion used by Faerun's mages, clerics and sorcerers he gave to Mystra.~
IF~~THEN REPLY~To separate your foe from the source of their magic...we had to eliminate - Mystra.~GOTO TalosendNosae4
END

IF~~THEN BEGIN TalosendNosae4
SAY~A solution...it has its price I admit - and it would only work if AO had no possibility to establish another keeper for the Weave. If not...(You see her thoughts drift off into possibilities you cannot imagine yourself.)~
IF~~THEN REPLY~Tell me that you will not do such a thing, tell me!!~GOTO TalosendNosae5
IF~~THEN REPLY~What are you planning, I have a right to know. I love you.~GOTO TalosendNosae5
END

IF~~THEN BEGIN TalosendNosae5
SAY~We will need to do something drastically soon, <CHARNAME>. Mystra must be saved before Szass Tam can kill her. She and her magic must...disappear. Even AO must be prevented to interfere.~
=~We must discuss this plan with my grandmother after we paid the Black Hand in the Temple here our visit. ~
IF~~THEN EXIT
END

//Part4 Finding Allys
IF~Global("RTF4Driz","rtf006",2)~THEN BEGIN KelTShar1
SAY~We still have a bit of time before we need to go to Wheloon. Enough to have our meeting with Kelemvor, I propose.~
IF~~THEN REPLY~Baldur's Gate and the Undercity, is that the gate to the God of the End of Everything?~GOTO KelTSharBG
IF~~THEN REPLY~Would you agree that it is the Firewine that is our destination?~GOTO KelTSharFi
IF~~THEN REPLY~On second guess I have eliminated the Fields of Death from my list of possibilities in Kelemvor's riddle. The madness part of it does not fit.~GOTO KelTSharNo
IF~~THEN REPLY~We still need time to investigate the Temple itself and find out about your suspicion.~GOTO KelTSharWe
END

IF~~THEN BEGIN KelTSharFi
SAY~It fits best with the description, I agree. A mad battle between two superior elf mages that destroyed the whole city and area. Nothing today but some old rumours have been left of those events and the ones involved.~
IF~~THEN DO~SetGlobal("RTF4Driz","rtf006",3)~EXIT
END

IF~~THEN BEGIN KelTSharBG
SAY~Not very likely, as Kelemvor speaks of battle, not of bloody sacrifices, mad as they may have been. As the fields of death battle was caused by aggression and defence rather than by madness, I would exclude it as well.~
IF~~THEN REPLY~Would you agree that it is the Firewine that is our destination?~GOTO KelTSharFi
END

IF~~THEN BEGIN KelTSharNo
SAY~The fields of death battle was caused by aggression and defence rather than by madness. The history of the Undercity speaks of bloody sacrifices not of battle, mad as they may have been.~
IF~~THEN REPLY~Would you agree that it is the Firewine that is our destination?~GOTO KelTSharFi
END

IF~~THEN BEGIN KelTSharWe
SAY~You are right, however I would think a tenday is enough for both tasks, and the visit to Kelemvor will bring us clarity about our own powers before we go to face another member of the enemy phalanx.~
IF~~THEN REPLY~Baldur's Gate and the Undercity, is that the gate to the God of the End of Everything?~GOTO KelTSharBG
IF~~THEN REPLY~Would you agree that it is the Firewine that is our destination?~GOTO KelTSharFi
IF~~THEN REPLY~On second guess I have eliminated the Fields of Death from my list of possibilities in Kelemvor's riddle. The madness part of it does not fit.~GOTO KelTSharNo
END

IF~Global("Insignia","RTF141",1)~THEN BEGIN Insig1
SAY~Give me a minute, <CHARNAME>, there are a few things I want you to know and remember before we venture forth. Please listen closely and keep these things in mind.~
IF~~THEN REPLY~*Her face shows her concerns about the events ahead. You nod silently for her to continue.*~GOTO Insig2
IF~~THEN REPLY~Your meeting with Shar and Larloch seems to concern you, Sandrah.~GOTO Insig2
END

IF~~THEN BEGIN Insig2
SAY~Whatever will happen in a few moments, <CHARNAME>, you must not loose your hope - or your love. Much may depend on your actions. Now listen.~
=~I have left two important insignia of Mystra's power with two trustees. You may need them for the actions to be performed by you and Midnight at Waterdeep to make our plan work. You will find these things with Thalantyr at the High Hedge and with my sister in Undermountain.~
IF~~THEN REPLY~What do you mean - of course we will get those things together if they need to be brought to your grandmother...~DO~SetGlobal("Insignia","RTF141",2)~GOTO Insig3
END

IF~~THEN BEGIN Insig3
SAY~Hush...you will understand everything pretty soon. Never loose your hope, whatever will happen. So - remember Thalantyr, Qilandrha, the third ingredients will find you...Let us move now, we have little time.~
=~I love you.~
IF~~THEN EXIT
END


IF~Global("Statue","RTF140",1)~THEN BEGIN Statu1
SAY~*Sandrah studies the statue in front of the temple seemingly lost in her thoughts.*~
IF~~THEN REPLY~She neither resembles you nor your grandmother...maybe old Mystryl?~GOTO Statu2
IF~~THEN REPLY~The original is even more beautiful than that statue.~GOTO Statu2
END

IF~~THEN BEGIN Statu2
SAY~It is unusual to place any statue of the Goddess of All Magic at her temples at all. Mystra is represented by her symbol not by her counterfeit. On the other hand you know that we were never restricting out followers with too many rules. Mystra is worshipped by many different races in their own fashion.~
IF~~THEN REPLY~I would see it in the same way if this temple had not already raised our suspicion in a way. Whoever that lady is, it's surely not Mystra.~DO~SetGlobal("Statue","RTF140",2)~EXIT
END

IF~Global("CitEntpl","GLOBAL",17)~THEN BEGIN SzaHan1
SAY~I really do not feel guilty for what I just did, more like the healer or - better surgeon - who did what must be done.~
IF~PartyHasItem("RTSzHand")~THEN REPLY~This hand is the key we needed to activate the portal in the old temple, right?~GOTO SzaHan3
IF~!PartyHasItem("RTSzHand")~THEN REPLY~This hand is the key we needed to activate the portal in the old temple, right?~GOTO SzaHan2
END

IF~~THEN BEGIN  SzaHan2
SAY~There it lies where the machine has cut it off, instead of my head. (She points to the foot of the guillotine.)~
IF~~THEN GOTO SzaHan3
END

IF~~THEN BEGIN  SzaHan3
SAY~We should prepare ourselves well before we return to the estate and the Bhaal temple again. Szass Tam now knows whom he is facing and will have activated all his defences against us.~
IF~~THEN REPLY~Like you just said, we will do what must be done.~DO~AddexperienceParty(82000) SetGlobal("CitEntpl","GLOBAL",18) ~EXIT
END

//L'Urieet Quest

IF~~THEN BEGIN SavLou1
SAY~Lolth made her revenge on L'Urieet, respectively her mother, a personal task. That means, she has to come to the Prime in an avatar - just like us.~
IF~~THEN REPLY~Shyntlara mentioned Ust Natha.~GOTO SavLou2
IF~~THEN REPLY~Now the mentioning of Ust Natha by Shyntlara makes sense to me!~GOTO SavLou2
END

IF~~THEN BEGIN SavLou2
SAY~You know well that time passes differently on other planes, including the Demonweb Pits, Lolth's Realm. We will have the necessary time to get to the Underdark and prevent her to execute her plan.~
IF~~THEN REPLY~I propose to seek our way down through the old elven temple where we once emerged from below.~DO~RevealAreaOnMap("Ar2500")~EXIT
IF~~THEN REPLY~Can you take us to the Underdark Exit we once discovered?~DO~SetGlobal("SanTravel","GLOBAL",104)~EXIT
END

IF~~THEN BEGIN SavLou3
SAY~We know a number of people who made it to the surface from the Underdark. They may know of other transitions than the one at the elven temple that is obviously blocked by Adalon once more.~
IF~~THEN REPLY~Let us ask Drizzt.~EXIT
IF~~THEN REPLY~Let us inquire with your sister at Undermountain, one or more of her followers must know about such paths.~EXIT
END

IF~Global("RTBackInUD","GLOBAL",2)~THEN BEGIN RetUst1
SAY~It is strange, Lolth visit to Ust Natha appears to be quite violent.~
IF~~THEN REPLY~Those that are not dead are confined in their houses with a spell. The Spider Queen acts against her own people. We must find someone alive and willing to speak.~DO~SetGlobal("RTBackInUD","GLOBAL",3)~EXIT
IF~~THEN REPLY~Did you see that? Up there in the slave cages is some movement. Some survivors? Let's check.~ DO~SetGlobal("RTBackInUD","GLOBAL",3)~EXIT
END

IF~~THEN BEGIN NoMirr
SAY~(Laughs) You did not look into your mirror recently? For the drow we look like drow by my power of Mystra - at least for most of them.~
IF~~THEN REPLY~Some matron or Handmaiden may see through our disguise if granted Lolth's power. We can risk that, I guess.~EXIT
END

END

//======CHAINS==========

CHAIN
IF~Global("RTGoRaven","LOCALS",1)~THEN CVSan25J GoRaven1
~So, it is the monastry of Ravencrest - respectively the ancient ground it was built on - that we need to visit.~
DO~SetGlobal("RTGoRaven","LOCALS",2)~
==CVLey25J IF~InParty("Leyala")~THEN~I know it well, <CHARNAME>, it is where I have learned my fighting skills with the monks.~
==CVSan25J ~It is south of Amkethran on the shores of the Lake of Steam.~
==CVLey25J IF~InParty("Leyala")~THEN~This is the route I would propose as well, Sandrah. We need to go to Amkethran and then I can lead us over the Ithal Pass to Ravencrest.~
==CVSan25J IF~!InParty("Leyala")~THEN~Remember the nun Leyala in the Waterdeep Temple, <CHARNAME>, Ringhontal mentioned she studied down there. We may want her to show us the way and provide us access to the monastery.~
END
IF~Global("SanRTFPlot2","GLOBAL",1)~THEN REPLY~Let us go to Amkethran without losing further time.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",1)!InParty("Leyala")~THEN REPLY~We should first pick up Leyala then who was so eager to join us and afterwards go to Amkethran.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",1)!InParty("Leyala")~THEN REPLY~The little nun might be helpful but we have no time to waste and must go directly to Amkethran.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",1)~THEN REPLY~We cannot afford to waste time to travel over sea to Ravencrest, so I follow your advice to try it via Amkethran.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",1)~THEN REPLY~Looks like we are still ahead of our foe to reach the ancient seal. Let us keep it that way and move to Amkethran then.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",0)~THEN REPLY~We need to consult still with your grandmother before we take the next step.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",0)!InParty("Leyala")~THEN REPLY~We need to go to Waterdeep for your grandmother anyway, so we may pick up the little nun by that way as well.~EXIT
IF~Global("SanRTFPlot2","GLOBAL",0)InParty("Leyala")~THEN REPLY~So let us first consult with your grandmother at Waterdeep and then let Leyala guide us to Ravencrest.~EXIT

CHAIN
IF~~THEN CVSan25J NerkiHi2
~The Collector. A red robed merchant of curiosities. He was very eager to get some specific artefacts from us.~
DO~SetGlobal("RtFReasonSent","LOCALS",4)~
==Pellig~Growl.~
==CVSan25J~Oh, yes, Pelligram, his appearances ended with that strange assault on us one night...~
==Pellig~GROWL.~
==CVSan25J~It seemed back then that he stole nothing but a lock of my hair...~
END
++~Mysterious - I cannot yet see any connection to what is going on here today.~EXIT
++~And now he is here obviously involved in that strange intrigue in the Hornswamp. I fail to see what those occurrences have in common.~EXIT

CHAIN
IF~Global("SanRTFColl","GLOBAL",3)~THEN CVSan25J CollF1
~Looks like we have finally found our man, <CHARNAME>.~
DO~SetGlobal("SanRTFColl","GLOBAL",4)~
==CVColle~Why did they not tell me....Uuuh, wait a minute....you are the REAL one, I recognise that incredible cat!!~
==Pellig~GROWL!!!~
==CVSan25J~The real one? You expected my clone, Nerkio?~
==CVColle~How can it be ready...what is going on here?~
==CVSan25J~I have the feeling we just came in time, <CHARNAME>. We are disturbing them in an untimely manner when they are not ready for us yet.~
END
++~You will have to answer a lot of questions, *Collector*~+ CollF2
++~You have done more than is acceptable already. You will die just here and now.~+ CollF2

CHAIN
IF~~THEN CVSan25J CollF2
~Give up before it is too late, Nerkio!~
==CVColle~You must not be here at all...I must activate the contingency sequence.~
DO~ActionOverride("CVColle",EscapeArea())~
==CVSan25J~<CHARNAME>, we must follow him quickly, he is probably about to destroy the evidence leading to his superiors.~EXIT

CHAIN
IF~Global("RTFoundIce","GLOBAL",1)~THEN CVSan25J Icycold
~Brrrr, how cold it is in here.~
DO~SetGlobal("RTFoundIce","GLOBAL",2)~
==RTMeli IF ~InParty("RTMeli")~THEN~It reminds me of a spell I once experimented with...ah, it went wrong and nearly froze me to a statue.~
==CVGir25J IF~InParty("CVGiran")~THEN~Almost like on the Spine of the World but somehow artificial.~
==CVIzy25J IF~InParty("CVIzzy")~THEN~I's got this wonderful fur coat...in case nobody noticed it yet, it's the PINK that makes it so special. I'm warm, haha.~
==CVLey25J IF~InParty("Leyala")~THEN~Cold like the ice chamber in which they keep the dead at the temple until it is time for the funeral.~
==CVLou25J IF~InParty("Loureed")~THEN~In the Underdark it gets warmer the deeper you venture - this here is a perversion.~
==CVSan25J~This is some unnatural type of cold as if somebody has a need to keep things frozen down here.~
END
++~I'm afraid that's what they do. Probably the artefacts they need to produce clones. Let us take a look.~EXIT
++~They need to preserve those fingers and hair and so on from decay until it's time to make a clone out of it.~EXIT

CHAIN
IF~Global("RTImpHere","BG4200",2)~THEN CVSan25J SeeTalanImp
~An imp?~
DO~SetGlobal("RTImpHere","BG4200",3)~
==RTMeli IF ~InParty("RTMeli")~THEN~He carries an item I once saw in Thalantyr's laboratory.~
==CVGir25J IF~InParty("CVGiran")~THEN~A ranger's eye clearly detects an item he carries, looks like a mirror.~
==CVIzy25J IF~InParty("CVIzzy")~THEN~Trust a most talented mage, that's something magical the little beast carries.~
==CVLey25J IF~InParty("Leyala")~THEN~The beast is almost as quick as I am and he carries some shiny looking thing. Our lens maybe?~
==CVLou25J IF~InParty("Loureed")~THEN~For drow's eyes it's clearly visible that the creature carries some magical mirror.~
==CVSan25J~Trust your lady of the world, the thing he has is not a mirror but a scientific lens.~
END
++~Quick now, Thalantyr waits for us.~EXIT

CHAIN
IF~Global("RTyuHere","BG3700",1)~THEN CVSan25J Juans
~Yes?~
DO~SetGlobal("RTyuHere","BG3700",2)~
==RTMeli IF~InParty("RTMeli")~THEN~Ehem...we...we should be very careful in this area.~
==CVGir25J IF~InParty("CVGiran")!InParty("RTMeli")~THEN~We should be very careful in this area.~
==CVIzy25J IF~InParty("CVizzy") ~THEN~Yeah, one can easily be changed into a talking chicken 'round here, right?~
==CVSan25J IF~InParty("RTMeli")~THEN~Another of your failed experiments?~
==CVSan25J IF~InParty("CVGiran")~THEN~You can interpret those trails, Giran?~
==CVGir25J IF~InParty("CVGiran")~THEN~Something big and snakelike, several of those, I've never seen such trails before.~
==RTMeli IF~InParty("RTMeli")~THEN~Yuan-Ti.~
==CVSan25J IF~!InParty("RTMeli")~THEN~Yuan-Ti.~EXIT

CHAIN
IF~Global("RTGotempl","ar0300",1) ~THEN CVSan25J RTTemplgo
~Even Athkatla, this town of dubious memories, looks like a return to a past I would not miss after all.~
DO~SetGlobal("RTGotempl","ar0300",2) ~
==BGir25 IF~InParty("CVGiran")~THEN~My mother was overwhelmed when she first left Clansland and came here, so she told me.~
==CVSan25J IF~InParty("CVGiran")~THEN~You seem to be more relaxed about this town than she was.~
==BGir25 IF~InParty("CVGiran")~THEN~Remember that I was kidnapped and sold to the orcs when I was on my way to here with my uncle those many years ago. I never got sight of the town due to my fate...and my luck.~
=~Say, can we pay a visit to the Temple District and the Order of the Radiant Heart? My uncle was talking about it during all of our journey until the ambush that killed him. I could not bury him but I may even say a short prayer there for his soul.~
==CVIzy25J IF~InParty("CVizzy") ~THEN~Baah, this ain't really lookin' like the glorious capital mama made such a fuss about.~
==CVSan25J IF~InParty("CVizzy") ~THEN~We are not in the most splendid part of town, wait until you see Waukeen's Promenade or the Temple District...~
==CVIzy25J IF~InParty("CVizzy") ~THEN~Yeah, that's the thing to do, now I remember...mama got really crazy about that Order of the Randalizing Heart or something. Oh, <CHARNAME>, we must and must visit that thing, I beg and beg ya!~
==RTMeli IF~InParty("RTMeli")!InParty("CVGiran")!InParty("CVizzy")~THEN~It's probably a good idea to visit the Temple District on this occasion. The Order of the Radiant Heart is reported to sell the most interesting scrolls for my profession.~
END
++~We can surely do a little side-trip to the Temples for your sake.~EXIT
++~What do you folks think, he? I'm not your travel guide giving tours to this town of ugly memories.~EXIT
++~Why not visit those Temples again. I wonder whom they may worship there these days. (Do I have a temple there myself?) ~EXIT

CHAIN
IF~Global("SanAskWind","ar0602",1)~THEN CVSan25J WonderWind
~(Mumbles to herself) What did he mean with the new use for his Wind Elemental Plane - and what was that about *little Quayle*...?~
DO~SetGlobal("SanAskWind","ar0602",2)~
END
++~I heard you well, my dear, and, yes, we will look into the Pocket Plane to find it out.~EXIT
++~(Mumble to yourself) Some counsellor I know would advise that we will only find out by looking into that place again.~EXIT
++~(Shake your head) We surely have more urgent questions to ponder, my Goddess of All Magic.~EXIT
++~(Ignore her.) ~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",7) AreaCheck("RTF035") ~THEN CVSan25J CampMeet1
~Friends! It is good that peace has been kept between you.~
DO~SetGlobal("SanRTFPlot1","GLOBAL",8)~
==CVMinsc~Trust has been set in <CHARNAME> and you and it was justified.~
==Thalan~I have given everyone already the facts we had revealed so far, you may want to add what you found out in between.~
==CVShauQ~Last time it was undead produced in Sharkta Fai to bring conflict between orc and orc- this time it is clones produces in some secret laboratory to make friends hate each other again.~
==CVShabab~You see a relation between the two, Shauhana?~
END
++~There may be one. Thay was involved last time and we have hints to them again.~+ CampMeet2
IF~PartyhasItem("RTSTLet1")~THEN REPLY~We found some hints to them including a letter signed *ST*.~+ CampMeet2
++~Thay and some others as well, it is really confusing.~+ CampMeet2

CHAIN
IF~~THEN CVSan25J CampMeet2
~A number of parties seem to be involved. I am not sure yet whether they are all cooperating or if we have to face more than one front against us.~
=~It seems that the former cowled wizards expelled from Athkatla are in league with the red wizards. They are directly involved in the clone invasion but we have destroyed their installations in Undermountain and the Hornswamp.~
==CVSan25J IF~PartyhasItem("RTSTLet1")~THEN~We found a message from someone with the initials *ST*~
==CVShauQ~Szass Tam.~
END
++~*You could hear a needle drop in the silence that follows that name.*~+ CampMeet3

CHAIN
IF~~THEN CVSan25J CampMeet3
~Let us continue to gather the facts, to come to reasonable conclusions.~
==THALAN~The High Hedge was besieged by Talos' servants to hinder <CHARNAME>'s meeting with me.~
==CVGir25J IF~InParty("CVGiran")~THEN~We also had an encounter with Cyric on our visit to Irenicus.~
==RTMeli IF ~InParty("RTMeli")!InParty("CVGiran")~THEN~We also had an encounter with Cyric on our visit to Irenicus.~
==CVIzy25J IF~InParty("CVIzzy")!InParty("RTMeli")!InParty("CVGiran")~THEN~We also had an encounter with Cyric on our visit to Irenicus.~
==CVLey25J IF~InParty("Leyala")!InParty("CVIzzy")!InParty("RTMeli")!InParty("CVGiran")~THEN~We also had an encounter with Cyric on our visit to Irenicus.~
==CVSan25J IF~!InParty("Leyala")!InParty("CVIzzy")!InParty("RTMeli")!InParty("CVGiran")~THEN~We also had an encounter with Cyric on our visit to Irenicus.~
==Keldo25a~The list of those not involved may be shorter than the list of candidates.~
==CVSan25J~It is hard to tell at this moment who is involved directly in the plot and who just takes the chance to hassle <CHARNAME> and me while he sees a chance.~
==CVOrwarl~On the other hand you cannot be sure that all the players have become visible yet.~
==CVSan25J~Absolutely right, Wallrick. All we can say for sure is that we have acted just in time to make the initial phase of their plan a failure. Due to your calm and peaceful reaction the plan to stir trouble between Clan orcs and the South has failed.~
==CVShauQ~It has been a good test to the stability of our arrangement, do you agree Shar-Teel?~
==CVShabab~We are more confident in our peaceful arrangements than before, that is true.~
==CVOrwarl~We plan to stay up here in the neutral zone for a number of days, Sandrah, so we can have a conference on further actions and cooperation.~
==Keldo25a~If the plan was to bring us apart it has produced just the opposite effect.~
==CVMinsc~Keldorn, it seems all this fuss was not so much against you or the Clans but to bring Sandrah and <CHARNAME> here.~
==Thalan~What about Irenicus?~
END
++~He was quite helpful and apparently is not involved.~+ CampMeet4

CHAIN
IF~~THEN CVSan25J CampMeet4
~It is good to hear that you plan to stay here for a while and negotiate your common future.~
=~For us there remains the task to dig deeper into the matter and see what and who is behind it.~
==Thalan~You seem to have some clues, learned one?~
==CVSan25J~Irenicus hint us to very old sources of knowledge required for such a production of clones - Shauhana rightfully dropped a name of one who may possess such knowledge.~
=~Myself, I was reminded of an historic event long ago, when summoned monsters and thrall armies where invading the Realms sent by a far off enemy.~
==CVOrwarl~The Hordes against Westgate?~
==CVSan25J~Many have suspected they were led and supported by Thay. One of my bloodline defeated them in the end, Cerameon.~
==CVShabab~(Laughs) The priestess of Mystra with the legendary hammer, Pussycat.~
==Thalan~Where will you start your investigation, will you really travel to Thay?~
==CVMinsc~That is even further away than Rashemeen!~
==CVSan25J~Maybe we must go there in the end...I first propose that we inquire at some sources closer at hand. My grandmother Midnight and the library of Candlekeep.~
END
++~If this plot is against us, Sandrah, the former Mystra may provide us with some insight we have overlooked.~DO~ClearAllActions()SmallWait(2)SetInterrupt(FALSE)
TextScreen("RTPL1E")AddJournalEntry(@1764,QUEST)~EXIT
++~If there was something like that before we will probably find the historic tomes at my home useful.~DO~ClearAllActions()SmallWait(2)SetInterrupt(FALSE)
TextScreen("RTPL1E")AddJournalEntry(@1764,QUEST)~EXIT

CHAIN
IF~Global("FoundSeal34","RTF034",1)~THEN CVSan25J CampRes1
~Here they are!~
DO~SetGlobal("FoundSeal34","RTF034",2) SetGlobal("SanRTFPlot2","GLOBAL",3)~
==CVMinsc~I knew you would come, didn't I tell you, Shauhana.~
==CVShauq~You did, my berserker.~
=~You have overcome those forces that blocked us down here, my friends.~
==CVSan25J~We have, at least for the moment. It seems they have some endless resources coming into this place.~
==Thalan~Those Balors held a force field to block the corridor, I could not penetrate it.~
==CVShabab~Have you noticed the strange portal a bit further up the corridor you came? It seems those creatures appear from there.~
==CVSan25J~A portal? We have found out a bit about those ancient installations. They were used in an attempted invasion a long time ago. This may be a minor one of them, the main one is still closed and is the target of our next mission.~
==Keldo25a~If this here is a minor one it gives us an initial idea of what will happen if the main one is opened.~
==CVSan25J~They will be able to transport whole armies of their fighters and spellcasters over large distances into the battle...~
==Thalan~We must seal this one here, Sandrah - with Mystra's magic.~
==CVSan25J~Probably not Mystra's magic but an item from the one who activated it.~
==CVMinsc~That ghostly laughing lich?~
==CVSan25J~Velsharoon, we got a glimpse of him outside just before he retreated from my presence. <CHARNAME>, I already had anticipated that the symbol we found with Sarevok was the key to something. We should try it to seal the portal of his *new master*.~
END
++~Sarevok was most likely to be one of the Lich's generals here, as he was familiar with the area of his former life.~+ CampRes2
IF~!PartyHasItem("RTVelsym")~THEN REPLY~I no longer have the emblem, can your parcel retrieve it?~+ CampRes2
++~Here you have it. Maybe it will work on other portals as well that we might find.~+ CampRes2

CHAIN
IF~~THEN CVSan25J CampRes2
~We should make it to the surface quickly and seal the portal on our way out.~
==Keldo25a~In a minute, my dear. We should first identify the traitor and seal him down here as well with his dead friends.~
==CVSan25J~A traitor?~
==CVShabab~We had some time to think about the situation while we were trapped down here and holding away those clones and spawns.~
==Thalan~The attack on the camp was surely no coincidence. The Lich-King knew we were up here with very few guards only. But only very few knew of our secret council in this remote place.~
==CVMinsc~In fact only the ones that are in this room here. My berserker elite and Shar-Teel's few guards can be trusted as they have forsworn their lives to their duty.~
END
++~The only one who left the camp except for us was Wallrick...~+ CampRes3
++~Are you accusing us? That is silly...impertinent.~+ CampRes3

CHAIN
IF~~THEN CVSan25J CampRes3
~Please, friends, let not our foe triumph over us in the end by having separated us in mistrust...~
==CVShauq~Wallrick is my most trusted General beside Minsc. He has served Ghotal, the Clan Orcs and his queen all his life and is beyond any suspicion.~
==Thalan~It is sad but true, the only ones who had left the camp and had contact to the outside is your party, <CHARNAME>.~
==CVSan25J~I am sure we have left no trace that could be followed.~
==Keldo25a~I am sure you did not, not you and <CHARNAME>. Can you say the same for all of your companions?~
==CVSan25J~I trust all of them. Prelate...~
=~But wait...~
=~There was this occasion when...~
=~<CHARNAME>, I am afraid the traitor we seek is - you.~
END
++~WHAT?~+ CampRes4

CHAIN
IF~~THEN CVSan25J CampRes4
~Calm down, everyone. Yes, it was you, by coincidence.~
==CVShabab~What do you think, pussycat?~
==CVSan25J~<CHARNAME>, remember our mission below the Waterdeep graveyard. The explosion and what happened afterwards.~
END
++~Half the mountain exploded, we were unconscious for a while after we just escaped the caves, what about it?~+ CampRes5

CHAIN
IF~~THEN CVSan25J CampRes5
~Then just at this moment the former cowled wizard appeared with his story and questions.~
==CVShauq~Who was that?~
==CVSan25J~Madeen, a man who formerly worked for the cowled wizard leader Corneil, the one who collaborated with Thay. Madeen claimed to have pursued his former master himself as Corneil had betrayed him and killed his wife.~
==Keldo25a~A single man attempting what you barely could handle with all your company and experience?~
==CVSan25J~We did not question his story too much as it seemed to be quite unimportant to us at that time.~
==Thalan~Probably a lie. One part of the conspiracy just was blown up and - whoosh, the next player appeared to stay on your trail.~
==CVSan25J~You are most likely correct in this assumption, Thalantyr. The issue is that <CHARNAME> mentioned some names and the summer camp as our next destination while Madeen was there.~
END
++~Oh, my - I was still a bit dizzy from the explosion it seems, and not careful enough with my words.~+ CampRes6
++~So I gave it away carelessly...hm...My head was still spinning from that escape of the collapsing caves, it seems.~+ CampRes6

CHAIN
IF~~THEN CVSan25J CampRes6
~Now that all is clarified I propose we seal the place with Sarevok's symbol and return to the surface.~
==CVShauq~We will return home and start rebuilding the trade passage with Waterdeep.~
==CVShabab~Shauhana, we will see each other in six moons for our next conference at the Sune temple.~
==Keldo25a~Much has been achieved that our enemies had not planned in that way, I am sure.~
==CVMinsc~Friendship has been tested and has proven its strength.~
==CVSan25J~Our next destination lies far south now, friends, past Amkethran - the monastry of Ravencrest.~
=~I will now seal the portal.~EXIT

CHAIN
IF~Global("RTMons1","RTF040",1)~THEN CVSan25J RaveMon1
~I wonder if they would let us enter the monastery for our research just like that.~
DO~SetGlobal("RTMons1","RTF040",2)~
==CVLey25J IF~InParty("Leyala")~THEN~We must receive a badge from the sister harbour master. She inspects everyone who visits the town and hands out a badge to suitable visitors for the monastery.~
==CVSan25J IF~!InParty("Leyala")~THEN~They probably have a kind of security procedure. Maybe we should inquire over there at the harbor master building.~EXIT

CHAIN
IF~~THEN CVIzy25J VisAut2
~Ha, ya more than just so glad ya taken me along all the time. This is no problem for Isobel the Magnificent.~
DO~SetGlobal("RTGetOut","GLOBAL",4)~
==CVSan25J~No one ever doubted the value of an honest little thief in any company, *Isobel*.~
==CVIzy25J~Yeah, but a betterest leader would just mention it now and then jus' to keep spirits up and such, dontcha guess.~
==CVGIR25J IF~InParty("CVGiran")~THEN~There is always one to appreciate your presence in the party should you doubt it.~
==CVIzy25J IF~InParty("CVGiran")~THEN~(She kisses him enthusiastically.) That makes up for all the neglect I have to suffer and suffer from nasty <CHARNAME>. (She winks at you and embraces her ranger once again.)~EXIT