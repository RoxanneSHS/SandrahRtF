CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0) AreaCheck("CVRTF8")~THEN Shaorc1 Task
~The heroes and friends of the queen. Troubled times but are you still friends?~
==CVSan25J~We have come to investigate just that. There are rumours but I stand to Shauhana unless I learn otherwise.~
==Shaorc1~Hornswamp road is troubled, messengers are missing to Waterdeep, dark clouds over the passes.~
==CVSan25J~We have come to talk about all with your queen. Where is she to be found?~
==Shaorc1~Is in big warroom, talk with Prince Giran to see her.~EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedToGT(0) AreaCheck("CVRTF8")~THEN Shaorc1 Hint
~I wonder what those mysterious dwarf smiths do in the low level. Good weapons they make.~EXIT

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedTo(0) AreaCheck("CVRTF8")~THEN CVMinsc RtF1
~Friends...<CHARNAME>, Sandrah...it is good you have come. I know you will help us, Shauhana struggles hard to hold back our orcs from bloodshed with the south again.~
==CVSan25J~We are here to do exactly that, old friend, we look into the whole affair and do what can be done.~
==CVMinsc~I trust you, just like I ever did and it was always good.~DO~MoveToObjectNoInterrupt("CVShauq") ~EXIT


CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) NumTimesTalkedToGT(0) AreaCheck("CVRTF8")~THEN CVMinsc RtF2
~It will all turn out well, I know.~EXIT

CHAIN
IF~ GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8")OR(2)Global("SanRTFPlot1","GLOBAL",0) Global("SanRTFPlot1","GLOBAL",1) !Global("RTFFoundLab402","GLOBAL",3)Global("RTFShauInfo","GLOBAL",0) ~ THEN CVShauq InitRtF1
~Who dares...<CHARNAME>!! Sandrah!! How unexpected but yet welcome.~
DO~SetGlobal("SanRTFPlot1","GLOBAL",1) SetGlobal("RTFShauInfo","GLOBAL",1)~
==CVSan25J~Shauhana, it is not in the best of times that we arrive, but hopefully we can do something to improve the situation.~
==CVShauq~ I hope you can as my own attempts have failed so far and my folks get very nervous about it. Some start to talk of another war already - after all we thought we had achieved already (sigh).~
==CVSan25J~We are ready to listen and decide on our course afterwards, Shauhana.~
==CVShauq~It has been peace between Clan Orcs and the South for ten summers, my friends. The Neutral Zone has been respected by both sides and eventual trespassers have been punished adequately. We established trade with the Sword Coast with benefits for both sides.~
=~Five summers ago orc, dwarf and Waterdeep men built together the Hornswamp bridge to make trade easier and safer. It was a big celebration - Minsc was drunk on meade for five days, oh my.~
=~But since two moons dark clouds have appeared. Trade stopped. Rumours were heard that troups were sighted on the Hornswamp fields. I send messengers to Waterdeep but they are overdue. Minsc wants to move his berserkers south to investigate but I reject - it would be a transgression of the Neutral Zone and may really cause war with the Sword Coast.~
==CVSan25J~We are neutral, my friend. It is obviously the best if we do the investigation before anyone would do a false move with unwanted effects.~
==CVShauq~Exactly - if you could follow the trade route and find the truth, it would be helpful. Maybe you can even make the full journey to Waterdeep and give Shar-Teel the report and assure her that we intend no violence.~
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",0)~THEN~Shar-Teel is in charge in Waterdeep?~
==CVShauq IF ~Global("RTFSharInfo","GLOBAL",0)~THEN~She is the High Commander. Prelate Keldorn of Athkatla and Keldath Ormlyr of the Sword Coast Towns will listen to her verdict.~
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",2)~THEN~We saw Shar-Teel already and she gave a similar story of the events.~
==CVShauq IF ~Global("RTFSharInfo","GLOBAL",2)~ THEN~I am relieved to hear that - and troubled at the same time. Someone wants to separate us again, it seems.~
==CVSan25J~Who gave you the reports about those events, are your sources to be trusted?~
==CVShauq~A trader, Nerkio by name, set up his post on the pass some time ago and supplies the caravans passing through. He saw the troups but was afraid to get near them for details.~
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",0)~THEN~Nerkio...(where have I heard that name before?)...~
==CVSan25J IF ~Global("RTFSharInfo","GLOBAL",2)~THEN~Nerkio...he seems to be in a lot of places these days...~
END
++~What are we to do precisely?~+ InitRtF2

