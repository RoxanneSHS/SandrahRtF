BEGIN RTMeli
BEGIN RTKid
BEGIN RTMom
BEGIN RTMeEle

BEGIN RTOrcMel

IF~GlobalLT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Hint
SAY~You seek Nildjek? Go to house east.~
IF~~THEN EXIT
END

IF~GlobalGT("RTGiranQuest","GLOBAL",17)~THEN BEGIN Thank
SAY~Always welcome to Clan Orc new town, friends.~
IF~~THEN EXIT
END

CHAIN
IF~AreaCheck("RTF005") NumTimesTalkedTo(0)!InParty(Myself)~THEN RTMeli Desas1
~ <CHARNAME>, Sandrah!!! ....oh...~
==CVSan25J~Melicamp?? Would it be that you are responsible for that disaster around here?~
==RTMeli~I was guessing it wouldst be rather save to do my new enchantment training out here. People avoid the old Sune temple for fear of monsters and such...~
==CVSan25J~Rightfully so, I would say. So this was another of your failed experiments then?~
==RTMeli~Failed? Oh, no, this was a GREAT success. Tell me of a sorcerer you know who could create such a multitude of the most dangerous creatures in one spell?~
==CVSan25J~I would prefer any sorcerer who had control of the creatures he summons.~
==RTMeli~Eh...yes...I'd prefer that myself - hence the training out here.~
==CVSan25J~I see. Nevertheless it went a bit out of hand. What do you think would have become of those beasts without our intervention?~
==RTMeli~Well...eh...I had hoped the cold climate would take its toll - and hunger...~
==CVSan25J~They would have had you to feed on just for starters...~
==RTMeli~As now you are here...I mean...it is obvious I need a bit more oversight in my studies still. A disciple of Mystra would be adequate for a sorcerer of my capability, don't you agree, Sandrah.~
==CVSan25J~You want me to teach you, Melicamp? I am no mage and no sorcerer.~
==RTMeli~Oh, I am past the age of tutors and classrooms, I need a friend by my side to give me the right hint now and then to improve my casting.~
==CVSan25J~What do you say, <CHARNAME>, a sorcerer in our midst would be useful.~
END
++~It would be but not that lifetime apprentice - forget it.~+Desas2
++~If you oversee his deeds, Sandrah, we may give it a try.~+Desas3

CHAIN
IF~~THEN RTMeli Desas2
~Too bad, my reputation found me even here. Well, I continue to improve here in solitude then, ready any time to join you shouldst you change your mind.~ EXIT

CHAIN
IF~~THEN RTMeli Desas3
~Wonderful - great!! You will not regret it.~
DO~SetGlobal("MeliJoin","LOCALS",1) JoinParty()~EXIT

CHAIN
IF~AreaCheck("RTF005") NumTimesTalkedToGT(0)!InParty(Myself)~THEN RTMeli Desas4
~ <CHARNAME>, you have changed your mind? May I join.~
END
++~No, we were just checking if you already managed to kill yourself with your magical fumblings.~ +Desas2
++~If you oversee his deeds, Sandrah, we may give it a try.~+Desas3

CHAIN
IF~Global("RTMelibant","GLOBAL",1)~THEN RTMeli ScHint
~I will learn so much more in company and real action than in all my experiments so far.~
DO~SetGlobal("RTMelibant","GLOBAL",2)~
==CVSan25J~Say, you have been in the temple for some while, you must have observed everybody passing through?~
==RTMeli~It's a quiet place, that's why I chose it. There was not much traffic these days.~
=~Two elite scouts went up to the pass a few days ago, that's about all.~
==CVSan25J~Nobody came down again, are you sure?~
==RTMeli~No....ah, wait a second, that trader from the pass comes and goes at all weird hours, but no one else.~
==CVSan25J~No orc scouts or messengers then?~
==RTMeli~I saw no one - I sleep little and I summon my watchers when I do, so I'm pretty sure nobody went up or came down.~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",3)~ THEN RTMeli AftThal
~ The Permanent Apprentice he called me!~
DO~SetGlobal("RTMelibant","GLOBAL",4)~
==CVSan25J~A title appropriate to all of us.~
==RTMeli~I doubt my old teacher meant it that way.~
==CVSan25J~One thing I have learned during my travels with <CHARNAME> is that we never stop learning, regardless whether we are sorcerers, mages, or fighters or whatever. One who denies it will forever stay the fool he is. You are not one of those.~
==RTMeli~Really? These words mean much to me.~
==CVSan25J~When we found you out at that Sune temple you were there to practice and to learn out of your own motivation. You tried to improve yourself.~
==RTMeli~But it was a disaster, like so often.~
==CVSan25J~The intention compensates for the failure. You learn from your mistakes each time.~
==RTMeli~I make a lot of mistakes...~
==CVSan25J~Consequently you learn a lot. Honestly, Melicamp, you are a competent sorcerer and improving daily. Keep your arrogance at bay and do not take failure as a personal insult - then your progress will increase. You have Mystra's sympathy.~
==RTMeli~ Have I? Well, you must know it better than anyone.~EXIT

