CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",0)~ THEN Thalan RTF1
~By the mighty Mystra! The seals have been broken...Who is so powerful...?~
DO~SetGlobal("RtFThal","LOCALS",1) ~
==CVSan25J ~Nothing to fear, old friend, no harm has been done. You will not need this protection any longer.~
==Thalan~Mystra!~
==CVSan25J ~Sandrah, old friend, it is Sandrah as long as I dwell on the Prime.~
==Thalan~My goddess, you have overcome those Talos troups then?~
==CVSan25J~They are no threat for you anymore. They were not after you in the first place, rather they tried to prevent our current meeting.~
==Thalan~Why is that, my g...my friend Sandrah?~
==CVSan25J~Me and <CHARNAME> once again walk the Prime as our enemies have chosen our former home as the battle ground against us.~
==Thalan IF ~Global("SanRompath","GLOBAL",1)~THEN~Talos dares to stand up against you and the God of Love and Hope?~
==Thalan IF ~Global("SanRompath","GLOBAL",2)~THEN~Talos dares to stand up against you and the Goddess of Love and Hope?~
==CVSan25J~Obviously he is one of those involved but he is surely not alone.~
=~While we are back in our mortal avatars our godly powers are reduced significantly. We have found a number of strange machinations of our foe up in the Stormhorns but I have need for your skills to analyse the samples with me.~
==Thalan IF~InParty("RTMeli")~THEN~(Laughs) I can imagine that the Permanent Apprentice is no big help on the case.~
==RTMeli IF~InParty("RTMeli")~THEN~I have improved quite some, Master Thalantyr, but even Sandrah cannot do the studies we need your help for without the aid of some laboratory like yours.~
==CVSan25J IF~InParty("RTMeli")~THEN~ Dealing with magic means constant learning for all of us.~
==Thalan IF~InParty("RTMeli")~THEN~Is he so bad that he needs the Goddess of All Magic herself to tutor him?~
==CVSan25J IF~InParty("RTMeli")~THEN~ (Laughs) Should I let him indent my reputation while trying his spells unobserved?~
==CVSan25J~ These are the items we have found, Thalantyr. I will not tell you my observations now, so you may inspect them unprejudiced.~
==Thalan~ Mhm, let me see...~DO~TakePartyItem("RTFlui") TakePartyItem("RTDScar") TakePartyItem("Misc65")~
=~Dear, I hate to say it...(Laughs) I need the help of two gods for some little errand...in my hasted flight from the Talos troup I have lost the Lens of Spectro Analysis required for the task at hand.~
END
++~Oh, no, something like that was to be expected!~ + RTF1b
++~Great, we've not done this kind of quest for some time now. The young ones need to learn this part of the adventuring live as well.~ + RTF1b

CHAIN
IF~~THEN Thalan RTF1b
~I'm sorry but there is no way other. I need the Lens for my analysis.~
=~Talos' men found me in the area of the old Xwart village south of here. I escaped in a hurried flight passing by the Fisherman's Lake and through the Red Canyons to reach the Hedge and call for Mystra's seals. Somewhere on that trail I lost my bag with the lens and some elixirs.~
END
++~Sigh, let's begin this search.~EXIT

CHAIN
IF WEIGHT #-3~ Global("RtFThal","LOCALS",1) !PartyHasItem("RTTalens")~ THEN Thalan RTF1n
~Sorry, but I can do nothing for you without the Lens of Spectro Analysis. It must be somewhere between here and the Xwart village.~EXIT

