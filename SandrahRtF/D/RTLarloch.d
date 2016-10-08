BEGIN RTLarlo
BEGIN RTLarImp

IF~Global("RTLarRidl","GLOBAL",0)~THEN BEGIN Millstone1
SAY~Larloch's millstone grinds slow but grinds fine
Until the millstone thee call thine.~
IF~~THEN REPLY~Hm, Sandrah, you warned us that the ancient mage was insane.~DO~SetGlobal("RTLarRidl","GLOBAL",1) RealSetGlobalTimer("Riddlrun","RTF151",900) DestroySelf()~EXIT
IF~~THEN REPLY~Sounds like a riddle to be solved for the entry, let's find a mill and we find a millstone, I'd say.~DO~SetGlobal("RTLarRidl","GLOBAL",1)RealSetGlobalTimer("Riddlrun","RTF151",900)DestroySelf()~EXIT
END

IF~Global("RTLarRidl","GLOBAL",3)~THEN BEGIN Millstone2
SAY~Have nice millstone, what with it do?~
=~Maybe throw into nice well and kill BIG ONE below?~
IF~~THEN REPLY~(Throw the millstone into the well.)~GOTO Wake
IF~~THEN REPLY~Never wake a sleeping...whatever that watchdog is...~GOTO Sleep
END

IF~~THEN BEGIN Sleep
SAY~Clever, clever, not want to know BIG ONE.~
IF~~THEN REPLY~(The imps reaction shows you that you have taken a wise decision.)~
DO~SetGlobal("RTLarRidl","GLOBAL",6)DestroySelf()~EXIT
END

IF~~THEN BEGIN Wake
SAY~Hihi, always do that stupid visitors, BIG ONE not like stones thrown on head.~
IF~~THEN REPLY~(As soon as you let the stone fall, you already regret your decision. Whatever you have hit is not destroyed but very angry.)~ DO~SetGlobal("RTLarRidl","GLOBAL",4) TakePartyItem("Sanrock") ScreenShake([286.346],6)DestroySelf()~EXIT
END

IF~Global("RTLarRidl","GLOBAL",6)~THEN BEGIN Millstone3
SAY~Nasty, nasty, find all riddle and find master. Now must do all work myself.~
IF~~THEN DO~SetGlobal("RTLarRidl","GLOBAL",7) Enemy()~EXIT
END

BEGIN RTLarDra
IF~AreaCheck("RTF151") NumTimesTalkedTo(0)~THEN BEGIN Wake
SAY~YOU THROW STONES!!! DISTURB ME - DISTURB MASTER!!!~ 
=~I WILL RESTORE PEACE IN THE VALLEY!!~
IF~~THEN EXIT
END

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",1)~THEN RTLarlo SharV1
~After the black beauty now comes the white beauty and has overcome my defences.~
DO~ SetGlobal("SanRTFPlot4","GLOBAL",2)~
==CVSan25J~I heard it already said that Shar is a very beautiful goddess, Larloch. So she was here not so long ago?~
==RTLarlo~The keeper of the Shadow Weave, an interesting creature...just like her counterpart, hihihi.~
==CVSan25J~She wanted to interest you in her powers, in the Shadow Weave, is it that?~
==RTLarlo~Ages pass and I am alone. Now there are both to visit me within some days. What is so interesting in old Larloch? I tell you, hihihi, nobody knows the Weave and its power like ME. Except, of course, Mystra herself - and the black one couldn't have asked you very well, my girl...~
END
++~Are you selling yourself to the highest bidder, mage?~ + SharV2
++~(Stay silent, Mystra knows the mage since ages.)~+ SharV2
++~Have you betrayed the goddess that is the source of your powers so easily?~ + SharV2