CHAIN
IF~Global("RTMeliIzzChi","LOCALS",1) ~THEN RTMeli IzzChicken
~Hm, that smell is delicious. What are you cooking for us tonight, Izzy?~
DO~SetGlobal("RTMeliIzzChi","LOCALS",2)~
==CVIzy25J~You will like it, it's my most famous Ulcaster chicken stew - with loads of fresh herbs 'n' garlic in it...~
==RTMeli~Uuuuh...~
==CVIzy25J~What's up, Melli? Ya don' like garlic?~
==RTMeli~Eh...it's more that kind of meat, you know.~
==CVIzy25J~Oh, dummy Izzy, sure, you were kinda one of 'em, right? Mama always got tears of laughter in her eyes when she told the story of ya resa'rection.~
==RTMeli~Well, yes, anyway...I prefer other meat to chicken.~
==CVIzy25J~I'm 'fraid we run outa such. So let's see...I can easily make some scrambled eggs for you...~
==RTMeli~Uuuuuh...~EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",2)~THEN RTMeli Melchild
~Sorry, kid, what did you say?~
DO~SetGlobal("RTMelLayWom","LOCALS",3)~
==RTKid~Hello, daddy, why you hurry so?~
==RTMOM~He is in hurry to escape me and his responsibility!~
==RTMeli~WHAT?~
==RTMOM~You heard me well, Melicamp, I talk about the responsibility for your daughter.~
==RTMeli~My...you play a false game, woman, this is surely not my child.~
==RTMOM~You may not well remember that night seven years ago, you were a bit drunk...~
==RTMeli~Stop the comedy, woman, I never was drunk in my life and it is definitely impossible at all that I have a child...~
==Bizy25 IF ~InParty("cvizzy")~THEN~Impossible? Are you one of those...one can never tell at first glance.~
==RTMeli IF ~InParty("cvizzy")~THEN~NO, Izzy, I'm not one of those...I just never have, I mean, eh, women are complicated...~
==Bizy25 IF ~InParty("cvizzy")~THEN~A male virgin, hihi...well...~
==BLeya25~A virgin?~
==RTMeli~(His face is purple red) I have never slept with a woman until now, yes.~
==RTMOM~Salith, let's go quickly...~DO~EscapeArea()~
==RTKid~Oh, but I liked him, the nicest dad for a long time...~DO~EscapeArea()~
==BLeya25~Your chastity saved you this time, my friend. But is that state really desireable?~
==RTMeli~I did not chose it...It's just, eh. coincidence...~
==BLeya25~(Leyala shifts her hood backwards and her whole beauty becomes visible as she smiles at Melicamp.) We must work on that problem, definitely. You travel in the company of the Ambassadors of love, don't forget.~
==RTMeli~I was about to say that I wait for the right one to share myself with.~EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",4)~THEN RTMeli MelLey1
~*You see Melicamp in deep observation and follow the direction of his gaze.*~
DO~SetGlobal("RTMelLayWom","LOCALS",5)~
==BLeya25~*Leyala is still in her short underskirt without her usual nun's robe and hood. She brushes her long curls carefully her full lips lowly whistling a joyous tune. Once again you are amazed yourself by her usually hidden beauty.*~
=~*Suddenly she turns her head recognising Melicamp. She smiles and gives him a sign to come over to her.*~
==RTMeli~*The sorcerer blushes to purple and hesitatingly moves over to your nun.*~
==BLeya25~*Leyala hands him the hairbrush and whispers some words to him that make him step to her back and brush her hair from behind.* ~
==RTMeli~*Melicamp performs his duties with great care and tenderness now and then rewarded by Leyala turning around to him and encouraging him with gentle smiles and words you cannot overhear...~
==BSandr25~<CHARNAME>, if that does not inspire you, I surely have lost my attraction for you.~
END
++~*Turning towards her you see her holding out her own hairbrush to you.*~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("RTMelLayWom","LOCALS",6)~ THEN RTMeli LaySharDre
~Leyala, Sandrah and me have discovered from the old scrolls we found that the Citadel may have an artefact from the days of Karsus, a collection of enormous wisdom about the arcane but also about technology, the planes, the stars and other aspects of nature.~
DO~SetGlobal("RTMelLayWom","LOCALS",7)~
==BLeya25~Your eyes are sparkling with enthusiasm, Melicamp. I do not need to remind you of the danger that can lie in the possession of such items.~
==RTMeli~I have no intention to follow the ways of the Karsusses of this plane. Knowledge belongs to the people to improve their lives.~
==BLeya25~The permanent student wants to become a teacher? (Her smile that accompanies the remark shows her appreciation of the idea.)~
==RTMeli~Think of it, Leyala, a school, a university - not one for magic or for warfare but one for all useful arts and professions.~
==BLeya25~Will it teach love, contemplation, the nature of our bodies and our passions as well?~
==RTMeli~It would, if the right professor for those topics could be found.~
=~You remember the academy misused by Xephistagoras? It is vacant now and in a central location of the Sword Coast.~
==BLeya25~You are not just dreaming, my friend, I can see that you really could make it happen.~
==RTMeli~It is not the work for one man alone.~
==BLeya25~(She touches his face gently.) I have the feeling your apprentice days are over - in many aspects.~EXIT

