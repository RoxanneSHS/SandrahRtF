BEGIN RTSaemon
BEGIN RTShaj

CHAIN
IF~Global("RTSaem","RTF090",1)~THEN RTSaemon OutThay1
~ There you are and here we are ready to depart, just as promised.~
DO~SetGlobal("RTSaem","RTF090",2)~
==CVSan25J~Who might that beautiful lady be, Saemon, would you introduce her to us?~
==RTSaemon~This is Shaleij, my friends, she will come with us.~
==CVSan25J~It is her own free will, I assume?~
==RTSaemon~SURELY, what do you think - actually it is her first free will action since a long time. Can you imagine the poor girl in the hands of that monster Ilthrash?~
==RTShaj~I will not go back, you made a promise, Saemon!~
==CVSan25J~You know how much I hate slavery...(Sigh) So much about a save peaceful sea cruise...~
==RTShaj~Why do we not sail, my master will be here soon!!~ DO~EscapeArea()~
==RTSaemon~We will depart as soon as these people go below deck. I cannot be seen leaving the harbour with them or you in full sight. You all go below.~
=~Fear nothing, once we are at sea we are save. Your capturer is no seaman like Saemon is.~DO~EscapeArea()~EXIT

CHAIN
IF~AreaCheck("RTF100") Global("RTSaem","RTF100",0)~THEN RTSaemon OutThay2
~ Ah, fresh sea breeze, there's nothing that can compare to the freedom on the waves.~
DO~SetGlobal("RTSaem","RTF100",1)~
==CVSan25J~Freedom for Shaleij hopefully.~
==RTSaemon~My black pearl! She is wonderful, I hope she will never ask me to settle down too soon. There are so many places I'd like to show her and enjoy with her.~
==CVSan25J~Are you a doppelganger? Is this Saemon Havarian talking?~
==RTSaemon~Believe it or not - this old captain is truely in love...~
==RTShaj~WHAT!! YOU BASTRARD!! Who is she, you bloody liar!!~
==RTSaemon~Hehehe, I was talking about you of course, my one and only.~
==RTShaj~You...me...you really...oh. (She embraces the old seaman with a tear of joy in her eye.)~
==RTSaemon~I love you.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("RTSaem","RTF100",1)~THEN RTSaemon OutThay3
~Now it is time to talk about YOUR plans.~
DO~SetGlobal("RTSaem","RTF100",2)~
==CVSan25J~You have been in Thay often enough to have learned about the magical powers that Szass Tam and the red wizards possess. Add to that the power of his current allys and it is clear that even <CHARNAME> and me cannot defeat this phalanx as it stands.~
==RTSaemon~It wouldn't be you if there were not some solution forming already beneath those adorable curls.~
==RTShaj~Saemon, facts, not compliments.~
==RTSaemon~I only look, I don't touch, honey, no one but you.~
==CVSan25J~As our foe's current position is based on magic it is there we will start to weaken them.~
==RTSaemon~A logical solution - if that were possible. Even the Goddess of All Magic cannot deny the arts to the other gods.~
==CVSan25J~Right, Saemon, but...~
END
++~But?~EXTERN CVSan25J OutThay4

CHAIN
IF~~THEN CVSan25J OutThay4
~All true magic originates from the Weave. There is a limited power provided by Shar from the Shadow Weave, but I will put that aside for the moment. The Weave can only be controlled by Mystra and even if other gods grant powers to their followers they can only do it through Mystra. There is no direct access to the Weave by anyone else, since the day Mystril was killed by Karsus.~
==RTSaemon~I vaguely remember the story. All magic departed Netheril and the Prime on that day.~
==CVSan25J~Correct, Saemon. Afterwards AO gave some of the Weaves energy to Shar, but the majority and the portion used by Faerun's mages, clerics and sorcerers he gave to Mystra.~
==RTSaemon~To separate your foes from the source of their magic...you had to eliminate - Mystra.~
==CVSan25J~A solution...it has its price I admit - and it would only work if AO had no possibility to establish another keeper for the Weave.~
==RTSaemon~I see no possibility how that could be achieved. It would almost be a destruction of the Realms if not of the multiverse itself.~
==CVSan25J~It would be, you are absolutely right, Saemon. If not...(You see her thoughts drift off into possibilities you cannot imagine yourself.)~
END
++~Tell me that you will not do such a thing, tell me!!~+ OutThay5
++~What are you planning, I have a right to know. I love you.~ + OutThay5