CHAIN
IF~~THEN RTLarlo SharV2
~Ah, and the young one giving Love and Hope is here, too. Who knows, <PRO_HESHE> has an own mighty foe, I hear.~
==CVSan25J~Cyric is in league with Shar as well as <CHARNAME> and me are a union. However we are bound together by stronger bonds than that of a common greed.~
==RTLarlo~Then your downfall will be together, while the black one and her sniper will always sell the other's hide if they found it to their own advantage, hihihi.~
==CVSan25J~And maybe it is Cyric who waits for just that, just like he forces the keepers of the Shadow Weave and the True Weave to clash.~
==RTLarlo~If they clash, it will both weaken them, there can be no real winner, whoever survives will be a weak survivor - for Cyric to devour.~
==CVSan25J~Cyric has no use of the powers of the Weave, it is the one who steers him who wants the Weave.~
==RTLarlo~And maybe your analysis has its error here, my girl. What about the other way round?~
==CVSan25J~Cyric uses the ambitions of a mortal mage for godhood, you mean? He fuels his hunger for the Weave and lets him clash the Keepers. Like you said, the winner will be weak and easily defeated by the new Karsus. Once he celebrates his victory the Lord of the Backstabbers, the Prince of Lies and Deceit will finish him off.~
==RTLarlo~This way or that, the Weave is endangered.~
==CVSan25J~Shar offered you the Shadow Weave and its powers in return for your services, right?~
==RTLarlo~An interesting subject, isn't it, a complete new field for research and development, hihihi.~
==CVSan25J~(Smiles) A strong temptation - even if you see that she may not be able to grant it, even if she wanted.~
=~You have studied and learned from the Weave since two millenia, Larloch. You are not at the end by far. The True Weave has as much to explore for you still as the Shadow Weave may offer.~
==RTLarlo~I knew you would help me order my options, Mystra. You always did. A new Karsus you named the puppeteer in the background?~
==CVSan25J~Szass Tam of Thay, dweller and explorer of the ancient Citadel in the Thaymounts.~
==RTLarlo~The knowledge of the old lizard race, descendents of the Dragon Age, old as Netheril...a dangerous matter to deal with...a new Karsus?~
=~He has the power but knows not his limits, this Szass Tam. He aims at godhood - YOUR godhood and portifolio. He wants the Weave.~
==CVSan25J~You have been there when Netheril fell, destroyed by one of such ambitions and such foolishness.~
==RTLarlo~It will not happen again. I will give Shar my answer.~
==CVSan25J~Not so hasty, Larloch. Shar expects your response still? We may use it to our advantage. Meet with her, but we will be there as well. It is a breach in our foe's phalanx.~
==RTLarlo~We will do that, my...my goddess. I am supposed to meet her in a tenday in the Temple in Wheloon.~
==CVSan25J IF~Global("CVR140","GLOBAL",0)~THEN ~Mystra's Temple in Wheloon to meet Shar? We will be there. <CHARNAME>, we should pay that place a visit before the meeting takes place, something is not right here.~
==CVSan25J IF~Global("CVR140","GLOBAL",1)~THEN ~So that is what we found so strange up there. Mystra is just a facade to attract those gifted for the magic arts, attract them to Shar. <CHARNAME>, we should pay that place a visit before the meeting takes place.~
END
IF~ Global("CVR140","GLOBAL",1)~THEN REPLY~ Let us go to Wheloon then.~EXIT
IF~ Global("CVR140","GLOBAL",0)~THEN REPLY~ Let us go to Wheloon then. Can you explain the way?~EXTERN CVSan25J Whelway

CHAIN
IF~~THEN CVSan25J Whelway
~It is in Cormyr, north east of Mornbryn's Shield. We can use the eastern road out of that town.~EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",2) AreaCheck("rtf153")~ THEN RTLarlo SharV4
~I will stand to the True Weave and Mystra, no more doubts, hihihi.~EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",3)~THEN RTLarlo SharTr1
~Here she is, my Dark Goddess, just like I have promised you. My morning gift to the Lady of Loss.~
DO~SetGlobal("SanRTFPlot4","GLOBAL",4)~
==CVSharG~She must know it is a trap but came nonetheless, what a foolish arrogance.~
=~Mystra, you know well that this is your temple no more and your power means nothing right here.~
==CVSan25J~I have sensed the minor powers of the Shadow Weave already ever since we entered this temple.~
==CVSharG~The minor powers as you call them will overwhelm you in a moment, my dear. When I leave here with your former trusted Larloch, the Weave will be ONE once again and in my possession.~
==RTLarlo~Hihihi...~
==CVSharG~Tell her what will happen, my friend, it may interest her and her feeble companion.~
==RTLarlo~It is simple, light one, deadly simple, hihihi, we have prepared this place well, so none of the Weave's energy can escape while at the same time you cannot use it with the Shadow Weave present in Shar. You know, my little darling, they nullify each other's impact. ~
=~Once we have you defeated, hihihi, which will not be a big effort under these circumstances, I have prepared this globe, hihihi, I call it Larloch's Weave Globe, hihihi, to capture the True Weave from you and give it to Shar.~
==CVSharG~Like in the days before Karsus' folly the Weave will be united again - and under my command.~
==CVSan25J~You are a lackey of the new Karsus east at Thay - he is a creature of the prime and you should know what will happen when he gets hold of Larloch's Globe of Ultimate Stupidity.~
==RTLarlo~Hihihi, a brilliant name for a brilliant invention!~DO~Enemy()~
==CVSharG~Forget about Szass Tam and forget about Mystra. Darkness will rule the planes from now on.~DO~Enemy()~
==CVSharG IF~InParty("Loureed")~THEN~Darkness will also swallow the little traitor - neither the Helping Hand Shaundakul you have chosen over me nor the then deceased Mystra can prevent your anhilation, drow. ~
==CVLOU25J IF~InParty("Loureed")~THEN~Where there is love and hope, darkness has already lost the fight.~EXIT