CHAIN
IF~~THEN CVShauq InitRtF2
~The trade route goes south from old Bear Clan Village where we once defeated our foe together. It crosses the newly built bridge and the high fields of the Hornswamp and goes down towards Waterdeep's ancient Sune temple.~
==CVSan25J~I know that old place, Shauhana. From there we can travel onwards to the Capitale from the north east.~
==CVShauq~I would be more than grateful if you could do that my friends.~
=~There is another, a more personal wish from a caring mother, <CHARNAME>, if you care to listen.~
END
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY~ It's about Giran, isn't it?~ + InitRtF3
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY~If it's about your little prince boy, forget it. We will not nurse fledgling adventurers, Queen Shauhana, forget it...~ EXTERN CVSan25J TakeGiran
++~Will you ask to join us again, now Giran looks like he's grown?~ + InitRtF3
++~Anything you wish, my orc queen.~ + InitRtF3

CHAIN
IF~~THEN CVSan25J TakeGiran
~Stop that, <CHARNAME>. If someone would have treated you like that when you were his age, sssh.~
==CVShauq~You understand, Sandrah, I knew you would.~EXTERN CVShauq InitRtF3

CHAIN
IF~~THEN CVShauq InitRtF3
~Giran, our son, has trained and learned well with his father. He is no longer a child and has proven his courage and skills on a number of occasions already.~
=~I have agreed with Minsc that it is time he sees more of the Realms and learns outside of our society as well. He may one day become leader here and he needs wisdom and experience for that.~
==CVSan25J~A djahemma, like it was custom in his father's land?~
DO~SetGlobal("SanRTFGiranOK","GLOBAL",2)~
==CVShauq~Call it that, yes. Minsc has told us much about that time in his life and filled the boy's head with it. And I agree - it is a good chance to learn and grow...maybe find even a companion of his kin, he is a bit tired of the orc girls of his age it seems...~
==CVSan25J~In the company of trusted friends you may not fear for him, Shauhana.~
==CVShauq~Let's call him, I have prepared a special gift for this occasion.~
END
++~Let's bring the boy the good news. He seems quite capable in my eyes.~ DO~ActionOverride("CVGiran",MoveToObjectNoInterrupt(Player1))~EXIT


CHAIN
IF~ GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8") Global("SanRTFPlot1","GLOBAL",1)Global("RTFFoundLab402","GLOBAL",3) Global("RTFShauInfo","GLOBAL",0)~ THEN CVShauq InitRtF7
~Who dares...<CHARNAME>!! Sandrah!! How unexpected but yet welcome.~
DO~SetGlobal("SanRTFPlot1","GLOBAL",2)SetGlobal("RTFShauInfo","GLOBAL",4)~
==CVSan25J~Shauhana, it is not in the best of times that we arrive, but hopefully we can do something to improve the situation.~
==CVShauq~ I hope you can as my own attempts have failed so far and my folks get very nervous about it. Some start to talk of another war already - after all we thought we had achieved already (sigh).~
==CVSan25J~We are ready to listen and decide on our course afterwards, Shauhana.~
==CVShauq~It has been peace between Clan Orcs and the South for ten summers, my friends. The Neutral Zone has been respected by both sides and eventual trespassers have been punished adequately. We established trade with the Sword Coast with benefits for both sides.~
=~Five summers ago orc, dwarf and Waterdeep men built together the Hornswamp bridge to make trade easier and safer. It was a big celebration - Minsc was drunk on meade for five days, oh my.~
=~But since two moons dark clouds have appeared. Trade stopped. Rumours were heard that troups were sighted on the Hornswamp fields. I send messengers to Waterdeep but they are overdue. Minsc wants to move his berserkers south to investigate but I reject - it would be a transgression of the Neutral Zone and may really cause war with the Sword Coast.~
==CVSan25J~We have received a similar story from Shar-Teel already. We came through the passage as we are neutral and investigated the case.~
=~*Sandrah and yourself provide the orc queen with a detailed report about your findings.*~
==CVShauq~Very good news for peace even if the intrigue itself is disturbing.~
==CVSan25J~I propose you send messengers to Shar-Teel and propose a meeting between the two sides. The passage should be safe again. Meanwhile we will pick up the scent to find out who is behind this whole intrigue against all of us.~
==CVShauq~I will ask Minsc himself to go as a symbol for our trust. I will propose Shar-Teel to meet at the former Summer Camp in the Neutral Zone in a tenday from now.~
==CVSan25J~Very good. Hopefully we will have some news until then and can join the meeting.~
==CVShauq~So be it. Let us commence at once.~
=~There is another, a more personal wish from a caring mother, <CHARNAME>, if you care to listen.~
END
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY~ It's about Giran, isn't it?~ + InitRtF3
IF~Global("SanRTFGiranOK","GLOBAL",1)~THEN REPLY~If it's about your little prince boy, forget it. We will not nurse fledgling adventurers, Queen Shauhana, forget it...~ EXTERN CVSan25J TakeGiran
++~Will you ask to join us again, now Giran looks like he's grown?~ + InitRtF3
++~Anything you wish, my orc queen.~ + InitRtF3