CHAIN
IF~~THEN CVSan25J OutThay5
~We will need to do something drastically soon, <CHARNAME>. Mystra must be saved before Szass Tam can kill her. She and her magic must...disappear. Even AO must be prevented to interfere.~
=~We must discuss this plan with my grandmother after we paid the Black Hand in the Sharp Wood our visit. ~
=~Enough of that now, Saemon, bring us home as fast as you can.~ 
DO~ClearAllActions() StartCutSceneMode() Wait(2) StartCutScene("RTFaen")~EXIT

CHAIN
IF~ Global("SanRTFPlot1","GLOBAL",4)Global("RTTalkedSaem","GLOBAL",0) ~THEN RTSaemon RTSea1
~What a splendid surprise, my good old friends!!!~
DO~SetGlobal("RTTalkedSaem","GLOBAL",1)~
==CVSan25J~The same old Saemon as ever, tss, tsss, nothing bad has ever happened between us, right old weasel?~
==RTSaemon~Well, well, we're all alive and prospering while so many we knew once have left Toril forever.~
==CVSan25J~Like for example your predessessor?~
==RTSaemon~Let's say there was a vacany in town requiring a competent leader to fill it in.~
==CVSan25J~However you got your present post is not our concern at all. Let us continue to talk about those still alive.~
==RTSaemon~Yeees?~
==CVSan25J~Irenicus.~
==RTSaemon~Hmm, hmmm. Where he is dwelling is not a secret - not to ones like you, am I right? How to get to him may not be so obvious.~
==CVSan25J~Make it short, Havarian. You know how it could be achieved, you will tell us - you will just be asking for something in return. What is it?~
==RTSaemon~Straight to the heart of the matter, my dear. How I love dealing with you.~
END
IF~Global("RTTalkedNalia","GLOBAL",0) ~ THEN REPLY~Spit it out, scoundrel. I may save your life.~ + RTSea2
IF~Global("RTTalkedNalia","GLOBAL",1) ~ THEN REPLY~You are not really in a position to make much demands. The Governor's swords are ready to strike.~ + RTSea3
IF~Global("RTTalkedNalia","GLOBAL",1) ~ THEN REPLY~Spit it out, scoundrel. I may save your life.~+ RTSea4

CHAIN
IF~~THEN RTSaemon RTSea2
~Yes, that's it - save my life. If you want to know about Irenicus you must just do that.~
==CVSan25J~Who is threatening you so heavily that all your guild cannot protect you?~
==RTSaemon~Looks like the Lady Governor herself somehow holds a grudge against me. She seems to forget that a well organised Guild controlling the docks and slums benefits the whole town and county.~
==CVSan25J~In a way I can accept your point. The guild has always been better than chaos and criminals running uncontrolled.~
==RTSaemon~ de'Arnise must nowadays see that otherwise. She has set up an enourmous garrison right here in the docks and there are curfews every moment to impede us.~
==CVSan25J~Hm, the cost for the city must be high for that. Nalia surely must have better ways to spend that money for the town.~
==RTSaemon~ You're old buddies, aren't you? You will definitely find a way to persuade her to stop that nonsense.~
==CVSan25J~Probably. However be prepared that it may cost you a bit more than just the information you can provide us.~
==RTSaemon~ We're all reasonable people, aren't we. Bloodshed costs us all. As long as her demands stay within some limits there is always room for negotiation.~
END
++~Sandrah, we will find another way, let this rat sink with his ship.~EXIT
++~Let us hear what the other side has to say to that.~EXIT