CHAIN
IF~Global("SanRTFPlot4","GLOBAL",5)Global("RTLarDec","LOCALS",0)AreaCheck("RTF143")~THEN RTLarlo SharTr2
~Success, hihihi, success.~
DO~SetGlobal("RTLarDec","LOCALS",1)SetGlobal("RTSimbul","RTF143",4)~
==CVSharG~Give me that globe, *my friend*, I have no time to waste to establish my new reign of the combined weave.~
==RTLarlo~Ah, I feel that ultimate energy, how it vibrates and stirs, hihihi...~
==CVSharG~Too much for you to handle, Larloch, this belongs into the hands of a Goddess.~
==RTLarlo~Sure, hihihi, you will not forget the truest of all servants, Dark Lady.~
==CVSharG~How long have you lived, Larloch? Ah, I need not to know - it's been too long by all means. You will never deceive me the way you have deceived HER.~
==RTLarlo~Hihihi, I guess I know what you have in mind - time for Larloch's Great Escape from Everything, hihihi...~
==CVSharG~I have greater plans than chasing after demented traitors.~EXIT

CHAIN
IF~AreaCheck("RTF026") !InParty("CVSandr") Global("26Once","LOCALS",0)~THEN RTLarlo Ress1
~Hihihi, in no time there will be the happy surprise for you, young god. All will turn out like the masterbrain has conjured it. I love it when a well laid plan rolls out.~
END
++~You dare to appear in Midnights presence - and in mine, lousy traitor!~ + Ress2
++~You fooled everyone behind your madman's mask, Larloch, you were really good.~ + Ress2

CHAIN 
IF~~THEN RTLarlo Ress2
~The Goddess of All Magic, the true goddess of the True Weave made her choice well. No one can be more loyal to the Weave than the one who has reeped its benefits for as long as I have. She knew they would believe my motifs to step out of Mystra's shadow and become the herold of the Shadow Weave, hihihi. This kind of scheming is in their own league and they apply the formula to everyone not knowing that our brain works on a different level, hihihi.~
=~She's Cyric's granddaughter after all, the blood of the Great Manipulator runs in her veins, hihihi, only she is able to use his own weapons against himself.~
=~Now hurry, friend, do your part of the task so we can pay Thay a visit.~DO~SetGlobal("26Once","LOCALS",1)~EXIT

CHAIN
IF~AreaCheck("RTF026") !InParty("CVSandr") Global("26Once","LOCALS",1)~THEN RTLarlo Ress3
~Now hurry, friend, do your part of the task so we can pay Thay a visit.~EXIT

CHAIN
IF~AreaCheck("RTF026") InParty("CVSandr")~ THEN RTLarlo Ress4
~Hihihi, was I good, was I the star of the show?~
DO~SetGlobal("26Once","LOCALS",2)~
==CVSan25J~You were superb, Larloch, even my friends believed you to be the scoundrel and traitor in this ploy. Without you giving Shar *the Weave* and escaping her *reward* by just pure luck they would rarely have accepted the bait.~
=~Your performance, Larloch, and <CHARNAME>'s true grieve and anger were necessary to cover the leaks in our plan and draw the attention from my faked death.~
==RTLarlo~Hihihi, you estimated their reaction well, my Goddess, including Shar's immediate impuls to get rid of me and her haste to secure the globe without investigating your unexpected defeat any further.~
==CVSan25J~The spell plague takes its toll by now among the gods and their power and reputation. I hope Shar's manipulation with the contradictory forces of the Weaves will also show some unpleasant results soon.~
==RTLarlo~My reports state that Szass Tam's efforts here on the Sword Coast have come to a halt, hihihi. The signs of an inner tension in the phalanx are apparent, they are occupied with internal quarreling at the moment.~
==CVSan25J~We should once more consult my grandmother below and then seize the opportunity to visit Thay again - this time with the power and the odds in our favour.~
==RTLarlo~Down with the new Karsus, hihihi - hihihi...~DO~EscapeArea()~EXIT