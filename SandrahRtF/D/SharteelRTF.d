CHAIN
IF WEIGHT #-1~GlobalGT("SanBeginRTF","GLOBAL",1) Global("RTFSharInfo","GLOBAL",0)OR(2)Global("SanRTFPlot1","GLOBAL",0) Global("SanRTFPlot1","GLOBAL",1) ~ THEN CVShabab GetStarted
~ Who is...<CHARNAME>!!!! How unexpected but not unwelcome.~
DO~SetGlobal("RTFSharInfo","GLOBAL",1)~
==CVSAN25J~ High Commander Dosan (giggle), hello, Wildcat.~
==CVShabab~ (Laughs harshly) Let no one ouside these walls hear you calling me that, Pussycat. How good to see you in times like these.~
== CVShabab IF~GlobalGT("SanSharInt","GLOBAL",40)~THEN~Regardless how others may call you, Loverboy, you are my man and may play that god and hero role elsewhere. This house is mine to command. (Smiles and comes to kiss you passionately).~
== CVShabab IF~GlobalLT("SanSharInt","GLOBAL",40)~THEN~The god of love and hope in my *humble* house, who would have guessed...~
== SanKaba ~ My name is Khalindra, I like you.~
== SanGori ~ Mama showed us the stars in the garden last night, always pointing to the ones that are Mystra and Hope.~
==CVSAN25J~ Apart from the happy family things are not too good as we hear.~
== CVShabab~ Please, not in front of the children, my friends. Let us go to the Command Room next door (She points to the secret door that becomes visible as the bookshelf slides aside behind her). We have a number of authorities in need of discussing the situation with me. Come along.~DO~SetGlobal("Sharopens","CVElm7",2) EscapeAreaMove("RTF001",618,582,7)~EXIT


CHAIN
IF WEIGHT #-2~ Global("RTFSharInfo","GLOBAL",1) GlobalLT("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab InitRtF1
~We have received unexpected visitors, gentlemen - and maybe unexpected help, I hope. <CHARNAME> and, eh, Mystra....~
DO~SetGlobal("SanRTFPlot1","GLOBAL",1) SetGlobal("RTFSharInfo","GLOBAL",2)~
==CVSan25J~ I prefer Sandrah as long as I dwell on the Prime. In a sense we are here incognito.~
==Belt~Help from the gods themselves. I did not think things were that bad yet.~
==Keldda~You have always been a force of hope and light in the past. May our current meeting have similar results.~
==Keldo25a ~The Order is ready to strike. We may well solve those little problems by ourselve.~
==CVSan25J~I hope you will have no need to strike, at least not until we know all the facts.~
==Keldo25a~It was a mistake to trust orcs, even worse...half-orcs.~
==CVShabab~Prelate Keldorn, please. Let us hear facts not prejudice.~
=~ You see how things are, <CHARNAME>, my own attempts to shed light in recent events have failed so far and my folks get very nervous about it. Some start to talk of another war already - after all we thought we had achieved (sigh).~
==CVSan25J~We are ready to listen and decide on our course afterwards, Shar-Teel.~
==CVShabab~It has been peaceful between Shauhana's Clan Orcs and our town for a decade. The Neutral Zone has been respected by both sides and eventual trespassers have been punished adequately. We established trade with Hai 'Ulthak with benefits for both sides.~
=~Five summers ago all together, orc, dwarf and Waterdeep men, built the Hornswamp bridge to make trade easier and safer. ~
=~But since two moons dark clouds have appeared. Trade stopped. Rumours were heard that troups were sighted on the Hornswamp fields. I send messengers to Hai 'Ulthak but they are overdue. Prelate Keldorn wants to move his Paladins north to investigate but I reject - it would be a transgression of the Neutral Zone and may really cause war with the Clans.~
==CVSan25J~We are neutral, my friend. It is obviously the best if we do the investigation before anyone would do a false move with unwanted effects.~
==Keldda~Exactly - if you could follow the trade route and find the truth, it would be helpful. Maybe you can even make the full journey to Shauhana's residence and give her the report and assure her that we intend no violence.~
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",0)~THEN~Shauhana's residence?~
==Belt IF ~Global("RTFShauInfo","GLOBAL",0)~THEN~The Clans have recovered an ancient palace near their dwellings and rebuilt parts of it. Even some dwarfs that helped building the bridge have moved into an ancient smitty below the palace and supply the Clans with armour and weapons.~
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",1)~THEN~We saw Shauhana already and she gave a similar story of the events.~
==CVShabab IF ~Global("RTFShauInfo","GLOBAL",1)~THEN~ I am relieved to hear that - and troubled at the same time. Someone has started a major intrigue, it seems.~
==CVSan25J~Who gave you the reports about those events on the Hornswamp, are your sources to be trusted?~
==Keldo25a~A trader, Nerkio by name, he set up his post on the pass some time ago and supplies the caravans passing through. He saw the troups but was afraid to get near them for details.~
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",0)~THEN~Nerkio...(where have I heard that name before?)...~
==CVSan25J IF ~Global("RTFShauInfo","GLOBAL",1)~THEN~Nerkio...he seems to be in a lot of places these days...~
END
++~What are we to do precisely?~+ InitRtF2