CHAIN
IF~~THEN RTSaemon RTSea3
~You hit the mark, my friend - and you must be the shield against that strike. If you want to know about Irenicus you must just do that.~
==CVSan25J~Nalia is threatening you so heavily that all your guild cannot protect you.~
==RTSaemon~Looks like the Lady Governor somehow holds a grudge against me. She seems to forget that a well organised Guild controlling the docks and slums benefits the whole town and county.~
==CVSan25J~In a way I can accept your point. The guild has always been better than chaos and criminals running uncontrolled.~
==RTSaemon~ de'Arnise must nowadays see that otherwise. She has set up an enourmous garrison right here in the docks and there are curfews every moment to impede us.~
==CVSan25J~Hm, the cost for the city must be high for that. Nalia surely must have better ways to spend that money for the town.~
==RTSaemon~ You're old buddies, aren't you? You will definitely find a way to persuade her to stop that nonsense.~
==CVSan25J~Probably. However be prepared that it may cost you a bit more than just the information you can provide us.~
==RTSaemon~ We're all reasonable people, aren't we. Bloodshed costs us all. As long as her demands stay within some limits there is always room for negotiation.~
END
++~Sandrah, we will find another way, let this rat sink with his ship.~EXIT
++~Let us hear what the other side has to say to that.~EXIT

CHAIN
IF~~THEN RTSaemon RTSea4
~Yes, that's it - save my life. If you want to know about Irenicus you must just do that.~
==CVSan25J~Nalia is threatening you so heavily that all your guild cannot protect you.~
==RTSaemon~Looks like the Lady Governor somehow holds a grudge against me. She seems to forget that a well organised Guild controlling the docks and slums benefits the whole town and county.~
==CVSan25J~In a way I can accept your point. The guild has always been better than chaos and criminals running uncontrolled.~
==RTSaemon~ de'Arnise must nowadays see that otherwise. She has set up an enourmous garrison right here in the docks and there are curfews every moment to impede us.~
==CVSan25J~Hm, the cost for the city must be high for that. Nalia surely must have better ways to spend that money for the town.~
==RTSaemon~ You're old buddies, aren't you? You will definitely find a way to persuade her to stop that nonsense.~
==CVSan25J~Probably. However be prepared that it may cost you a bit more than just the information you can provide us.~
==RTSaemon~ We're all reasonable people, aren't we. Bloodshed costs us all. As long as her demands stay within some limits there is always room for negotiation.~
END
++~Sandrah, we will find another way, let this rat sink with his ship.~EXIT
++~Let us hear what the other side has to say to that.~EXIT

CHAIN
IF~ Global("SanRTFPlot1","GLOBAL",4)Global("RTDockSolution","GLOBAL",2)Global("RTTalkedSaem","GLOBAL",1)~THEN RTSaemon RTSea5
~War or peace, my friends?~
DO~SetGlobal("RTTalkedSaem","GLOBAL",2)~
==CVSan25J~Peace, reputation and influence - provided you make the right choice, Saemon. War and destruction if you anger the gods.~
==RTSaemon~You know I am no fool, I ignore your threat for now and will listen to the alternative.~
==CVSan25J IF ~ Global("PlayerThiefguild","GLOBAL",1)~THEN~Even <CHARNAME> will contribute our share by giving up <PRO_HISHER> Guild building here in the docks.~
==CVSan25J IF ~ !Global("PlayerThiefguild","GLOBAL",1)~THEN~ All you need to give up is the unused old Guild building here in the docks.~
==RTSaemon~That is all?~
==CVSan25J~We could make the pill more acceptable to the Governor if we tell her that the Shadow Thieves are willing to share half the cost for the Charity House to be established with the town.~
==RTSaemon~Too much!!~
==CVSan25J~Really? That is how the seats on the board of directors are determined. They go to those who contribute.~
==RTSaemon~Hmm. Such a seat...could be easily a foot in the door to the council itself...such an institution would cost less than a power struggle with the Governor...on the other hand...~
END
++~ I will go and tell Nalia about your acceptance.~+ RTSea6
++~ Don't be a fool, you gain so much for such a small stake~ + RTSea6

