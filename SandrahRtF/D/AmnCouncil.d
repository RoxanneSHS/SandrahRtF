APPEND ANOME25A
IF WEIGHT #-1~Global("AnomenSummoned","GLOBAL",3)~THEN BEGIN RTStart1
SAY~You...? We deemed you lost...nothing was heard of you for many years.~
IF~~THEN REPLY~I may smell funny from the days on the road but I'm not dead. Maybe we can exchange stories another time, you need to wait until then.~ DO~SetGlobal("AnomenSummoned","GLOBAL",2)~EXIT
IF~~THEN REPLY~We may exchange the tales of what has happened during our forthcoming days together, Anomen.~ GOTO 1
END
END

BEGIN RTBrega

IF~IsGabber([PC])~THEN BEGIN welcRT
SAY~Welcome once again, heroes of the Realms. Unless you have any business with the guards or any crimes to report you best talk to your old companion Nalia de'Arnise.~
IF~~THEN REPLY~We will do that. Good day~EXIT
IF~Global("Cowlhint","LOCALS",0)~THEN REPLY~I see no more cowled wizards around?~GOTO NoCowl
END

IF~~THEN BEGIN NoCowl
SAY~After the Bhaal war had ended, they somehow lost Mystra's blessing. They were powerless and forced to leave Amn. Some say they found new sources for their magic with the red wizards of Thay.~
IF~~THEN DO~SetGlobal("Cowlhint","LOCALS",1)~EXIT
END

BEGIN RTHals
IF~Global("SanRTFPlot1","GLOBAL",4)~THEN BEGIN NoDisc
SAY~There is nothing to see here, citizens. The garrison is off limits this time.~
IF~OR(2) GlobalGT("RTTalkedSaem","GLOBAL",0)GlobalGT("RTTalkedNalia","GLOBAL",0)~THEN REPLY~We are friends of Governor de'Arnise, man. We will prevent any unnecessary bloodshed in the docks.~GOTO NoDisc2
IF~OR(2) GlobalGT("RTTalkedSaem","GLOBAL",0)GlobalGT("RTTalkedNalia","GLOBAL",0)~THEN REPLY~(Bluff) You have no more business here, we have settled the discourse between the Governor and the Guild.~ GOTO NoDisc2
IF~~THEN REPLY~What is your purpose here in the docks with such massive fortification?~ GOTO NoDisc3
END

IF~~THEN BEGIN  NoDisc3
SAY~We will soon clean this area from all scum. The order of the Governor may arrive any moment. Best get yourself out of the way, citizen.~
IF~~THEN REPLY~Don't try to threaten me, tin head.~EXIT
IF~~THEN REPLY~We will make sure this will not happen.~EXIT
END

IF~~THEN BEGIN  NoDisc2
SAY~I take only signed orders from the Governor herself, such is her personal command. Keep moving.~
IF~~THEN REPLY~Tin head.~EXIT
END

IF~GlobalGT("SanRTFPlot1","GLOBAL",4)~THEN BEGIN NoFight
SAY~What is it again, citizens. The garrison is off limits for your kind.~
IF~~THEN REPLY~The discourse has been settled, Saemon will become part of the local authority and board member of the Charity House soon to be established here in the docks. Nalia has sealed his appointment, see.~ GOTO NoFight2
END

IF~~THEN BEGIN NoFight2
SAY~We fear no fight but my heart always had hoped for a peaceful solution. This is good news.~
IF~~THEN DO ~SetGlobal("RTHalSt","ar0300",2) AddexperienceParty(8000) ReputationInc(1)EscapeArea() ~EXIT
END

BEGIN RTCaptCC

IF~Global("CCClosed","ar0400",1)AreaCheck("ar0400") ~THEN BEGIN CloseCC1
SAY~The Copper Coronet is closed by the council for sanitary reasons. Find another inn, there are enough in town.~
IF~~THEN DO~SetGlobal("CCClosed","ar0400",2)~EXIT
END

IF~ Global("CCClosed","ar0400",2)AreaCheck("ar0400") ~THEN BEGIN CloseCC2
SAY ~There is nothing to see here. Move on.~
IF~~THEN EXIT
END

BEGIN RTNalia

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",0) ~THEN RTNalia RTNal1
~Sandrah!! <CHARNAME>!! You have returned, what a surprise.~
DO~SetGlobal("RTTalkedNalia","GLOBAL",1)~
==CVSan25J~Nalia, Governor...~
==RTNalia~Just Nalia for you, my friends.~
=~Ah, those old adventuring days - it looks like you are once again on a mission the way you are equipped. Too bad my new duties will not allow me to join forces with you.~
==CVSan25J~Still you may be of some importance with the help you surely will grant us.~
==RTNalia~Everything that is in my not so small power.~
==CVSan25J~We need to get in contact with Jon Irenicus who has returned to Athkatla and his old place again.~
==RTNalia~I have heard the rumours about it but we have not seen any hints or disturbances from his presence. If he has returned indeed he does not plague us.~
END
IF~Global("RTTalkedSaem","GLOBAL",1)~THEN REPLY ~Such is true, he has retired in some way. Saemon's men supply him with all he needs but he stays in his self designed exile.~+RTNal3
IF~Global("RTTalkedSaem","GLOBAL",0)~THEN REPLY~We heard he has retired in some way. Anyway, we need some information from him and hope he will cooperate with us. We need to find a way to get to him.~+RTNal2
IF~Global("RTTalkedSaem","GLOBAL",1)~THEN REPLY~We intend to keep it that way, still we need to find a way to get to him. Saemon's men supply him with all he needs...~+RTNal3
IF~Global("RTTalkedSaem","GLOBAL",0)~THEN REPLY~We intend to keep it that way, still we need to find a way to get to him. ~ +RTNal2