CHAIN
IF WEIGHT #-3~ Global("RtFThal","LOCALS",1) PartyHasItem("RTTalens")~ THEN Thalan RTF1y
~Great, you found my stuff. I will commence to analyse your specimen right away.~
DO~SetGlobal("RtFThal","LOCALS",2)  SetGlobalTimer("RTThalanStudy","LOCALS",ONE_DAY) TakePartyItem("RTTalens") AddexperienceParty(11000)~
=~I will need a day for my investigation, Sandrah.~
END
++~We will use the time to look for some old friends around Beregost and the Friendly Arm, I guess.~DO~RevealAreaOnMap("BG2300")~EXIT
++~We can use a bit of time to relax at Beregost.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",2)!GlobalTimerExpired("RTThalanStudy","LOCALS")~ THEN Thalan RTF2
~I make progress but I have not finished my analysis yet.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanRTFPlot1","GLOBAL",3) Global("RtFThal","LOCALS",2)GlobalTimerExpired("RTThalanStudy","LOCALS")~ THEN Thalan RTF3
~Sandrah, quite new and interesting things you have brought me to investigate. Shall we discuss our findings?~
DO~SetGlobal("RtFThal","LOCALS",3) SetGlobal("SanRTFPlot1","GLOBAL",4)~
==CVSan25J~Fine, the samples from the dead bodies first.~
==Thalan~You as a healer are surely better suited to interpret it but I can assure you those were real living creatures, even if their life was quite short.~
==CVSan25J~It matches with my results. Brage for example, I mean the dead Brage from the Stormhorns had the structure in flesh and hair of a baby - a creature who has lived for some weeks only and not yet aged.~
==Thalan~It matches to those tanks you found up in that laboratory...~
=~Now that substance. I have never seen anything alike before and I still have not found all of its ingrediences and abilities. Still, I can say, it is what more or less keeps those creatures alive.~
==CVSan25J~Probably that is why we found no blood on the battlefield.~
==Thalan~I think so. The substance nutures the bodies - it is also a very strong drug.~
==CVSan25J~It controls them?~
==Thalan~You may say so. They are on the one hand addicted to it, they need it to *live*. In addition, it controls their thoughts and perceptions completely.~
END
++~Are they golems disguised as people we have known?~+ RTF4

CHAIN
IF~~THEN Thalan RTF4
~Sandrah, would you call them such?~
==CVSan25J~I would rather say they are Clones, <CHARNAME>, made from some living material of the deceased. They were probably bred in those glass tanks we have seen and require this substance as nutrient. ~
==Thalan~Do not forget that somebody controls them like <CHARNAME> pointed out. In some way like golems you may say.~
==CVSan25J~Which brings us to the other connection we have found, the *Collector*.~ 
=~For the creation of such clones you need some living material of the person you clone.~
==Thalan~Hair or fingernails are ideal for that, as they continue growing - and living - even after  your death for a while as you can often observe on corpses.~
==CVSan25J~The kind of things our friend Nerkio was so keen to *collect*~
END
++~Oh my!! He took some of your hair back then in Amn!!~ + RTF5
++~Clones!! That is why those glasses reminded me of Athkatla - and of Irenicus~ + RTF5

CHAIN
IF~~THEN Thalan RTF5
~It looks like we have done what we can do with these things at the moment. It would be wise to get to the source of this Clone production.~
==CVSan25J~The installation in the Stormhorns was probably too small for the production of all the corpses we found. Maybe it was just a small repair and finishing station for those delivered from somewhere further away.~
==Thalan~As long as you have no trace of the Collector you may want to investigate with Irenicus. Even if he should not be involved directly he may at least know those who deal with such technology and knowledge.~
==CVSan25J~He may even know the Collector - someone must once have supplied him for his own experiments.~
END
++~Thank you for your help, Thalantyr. You should be once again save here.~ DO~EraseJournalEntry(@1730) AddJournalEntry(@2044,QUEST)~EXIT

CHAIN
IF WEIGHT #-3~Global("RTMeliQuest","GLOBAL",1)~THEN Thalan Melq1
~My boy, my boy...wait...~
DO~SetGlobal("RTMeliQuest","GLOBAL",2)~
==RTMeli~Master Thalantyr, you are short of breath, calm down. Something bad has happened?~
==Thalan~I am glad I could get a hold of you before you move on...~
=~My boy - you go onto an adventure of a magnitude I never had to face myself.~
==CVSan25J~You are a highly respected servant of Mystra, you always did what needed to be done.~
==Thalan~Thank you...but now to my boy - I dearly hope I prepared you well enough for what lies ahead.~
==RTMeli~I never thought you would care for me so much...outside of our professional relationship...~
==Thalan~Be aware that Thay rejects Mystra, our source and our strength. Still they are reported to possess artefacts as old as our art, scrolls of enourmous power and wisdom. Shouldst you find part of it, do not forget to share it with your old teacher on your return. And your return I will await, hoping and trusting it will be save.~
==RTMeli~Whether I find these things or not, master, I will return and come to see you so we may share the tales of my encounters in Thay.~
==Thalan~Farewell, Melicamp, may the goddess bless you.~DO~CreateVisualEffectObject("SPUNHOLY",Myself) ActionOverride("RTMeli",AddSpecialAbility("CVDra19"))Wait(2)ActionOverride("Thalantyr",EscapeArea()) ~ EXIT