CHAIN
IF~ ~THEN RTSaemon RTSea6
~Well, bring me the sealed document from the Governor that makes me a board member and I will tell you about Irenicus.~EXIT

CHAIN
IF~Global("SanRTFPlot1","GLOBAL",5) GlobalLT("RTTalkedSaem","GLOBAL",9)~THEN RTSaemon RTSea7
~I can see by your expression that the Council has accepted our deal.~
==CVSan25J~You are on your way to become a respectable honority of Athkatla, Saemon. Use your chance well.~
==RTSaemon~I am sooo relieved, my friends. You know how much I hate bloodshed, especially my own.~
DO~SetGlobal("RTTalkedSaem","GLOBAL",9) TakePartyItem("RTNalsa") GiveItemCreate("misc4s","CVSandr",1,0,0) AddexperienceParty(12000)~
=~This is what to do to get to Irenicus.~
=~Go to the training area in the lower levels. You must find a red button at the end of the spiked stealth test for our thieves. It will open the secret door to Irenicus' dungeon.~
END
++~Use your chance, Saemon, at least within your own limits~EXIT
++~I really hope this was the very last time we have met, Saemon.~EXIT

CHAIN
IF WEIGHT #-1~Global("RTCyr1","ar0307",1)~THEN Chalcy01 InIrD1
~Meddling, meddling, meddling...and now there are two of them, tsss, tsss.~
DO~SetGlobal("RTCyr1","ar0307",2)~
==CVSan25J~It was just a question of time for you to appear, like the bad penny you are.~
==Chalcy01~Trying your hand in god hood is a bad habit of your bloodline. Your grandmother was not fit for it and neither will you proof to be.~
==CVSan25J~I wonder what you try to gain, Cyric, neither my portifolio nor the one that was created for <CHARNAME> would suit you. You are still the God of Murder, whatever the worth of that title may be.~
==Chalcy01~Bingo, darling, bingo!!~
=~The God of Murder by name, but the essence of Bhaal has been corrupted by what <CHARNAME> and your own damned sister call *purefication* or cleansing. The essence must be returned to its true nature.~
==CVSan25J~Do your buddies know of your intent?~
==Chalcy01~My allies? You know nothing about them, ever-silly girl.~
END
++~So it's true what the rumour said, you are in league with Irenicus then.~+ InIrD2
++~So once again Havarian has sold his hide to a new master and tries to sell ours as well.~ + InIrD2

CHAIN
IF~~ THEN Chalcy01 InIrD2
~*For a moment you could swear you see Cyric slightly irritated*.~
=~The name of that mortal means nothing to me. Your accusations are as blind as they ever were.~
==CVSan25J~The Exile is not working for you - maybe he is in the service of one of your allies. I am sure they will not inform you of their own agenda in this affair.~
==Chalcy01~Mystra, you're trying to be clever, he? You are so eager to learn who it is that you have to face. No need to hurry, your doom comes infailably.~
==CVSan25J~Up to now we have found we are a bit ahead of our foes, *grandfather*. Their design was only half-baked and rushed. Be sure we keep up the pressure. You are known to act weird and weirder when put under stress.~
END
++~Whoever your allies are, Cyric, you know as well as we know that they will backstab you as soon as they see the chance for themselves...~+ InIrD3

CHAIN
IF~~ THEN Chalcy01 InIrD3
~ Hohohoho...that joke is, eh, *godly*!!! Backstab me, the Lord of all Assassins who killed your father already...hihihi....~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-4~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN Tassa RTFGreet
~Hmmmn...so you're that <CHARNAME> that today all Athkatla has been talking about all the time.  I thought you'd be so much prettier.  But that's OK...(giggle)...I like you anyway!~
=~I just love pretty things... don't you think I'm pretty?  (giggle)~DO~EscapeArea()~EXIT