CHAIN
IF~~THEN CVShabab InitRtF2
~The trade route goes north from Waterdeep's North East Gate. It goes up towards the ancient Sune temple and on and to the high fields of the Hornswamp. Finally it crosses the newly build bridge to the former Bear Clan village.~
==CVSan25J~I know that old sune place, Shar-Teel. We can reach it from the North East quarter.~
==CVShabab~I would be more than grateful if you could do that my friends.~
=~If you leave my house and follow the Inner Walls westbound you will find the Guard's passage to the North East gate. You may also choose to use the way from Old Waterdeep Road and go west.~
END
++~I beg you all to stay calm, friends, and not act until we return from our investigation.~
EXIT

ADD_TRANS_TRIGGER Belt 0
~!AreaCheck("RTF001")~

CHAIN
IF WEIGHT #-2~ Global("RTFSharInfo","GLOBAL",1) Global("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab Labfound1
~We have received unexpected visitors, gentlemen - and maybe unexpected help, I hope. <CHARNAME> and, eh, Mystra....~
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFSharInfo","GLOBAL",4)~
==CVSan25J~ I prefer Sandrah as long as I dwell on the Prime. In a sense we are here incognito.~
==Belt~Help from the gods themselves. I did not think things were that bad yet.~
==Keldda~You have always beem a force of hope and light in the past. May our current meeting have similar results.~
==Keldo25a ~The Order is ready to strike. We may well solve those little problems by ourselve.~
==CVSan25J~I hope you will have no need to strike, at least not until we know all the facts.~
==Keldo25a~It was a mistake to trust orcs, even worse half-orcs.~
==CVShabab~Prelate Keldorn, please. Let us hear facts not prejudice.~
=~ You see how things are, <CHARNAME>, my own attempts to shed light in recent events have failed so far and my folks get very nervous about it. Some start to talk of another war already - after all we thought we had achieved (sigh).~
==CVSan25J~We are ready to listen and decide on our course afterwards, Shar-Teel.~
==CVShabab~It has been peaceful between Shauhana's Clan Orcs and our town for a decade. The Neutral Zone has been respected by both sides and eventual trespassers have been punished adequately. We established trade with Hai 'Ulthak with benefits for both sides.~
=~Five summers ago all together, orc, dwarf and Waterdeep men, built the Hornswamp bridge to make trade easier and safer. ~
=~But since two moons dark clouds have appeared. Trade stopped. Rumours were heard that troups were sighted on the Hornswamp fields. I send messengers to Hai 'Ulthak but they are overdue. Prelate Keldorn wants to move his Paladins north to investigate but I reject - it would be a transgression of the Neutral Zone and may really cause war with the Clans.~
==CVSan25J~We have received a similar story from Shauhana already. We came through the passage as we are neutral and investigated the case.~
=~*Sandrah and yourself provide the friends with a detailed report about your findings.*~
==Keldda~Very good news for peace even if the intrigue itself is disturbing.~
==CVSan25J~I propose you send messengers to Shauhana and propose a meeting between the two sides. The passage should be safe again. Meanwhile we will pick up the scent to find out who is behind this whole intrigue against all of us.~
==Belt~Commander, I volunteer to be the messenger to Hai 'Ulthak myself this time. I will propose Shauhana to meet at the former Summer Camp in the Neutral Zone in a tenday from now.~
==CVSan25J~Very good. Hopefully we will have some news until then and can join the meeting.~
==CVShabab~So be it. Let us commence at once.~DO~ActionOverride("Belt",EscapeArea()) ActionOverride("Keldorn",EscapeArea())ActionOverride("CVShabab",EscapeArea())~EXIT

CHAIN
IF WEIGHT #-2~ GlobalGT("RTFSharInfo","GLOBAL",1) Global("SanRTFPlot1","GLOBAL",1) Global("RTFFoundLab402","GLOBAL",3)~ THEN CVShabab Labfound2
~Ah, our friends have returned. Hopefully there is good news.~
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFSharInfo","GLOBAL",4)~
==CVSan25J~Good for peace in the Realms, at least at the moment, but nonetheless disturbing.~
=~*Sandrah and yourself provide the friends with a detailed report about your findings.*~
==Keldda~Very good news for peace even if the intrigue itself is disturbing.~
==CVSan25J~I propose you send messengers to Shauhana and propose a meeting between the two sides. The passage should be safe again. Meanwhile we will pick up the scent to find out who is behind this whole intrigue against all of us.~
==Belt~Commander, I volunteer to be the messenger to Hai 'Ulthak myself this time. I will propose Shauhana to meet at the former Summer Camp in the Neutral Zone in a tenday from now.~
==CVSan25J~Very good. Hopefully we will have some news until then and can join the meeting.~
==CVShabab~So be it. Let us commence at once.~DO~ActionOverride("Belt",EscapeArea()) ActionOverride("Keldorn",EscapeArea())ActionOverride("CVShabab",EscapeArea())~EXIT