CHAIN
IF~~THEN RTNalia RTNal2
~I am afraid I am of little help with that. As long as things stay quiet with him, the council has no reason to investigate for Irenicus.~
==CVSan25J~He does not live from plain air, so much is sure. He needs some supplies from the outside.~
==RTNalia~Ha, there is just one who could provide that...but the days will soon be over!~
==CVSan25J~You are talking about the Thieves Guild?~
==RTNalia~They still rule the docks and slums, and Saemon Havarian walks the streets as if he were a Council member - that scoundrel. But his days are counted.~
==CVSan25J~Do you really plan to disturb Athkatla with a move against the Guild?~
==RTNalia~What must be done will be done. The garrison in the docks has been enforced. If you have the intention to deal with Saemon then do it quickly before we strike.~
END
++~We must talk to him urgently. Let us go quickly, Sandrah.~EXIT
++~We need Irenicus. Maybe we can talk to Saemon and find a solution for your problem as well.~EXIT

CHAIN
IF~~THEN RTNalia RTNal3
~YOU met that scoundrel already!! ...but the days will soon be over!~
==CVSan25J~He told us about the tension growing between you. Do you really plan to disturb Athkatla with a move against the Guild?~
==RTNalia~They still rule the docks and slums, and Saemon Havarian walks the streets as if he were a Council member - that scoundrel. The garrison in the docks has been enforced. If you have the intention to deal with Saemon then do it quickly before we strike.~
==CVSan25J~That is a lot of effort and money spent, Nalia. And a large amount of losses for both sides. Resources that could be spent much better for the benefit of Athkatla's citizens.~
==RTNalia~It could be spared if Saemon would leave town in peace.~
==CVSan25J~Havarian has never been a friend of bloodshed, Nalia, nor is his regime in the docks and slums one of terror. In a way the Guild has always guaranteed some stability where otherwise crime would go out of hands.~
==RTNalia~You sound like you would give him the seat in council he may be after.~
==CVSan25J~I would not go so far...but he may be willing to take some further responsibility in the areas he controls - for the benefit of Athkatla.~
==RTNalia~He will loose a lot regardless how the fight ends.~
==CVSan25J~I have an idea of how all of that may be prevented. We need to talk to him again. Give us your word to hold any action against him meanwhile.~
==RTNalia~As long as no murder is reported from the slums or docks, I will give you three days to come up with an acceptable solution, Sandrah. I know I can put my trust in you and <CHARNAME>.~DO~SetGlobal("RTTalkedNalia","GLOBAL",2) ~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",1) Global("RTTalkedSaem","GLOBAL",1) ~THEN RTNalia RTNal4
~You returned, my friends. Did you succeed?~
==CVSan25J ~Saemon is very much disturbed by the threat from your garrison in the docks.~
==RTNalia~He has any reason to be.~
==CVSan25J~That is a lot of effort and money spent, Nalia. And a large amount of losses for both sides. Resources that could be spent much better for the benefit of Athkatla's citizens.~
==RTNalia~It could be spared if Saemon would leave town in peace.~
==CVSan25J~Havarian has never been a friend of bloodshed, Nalia, nor is his regime in the docks and slums one of terror. In a way the Guild has always guaranteed some stability where otherwise crime would go out of hands.~
==RTNalia~You sound like you would give him the seat in council he may be after.~
==CVSan25J~I would not go so far...but he may be willing to take some further responsibility in the areas he controls - for the benefit of Athkatla.~
==RTNalia~He will loose a lot regardless how the fight ends.~
==CVSan25J~I have an idea of how all of that may be prevented. We need to talk to him again. Give us your word to hold any action against him meanwhile.~
==RTNalia~As long as no murder is reported from the slums or docks, I will give you three days to come up with an acceptable solution, Sandrah. I know I can put my trust in you and <CHARNAME>.~DO~SetGlobal("RTTalkedNalia","GLOBAL",2) ~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",4) Global("RTTalkedNalia","GLOBAL",2) Global("RTTalkedSaem","GLOBAL",2) ~THEN RTNalia RTNal4
~You returned, my friends. Any solution in sight?~
==CVSan25J~The Guild is willing to give the unused Guild's building in the docks into the hands of the Government.~
==RTNalia~A large building that could be turned to good use. But how to prevent our action by this, is it a bribe?~
==CVSan25J~There is a bit more to it, Saemon is also willing to contribute half of the cost for the Charity House to be established there. The other half can be easily afforded by the Council from the saved money of the crusade you planned.~
==RTNalia~A hospital and orphanage in the docks - where the poor need it the most, oh Sandrah, <CHARNAME>!! This is very good news. More than I expected, really.~
==CVSan25J~There is a small condition still, Nalia.~
==RTNalia~You have achieved so much, let me hear it.~
==CVSan25J~Saemon wants to be appointed as one of the board members for the institution.~
==RTNalia~Well...~
=~Hm...~
=~...yes, this will give him some respectability he so yearns for - it will also give him responsibility for the safety and wealth of the house. I accept. I will write and seal his appointment right away.~DO~GiveItemCreate("rtnalsa",Player1,1,0,0)SetGlobal("SanRTFPlot1","GLOBAL",5)~ EXIT