CHAIN
IF~Global("MeliNosti","LOCALS",0)  OR(3) Global("SawMagic","AR0603",1) Global("SawMagic","RTF078",1) Global("SawMagic","RTF153",1)~THEN RTMeli Magic1
~Even if used for evil purposes in its time this installation would be worth studying and learning from.~
DO~ SetGlobal("MeliNosti","LOCALS",1)~
==BSandr25~I am sure the owner would not allow you that. Your eager to study and learn however should not be in vain.~
==RTMeli~When I joined you and <CHARNAME> I was hoping I could benefit from your own skills a bit.~
==BSandr25~I have to apologize, Melicamp, it is my fault - or rather it is neglected due to the strange new situation we had to face and investigate. I wanted to do that and my promise still stands.~
=~As soon as we find some hours of quietude, you and me should take our time and look into your knowledge of the arcane and possible areas of enhancement. I give you my word for on that.~
==RTMeli~*Sandrah's words seem to make a large impact on Melicamp's otherwise cool attitude.* Oh, how that reminds me of the old, old days in Waterdeep...~
==BSandr25~Ouch, you are not referring to some hormone driven youngster's errors way back then, are you?~
==RTMeli~It may have been such - back then. We have grown a bit since. One thing was definitely no error, Sandrah, the girl back then was as attracting as the woman is today.~
==BSandr25~Melicamp, I promised you studies in magic, not something else.~
==RTMeli~Oh, yes, yes, I got carried away a bit...nostalgia...~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",5)~THEN RTMeli SanRom1
~Sandrah, you had now the chance to observe how I have developed myself.~
DO~SetGlobal("RTMelibant","GLOBAL",6)~
==BSandr25~Are you referring to your added experience as a sorcerer or as - a man?~
==RTMeli~Any aspect that would awaken your interest would delight me.~
==BSandr25~Really?~
==RTMeli~Definitely. (Blushes) You know well what you have meant to me once - and what you will always mean to me, as a source of the arcane - and as a woman.~
==BSandr25~You never let me feel the latter well enough, not enough to keep the little flame of our relationship alight.~
==RTMeli~I was selfish, maybe, or it's just that I thought I would have all the time in the world for you once I had gained some status as a sorcerer.~
==BSandr25~You set your priorities, right. You set them in your way without even seeing the need to share your decision or the reasons for them with me.~
==RTMeli~I know...I mean, I know that now. Now - now that it may just be too late.~
==BSandr25~We will see, we are all apprentices all of our life.~
==RTMeli~The new deity of the Realms is that of Love and Hope...~
==BSandr25~Are you a follower, Melicamp?~
==RTMeli~I follow no god, but I still assume that love and hope are concepts that exist for everyone.~
==BSandr25~(She lightly caresses his cheek and smiles) A new aspect in you, my friend, one that I appreciate.~DO~RestParty()~EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",7)~THEN RTMeli SanRom2
~Sandrah, you and I are immune to the spells that can charm a person.~
DO~SetGlobal("RTMelibant","GLOBAL",8)~
==BSandr25~Neither of us is immune to the true charm of a person.~
==RTMeli~I am definitely encased by yours - I have recently asked myself why I have never...eh, romanced eh, a woman.~
==BSandr25~Are you blaming me for it?~
==RTMeli~Blame is not the appropriate word, nor can I say you are in any way responsible for it. Still...any woman pales in comparrison with you and then my interest I had initially on her fades on second thought.~
==BSandr25~Tragic - chances are good that even I myself would fail against the ideal woman you have created for yourself inside your own mind. You may think it is me but I doubt that you know me well enough for that.~
==RTMeli~A valid remark. You are in deed disturbing at times, something my ideal never was.~
==BSandr25~I cannot blame you for your attitude, Melicamp, I once had a similar view on the males, always comparing them to the ideal example I had created myself from a great hero I admired. I learned over time to see other people with an open mind and found there are so many loveable aspects in most people. Ideals and idols may help us to frame our tastes - but they should stay out of our real lives.~
==RTMeli~Do you advise me to keep Sandrah out of my life.~
==BSandr25~(She takes his face in both hands and looks him in the eyes.) I advise you to forget your *Dream Sandrah* and concentrate on a real woman.~
==RTMeli~Her name may by chance be Sandrah as well...(He leans forward and kisses her.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~ EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",11)~THEN RTMeli SanRom3
~Sandrah, do you have an idea why that recent spell of mine failed again?~
DO~SetGlobal("RTMelibant","GLOBAL",12)~
==BSandr25~Did you have the feeling you were truely connected with the Weave and the effect you wanted to produce was clear and focussed in your mind?~
==RTMeli~I have practised the spell before successfully, I was sure to handle it.~
==BSandr25~Mmh, practice is good but you cannot rely on routine alone. Any time you try to manage the Weave you need the same dedication and concentration to do it.~
=~It is the limited view of most people to think of the Weave only as a means to cast spells.~
=~The Weave is in everything and around everything, it is the many energies and forces that exist around the planes.~
=~Casting a spell is equivalent to telling the Weave to rearrange itself to create a specific effect.~
==RTMeli~You never use words or scrolls to recite a spell...~
==BSandr25~I connect to the portion of the Weave I want to alter and tell it of its new form, so to say. Try to remember the feelings you had when you succeeded with your spell.~
==RTMeli~I think I know what you mean...sometimes I feel like I *connect* closer with the spell I want to cast than at other times.~
==BSandr25~Eliminate the notion of failure from your thoughts and concentrate only on how you want the matter and energy to look like and behave.~
==RTMeli~Does your healing skills work in such a way as well?~
==BSandr25~Yes and no - healing is a much more complex manipulation of the Weave and of the powers the body to heal has imminent. It would be a very long lecture should we try to discuss this matter now.~
==RTMeli~Maybe we should change the subject to a topic I feel more confident with since we travel together again.~
=~*He blushes shortly but straightens himself within a moment. He takes Sandrah's hand and lifts it to his lips. He looks straight into her eyes as he begins to kiss her fingertips.*~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~ EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",14)~THEN RTMeli SanRom4
~Sandrah, I feel more and more confident with my skills since you helped me find the right attitude towards my spells.~
DO~SetGlobal("RTMelibant","GLOBAL",15)RealSetGlobalTimer("RTMeliNB","LOCALS",1600)~
==BSandr25~In the end this is your own success, my dear. There is no defined method for a sorcerer and each one has to develop the way suiting him or her best.~
==RTMeli~I have thought about what you told me about the Weave and I was wondering how your healing abilities fit into this scheme.~
==BSandr25~Healing is a bit more complex than other ways of using magic and manipulating the Weave. A sick or injured body can be seen as an object where the natural order of matter and energy and thus the Weave itself is distorted. In order to *repair* it you must have the knowledge of its original design and order.~
==RTMeli~I can understand that...you must know what you want to achieve just like with a spell, only you must first have a good knowledge of the sane form of what or whom you heal. ~
==BSandr25~As a healer you are not alone in your task, I would even say you play a secondary role only.~
=~If you cut your finger, just to take an example, you know that your body will heal by itself within a few days. So there is a mechanism within a patient which is the Weave trying to re-order itself from the distortion.~
=~When an injury is significant, those powers however may not be able to heal the body within some time - or in other cases they need guidance. Take a broken limb, without the surgeon or healer to fix it correctly it may heal in some way but you may stay crippled or hindered to some extend.~
==RTMeli~The more you tell me about it the more I admire your abilities.~
==BSandr25~Oh, there is not so much magic involved, it is more the knowledge of how the elements involved in the healing process work together. Much depends on the will of the patient itself. The best healer is helpless when an injured person has given himself up.~
==RTMeli~I am glad I have not given up my belief in you and me and that there is a bond between us.~
==BSandr25~(Smiles) Your persistence is your strength.~
==RTMeli~That is one thing we have in common, Sandrah. Let me lead you a bit aside from our friends...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~ EXIT

CHAIN
IF~Global("RTMelibant","GLOBAL",16)~THEN RTMeli SanRom5
~*Melicamp has taken Sandrah's hand in a sudden impulse and clears his throat dramatically.*~
DO~SetGlobal("RTMelibant","GLOBAL",17)RealSetGlobalTimer("RTMeliNB","LOCALS",1600)~
==BSandr25~ No need to be shy, dear, speak your heart whatever is on your mind.~
==RTMeli~It is an overwhelming thought to hold the hand of the Goddess of All Magic in such a way, isn't it?~
==BSandr25~It was the woman I am, not the goddess you now learned that I have become meanwhile, who stirred the feelings you have. It is the woman I still am who responds to it.~
==RTMeli~I have told myself the same, my love, and my heart tells me I am right. Still - one day soon you...we...will have defeated those that made you return to Faerun.~
==BSandr25~Yes - our relationship is not meant to be eternally. I have struggled with myself from the beginning whether I should allow myself to follow my feelings in such a way with the knowledge of the consequences.~
==RTMeli~*He pulls her close into his arms.*~
=~I am grateful for the wisdom that made you decide how you did. I would not have missed a single moment of our time together and I will savour each one we will still have with full passion.~
==BSandr25~I would not have acted this way with any other man, Melicamp. I knew that otherwise we both would have grieved forever over the chance we never allowed each other.~
==RTMeli~Sandrah is in my arms, Mystra is a creature of another dimension for another time.~
==BSandr25~Tonight I will be as much of a woman as you can ever desire...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~ EXIT

CHAIN
IF~Global("MeliAfterKul","LOCALS",1)~ THEN RTMeli SanRom5
~You are an incredibly powerful woman, Sandrah. Is this why men like Samas Kul think they can win you by force?~
DO~SetGlobal("MeliAfterKul","LOCALS",2)~
==BSandr25~Probably yes, but it should neither concern me nor you, Melicamp. You see the results and YOU know better than anyone how to succeed.~
==RTMeli~(Laughs) Maybe it was just my insight that my power would never be enough to overwhelm Sandrah of Waterdeep, not even to talk of Mystra at all.~
==BSandr25~You are such a sweet liar, my love. You never have pondered about that option. It would not have been you to take anything by force.~
=~Still you have won because you are stronger than any of them. You have overcome your own fear and you have followed your heart with persistence.~
==RTMeli~Since we are together, you have never given me the feeling that any of us possesses the power over the other or should have it. I feel at equal terms with you without the need to be a god to do so.~
==BSandr25~Love is not a question of owning or dominating, you have understood that well. Thus I am more than willing to deliver my heart and body to you without any conditions.~
==RTMeli~I define my own condition, sweetheart, it is to make you feel like a woman who is truely loved.~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT

CHAIN
IF~ Global("MeliSanGB","LOCALS",1) ~THEN RTMeli Goodbye
~What will happen to us, my love, now that you and <CHARNAME> have accomplished your mission on the Prime?~
DO~SetGlobal("MeliSanGB","LOCALS",2)~
==BSandr25~When I was still a young mortal girl I fell in love with an elf of the age of about 250 years and knowing that was only half of his expected lifetime. We both agreed that he had loved before and would do so again after me. Still, our love was the most important thing to us while it lasted and we both accepted to enjoy it under the conditions we knew rather than to be hindered by the difficulties.~
==RTMeli~This is what we both did as well, isn't it? I enjoyed and learned knowing a goddess could never be mine forever. Still...now that the expected comes to manifest as reality...it is still not easy, even having known that the day would come.~
==BSandr25~Do not think it is different for me, Melicamp. Giving my love and having to part is not a routine. My feelings are that of a human woman, not that of a goddess, I have never allowed AO to take this from me.~
==RTMeli~While we were together, I found to you but I also found to myself with your help.~
==BSandr25~I know, I have observed it with pleasure.~
=~I make this promise, my love - should I return to Faerun eventually I will not come to see you or try to enter your life again.~
==RTMeli~It may sound cruel but I see that it is kindness. I will be myself from now on, a happy man who has made an experience and now looks forward to a new episode in his life.~
==BSandr25~You have made some plan already?~
==RTMeli~An idea, a vision maybe. You taught me about the Weave and how it surrounds everything. Also I now have developped my methods to communicate with it. Mystra may have withdrawn but the Weave maintains. I have understood your vision of a Faerun without the gods to mingle or magic to do our wonders.~
=~I will become part of that new development. I will become a teacher to those who seek knowledge of the multiverse and its possibilities. The Sword Coast needs a place to trade knowledge, to promote technical progress and research and to explore our possibilities as mortals.~
==BSandr25~Your university?~
==RTMeli~That's what I have in mind. I think there is a vacant installation to suit my plans in the Sharp Wood Forest.~
==BSandr25~You will succeed.~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT

//Melicamp Quest
CHAIN
IF~Global("RTMeliQuest","GLOBAL",2)~ THEN RTMeli Thalcare
~I had no idea that Thalantyr cared so much for me.~
DO~SetGlobal("RTMeliQuest","GLOBAL",3)~
==CVSan25J~It reminded me of Gorion's care for <CHARNAME>, childless mages having to take care of a pupil for some reason.~
==RTMeli~He developed fatherly feelings towards me, you mean?~
==CVSan25J~You spend a long time in his care, longer than you did with your real father if I recall correctly.~
==RTMeli~The relationship to my parents was rather cold, you know those Waterdeep snobs better than anyone, my dear. A sorcerer was the black sheep of the family. You are right, Thalantyr never made me feel such. (Sigh) I never recognized how important he was for me.~
==CVSan25J~It may be another sign of growing wisdom and maturity that you do so now.~DO~AddJournalEntry(@2088,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",4) ~ THEN RTMeli Scroll1
~This old scroll, do you think it may be what Thalantyr told me to watch out for?~
DO~SetGlobal("RTMeliQuest","GLOBAL",5)~
==CVSan25J~It has endured the ages since Netheril fell, consequently it has an inherit power of its own. All I can say at the moment is that it is the second half of some old recital. Without its complementary part I can make little out of it.~
==RTMeli~Still - it will be worth keeping it. Chances are we find the second part somehow, we are coming around a bit, don't we?~ DO~AddJournalEntry(@2089,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",6) ~ THEN RTMeli Scroll2
~We have both parts of the ancient scroll now?~
DO~SetGlobal("RTMeliQuest","GLOBAL",7)~
==CVSan25J~ Let us see if we can get some sense out of it.~DO~AddXPObject("RTMeli",22500)~
==RTMeli~To study and discover maybe a secret of the ancients with you, oh Sandrah, I have to thank <CHARNAME> again and again for this opportunity, even if nothing may in the end be in those old parchments.~
==CVSan25J~They may not reveal their deeper meanings easily - just like some people I met and deciphered during my travels.~
=~Our study may take some time, let us plan it for a restful evening not too far in the future.~DO~AddJournalEntry(@2090,QUEST)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",8)~ THEN RTMeli Scroll3
~Do you think it is convenient to look at those ancient scrolls now together?~
DO~SetGlobal("RTMeliQuest","GLOBAL",9)RealSetGlobalTimer("RTMeliNB","LOCALS",1200)~
==CVSan25J~Come sit here beside me, I was eagerly awaiting this moment already...~
=~*For the next hours the couple sits in deep concentration and discussion over their subject. Sandrah has laid her large tome on the table and Melicamp fills several parchments with notes - scratching out here - adding some phrases there...*~
==RTMeli~Are you really sure?? - That would be a magnificent find!~
==CVSan25J~Yes, provided we will find it in the waste dungeon of the Citadel.~
==RTMeli~Karsus' Pocket Library!!~
=~If this description is halfway correct it must contain a wisdom greater than any we know of today in Faerun.~
==CVSan25J~Karsus' near success was not based on madness alone, Melicamp. Beneath his deeds was a knowledge and wisdom that made him see himself as a god already.~
==RTMeli~It surely is not for one man alone to possess such knowledge and power.~
==CVSan25J~You have something in mind, my dear?~
==RTMeli~A vision, a dream, Sandrah. A university for learning and teaching, where each student will find the answers to his specific needs. Wisdom is not for one alone to dominate like Karsus and others did, but to be spread widely and help all.~
==CVSan25J~We surely must enter the Citadel, where the artefact is hidden. The current master may oppose our interest, but he is anyway on our list of those who must fall.~DO~AddJournalEntry(@2092,QUEST) RestParty()~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",10)~ THEN RTMeli ScrollN1
~So this is the magnificent heritage of Karsus, the pocket library. ~
=~*You see that Melicamp's hands are slightly trembling as her caresses the surface of the parchment package.*~
DO~SetGlobal("RTMeliQuest","GLOBAL",11)~
==CVSan25J~There is a magic transparent on it that even Mystra is too young to comprehend without intensive study.~
END
++~You want to see what it contains most eagerly, don't you?~ + ScrollN2
++~Beware - do not open it too hastily, it may be trapped or poisoned or cursed!~+ ScrollN2

CHAIN
IF~~THEN RTMeli ScrollN2
~Those Netheril sorcerers did not leave their valuables lying around unprotected. Even in their time they were rivals to each other rather than friends. I hope Sandrah and me will soon find the time necessary to examine it cautiously. It certainly is spiced with some surprises for the uninitiated.~
==CVSan25J~(Smiles) I see it has come to the right hands for now. Keep it save, Melicamp, until we can do as you have proposed.~DO~AddXPObject("RTMeli",3500)~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",12)~ THEN RTMeli ScrollN3
~Sandrah and me have analysed our artifact from the Citadel. We are sure that there is a certain danger to activate it.~
DO~SetGlobal("RTMeliQuest","GLOBAL",13)~
==CVSan25J~A protection spell older than Mystra's knowledge is there, so much is sure. It is not a minor one but I cannot remove it.~
==RTMeli~We have discussed the issue and it is Sandrah's expectation that a party with our combined skills will be able to protect itself even against old Netheril's malice.~
==CVLey25J IF~InParty("Leyala")~THEN~I know you seek this wisdom not to satisfy selfish goals, Melicamp, but to gain knowledge for the people of the Realms. Such a goal is worth the risk to be taken for its achievement.~
==CVSan25J~Do you agree to let us step forward, <CHARNAME>?~
END
++~Melicamp's goal justifies the risk. I'm sure we've seen worse than some old sorcerer's trap.~+ ScrollN4
++~We will do it - I am curious myself what the old ones knew.~+ ScrollN4
++~Baah, if I say no, while Sandrah has already agreed, you'd do it anyway...~+ ScrollN4

CHAIN
IF~~THEN RTMeli ScrollN4
~Have your spells and weapons ready, I will unfold it now.~
DO~ClearAllActions() Wait(2) CreateVisualEffectObject("icwrati","RTMeli")CreateVisualEffectObject("idestruh","CVSandr") Wait(2) CreateCreatureObjectDoor("RTMeEle","RTMeli",0,0,0) CreateCreatureObjectDoor("elearg01",Player3,0,0,0) CreateCreatureObjectDoor("elecali2",Player5,0,0,0) CreateCreatureObjectDoor("elemwag",Player1,0,0,0) CreateCreatureObjectDoor("elecali2",Player6,0,0,0) CreateCreatureObjectDoor("elemwag",Player2,0,0,0) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",13)~THEN RTMeEle ScrollN5
~The master knew some fool would attempt to gain wisdom by theft.~
DO~SetGlobal("RTMeliQuest","GLOBAL",14) EraseJournalEntry(@2088) EraseJournalEntry(@2089) EraseJournalEntry(@2090) EraseJournalEntry(@2092)~
==RTMeli~The master erred, creature. And the master is long dead. He has nothing to protect anymore.~
==RTMeEle~Dead? A god cannot die.~
==RTMeli~He never became a god even if he tried. In the end it was him who was punished as the thief he himself was - he stole the knowledge from the people who were supposed to own it - and then by its illegal use he was trying to steal immortality from a goddess.~
==RTMeEle~He failed? So will you in your attempt to follow him. Hahaha.~DO~TakePartyItem("RTMels3") DestroyItem("RTMels3") Enemy()~EXIT

CHAIN
IF WEIGHT #-1~Global("RTWantMel","RTF074",1)~THEN RTOrcMel  WantMeli
~You, mage man in robe, you have good body, mhm.~
DO~SetGlobal("RTWantMel","RTF074",2)~
==RTMeli~How can you see that through the robe, my orc lady?~
==RTOrcMel~See how you hold shoulders and head - I like what I see - not bad for weakling human.~
==CVLey25J~Orc girl!! What is your interest in a weak human?~
==RTOrcMel~He good brain, me good strong body - good mixture...~ 
==CVLey25J~MY MAN will not mix anything with any other female, you understand (She wraps her arm around Melicamp's waist and motions him away.)~
==RTMeli~Your man?~
==CVLey25J~(Blushes) I thought I had to rescue you from her advances, those orc girls can be very direct in their demands...or...was I spoiling anything?~
==RTMeli~She's still observing us. (He pulls her a bit tighter with his arm now over her shoulder until they are out of sight.)~ EXIT

CHAIN
IF~Global("RTMeliQuest","GLOBAL",15)~THEN RTMeli ScrollN6
~And by this the apprentice has learned another lesson (Sigh).~
DO~SetGlobal("RTMeliQuest","GLOBAL",16)~
==CVSan25J~You are not giving up your dream of the University of the Sword Coast just because of this event, my friend?~
==RTMeli~Oh, no, Sandrah, I am as determined to make it happen as I ever was. What I have learned is that there is no shortcut to wisdom and knowledge. But I will earn it, bit by bit.~
==CVLey25J IF~InParty("Leyala")~THEN~You must not do that all alone, Melicamp. Your vision is a good and strong one and you will have supporters who share it.~
==CVSan25J IF~!InParty("Leyala")~THEN~ ou must not do that all alone, Melicamp. Your vision is a good and strong one and you will have supporters that share it.~
==RTMeli IF~InParty("Leyala")~THEN~Are these words out of kindness or do they come from one of those supporters?~
==CVLey25J IF~InParty("Leyala")~THEN~Some time ago you kind of offered me a vacancy at your university, didn't you. I will collect my share of wisdom for my domain and bring it to the academy, count on it.~
==RTMeli IF~InParty("Leyala")~THEN~*He raises her fingertips to his mouth and kisses them.*. I will count the days until my professor of love will arrive in the Sharp Wood.~
==CVSan25J~You may not have Karsus' Library to fill your bookshelves but maybe the assembled lore of Elminster and his daughter will be a baseline to start with - aside from your respectable own collection. Here.~DO~GiveItemCreate("sanbok2","RTMeli",1,0,0) AddXPObject("RTMeli",17000)EraseJournalEntry(@2092) EraseJournalEntry(@2090) EraseJournalEntry(@2089) EraseJournalEntry(@2088)~EXIT