CHAIN
IF~GlobalGT("SanBeginRTF","GLOBAL",1) AreaCheck("CVRTF8")Global("SanRTFPlot1","GLOBAL",1)Global("RTFFoundLab402","GLOBAL",3) Global("RTFShauInfo","GLOBAL",1)~  THEN CVShauq Labfound3
~Ah, our friends have returned. Hopefully there is good news.~
DO~SetGlobal("SanRTFPlot1","GLOBAL",2) SetGlobal("RTFShauInfo","GLOBAL",4)~
==CVSan25J~Good for peace in the Realms, at least at the moment, but nonetheless disturbing.~
=~*Sandrah and yourself provide the friends with a detailed report about your findings.*~
==CVShauq~Very good news for peace even if the intrigue itself is disturbing.~
==CVSan25J~I propose you send messengers to Shar-Teel and propose a meeting between the two sides. The passage should be safe again. Meanwhile we will pick up the scent to find out who is behind this whole intrigue against all of us.~
==CVShauq~I will ask Minsc himself to go as a symbol for our trust. I will propose Shar-Teel to meet at the former Summer Camp in the Neutral Zone in a tenday from now.~
==CVSan25J~Very good. Hopefully we will have some news until then and can join the meeting.~
==CVShauq~So be it. Let us commence at once.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("RTGoRaven","LOCALS",4)~THEN CVSan25J CampAttack1
~Wallrick? What do you do here?~
DO~SetGlobal("RTGoRaven","LOCALS",5)SetGlobal("SanRTFPlot2","GLOBAL",2)~
==CVOrwarl~We are under an attack, friends. Listen, we need your help immediately.~
==CVSan25J~ What has happened, Wallrick?~
==CVOrwarl~ The summer camp is under attack and siege. We know not how they have found out, but they must have known our leaders are up there with only few guards to protect the peaceful conference.~
=~The attack started two days ago and caught us by surprise. All sorts of clones it seems are involved led by a mysterious lich mage all in white.~
==CVSan25J~ We have encountered him already...~
==CVOrwarl~ I am on my way to alert the berserker legion of Hai 'Ulthak, but it may take us too long to reach the camp...~
==CVSan25J~Where are the others?~
==CVOrwarl~Shauhana and Shar-Teel and the other conference members fought hard but where driven down to the lower levels of the old fortress. The enemy hordes have overrun the camp so they are trapped down there now.~
==CVOrwarl~I was separated with the few guards we had on the surface and had to retreat to get re-enforcements. I think our heroes can defend themselves for some time, as the caverns and basements below the fort are narrow and the large enemy forces cannot make use of their larger numbers. As long as they keep their spirit and their rations I fear not for them.~
==CVSan25J~It sounds clear for me, Wallrick. You will lead the berserkers to the camp to stop further supplies and clear the surface.~
=~The rescue operation in the dungeon is the task of a well experienced small group that can strike by surprise and advance to the shelter of our friends through the tunnels below the fort.~
==CVOrwarl~That is exactly as I see it as well, Sandrah. This is why I have notified you.~ DO~EscapeArea()~
==CVSan25J~We are on our way, Wallrick, let us do as proposed. Right, <CHARNAME>?~
END
++~ I heard my buzzword, Sandrah, a small experienced adventurer group clearing out a monster infested dungeon - that's us. Let's go.~ EXIT
++~ Exactly the task for which we came down to Faerun, isn't it.~EXIT


APPEND F_DWSmit
IF WEIGHT #-4~AreaCheck("CVRTF9")NumTimesTalkedTo(0) ~THEN BEGIN Storm1
SAY~By Moradin's hammer, I need a strong dwarven ale! Long it has been since I have seen ya. Was up in dem blasted mountains in the north. Much better place I found with those orcs, think of it...dwarfs 'n' orcs together. But now - wanna see my offers?~
IF~~THEN REPLY~We have all we need, I guess.~EXIT
IF~~THEN REPLY~Sure, dwarven quality is always worth looking at.~DO~StartStore("RTshaust",LastTalkedToBy()) ~EXIT
END

IF WEIGHT #-4~AreaCheck("CVRTF9")NumTimesTalkedToGT(0) ~THEN BEGIN Storm2
SAY~Aye, yer back and still alive, what do ye want?~
IF~~THEN REPLY~We have all we need, I guess.~EXIT
IF~~THEN REPLY~Sure, dwarven quality is always worth looking at.~DO~StartStore("RTshaust",LastTalkedToBy()) ~EXIT
END
END



