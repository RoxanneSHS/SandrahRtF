BEGIN RTIren

CHAIN
IF~Global("RTIrenApp","ar0602",1)~THEN RTIren Disturb1
~A disturbance down here??? Blasted Saemon, how is that possible?~
DO~SetGlobal("RTIrenApp","ar0602",2)~
==RTIren~YOU!!! That explains it, who else could have made it that far, stubborn and persistent as always.~
END
++~You have a really bad taste in choosing your servants, Irenicus.~+ Disturb2

CHAIN
IF~~THEN RTIren Disturb2
~You somehow solved THAT problem, <CHARNAME>.~
==RTIren IF~Global("SanRomPath","GLOBAL",1)~THEN~So they kicked the fledgling god of love spit Love and and vain Hope out already. Well, that was to be expected without an adequate advisor by your side.~
==RTIren IF~Global("SanRomPath","GLOBAL",2)~THEN~So they kicked the fledgling goddess of love spit Love and and vain Hope out already. Well, that was to be expected without an adequate advisor by your side.~
==CVSan25J~Your refreshing welcome emphasises my suspicion that you have not expected us, Joneleth, which again confirms my belief that you are not involved in the plot against us.~
==RTIren~What? Which plot...? I am not interested in such affairs these days, my poor goddess of the minor magics and beginner spells.~
==CVSan25J~(Laughs) I simply believe you, old friend. Still - you are somehow an expert on the subject at hand and may be helpful to us.~
==RTIren~Why should I?~
==CVSan25J~Professional interest.~
=~Let me give you some of the facts and see if you lick blood.~
==RTIren~No negotiation?~
==CVSan25J~Just listen.~
==RTIren~(Nods silently)~
END
++~If he's not involved, why bother with him, Sandrah?~+ Disturb3
++~*Let Sandrah continue at her discretion.*~ + Disturb3
++~I still do not trust the mageling, Sandrah.~ + Disturb3

CHAIN
IF~~THEN RTIren Disturb3
~*Ignoring you completely, Irenicus awaits Sandrah's explanation.*~
==CVSan25J~The issue is - Clones.~
=~A large amount of them, Joneleth, including people already very long dead. Controlled by some mysterious substance fed to them.~
=~She continues with the details that she and Thalantyr have found.~
==RTIren~I agree with your analysis of the Hornswamp laboratory. You need a much bigger installation for that - and an enormous amount of energy for the production. I had my air elemental pocket plane down here for that purpose. (It serves a much better purpose now!!) They must do the cloning somewhere else.~
=~Professionally speaking, they are good at what they do, very advanced. They have found something I was still researching in my time, the thing that makes those clones so willing and responsive whilst maintaining their inherited skills and zest.~
==CVSan25J~Where would YOU have gone to find such a solution, with all your knowledge and provided you had access to such sources?~
==RTIren~They must possess knowledge of the most ancient scientific sources, the origins of necromancy and cloning, from the days before the branches were separated.~
==CVSan25J~I am afraid we all will not like the answer to that question, <CHARNAME>.~
END
++~Nesseril?~ + Disturb4
++~I have no idea.~ + Disturb4
++~The red wizards?~ + Disturb4
++~Halruaa?~ + Disturb4

CHAIN
IF~~THEN RTIren Disturb4
~Of all the tales of powerful magic that have emerged from Halruaa, the legend of the great elixirs is perhaps the most remarkable. The first great elixir concoction possibly originated in Netheril itself. Regardless of their origins, these liquids possessed a chaotic nature that made them an unappealing risk. The formula for their creation was eventually lost and forgotten.~
==CVSan25J~The red wizards from Halruaa inherited and preserved much of Netheril's knowledge. I think you know your lore well enough from there, as they were involved in the founding of Thay.~
==RTIren~Something else you mentioned may reveal a further trace to us.~
==CVSan25J~To us?~
==RTIren~You were right, Sandrah, professional interest.~
=~What I was to say, you told of long dead people you knew that were cloned. You are aware that you need something from the body of the being you want to clone to start the production, skin, hair, fingernails...~
END
++~Where did you get this stuff from when you did your experiments?~+ Disturb5
++~We think that someone named Nerkio is involved in gathering such *material*.~ + Disturb5

CHAIN 
IF~~THEN RTIren Disturb5
~The collector.~EXIT

CHAIN
IF~Global("RTIrenApp","ar0602",6)~THEN RTIren Colle1
~Thanks for helping me with the housekeeping. It is really almost impossible to find reliable servants these days. Where were we in our discussion?~
DO~SetGlobal("RTIrenApp","ar0602",7)~
==CVSan25J~Nerkio, the collector.~
==RTIren~ Ah, yes, a helpful guy, just a bit greedy at times. He was quite useful to provide required material not easily found elsewhere.~
==CVSan25J~Do you know whom he works for or where he could be found?~
==RTIren~Hm, he delivered the required stuff on time and got paid for it. I never cared for anything else about that cretin other than that he was reliable and confidential.~
=~For someone like you, it should not be too hard to find him, I got my hints from some fences and graveyard workers back then.~
==CVSan25J~Sounds like some simple detective work then.~
END
++~Sounds to me like a lot of running around and questioning people.~+ Colle2

CHAIN
IF~~THEN RTIren Colle2
~That is what flat-footed detectives do, isn't it? You should be capable of at least that.~
==CVLou25J IF~InParty("Loureed") G("lrSendaiSoul",1)~THEN~So this is how my mother's soul lives on. Ha, in a pathetic male retired mageling - it serves her so well.~
==RTIren IF~InParty("Loureed") G("lrSendaiSoul",1)~THEN~She serves me quite well since I got that disastrous drow female hormone turmoil under control - I'm sure you know well that weakness I'm talking about, *drow girly*.~
==CVLou25J IF~InParty("Loureed") !G("lrSendaiSoul",1)~THEN~So this is how my mother's soul could have ended. Ha, in a pathetic male retired mageling - it would serve her so well.~
==RTIren IF~InParty("Loureed") !G("lrSendaiSoul",1)~THEN~She would have served me quite well provided I'd get that disastrous drow female hormone turmoil under control - I'm sure you know well that weakness I'm talking about, *drow girly*.~
==RTIren~Just before we part and you leave me again to my restored peace, I like to ask you for something.~
==CVSan25J~We promised you nothing, remember.~
==RTIren~You appealed to my professional interest, Sandrah. After this recent little incident I wonder if you let me have some of that liquid you found for my studies. It may help me with those domestic problems in the future.~
END
++~No way. I don't trust you to use it for just that.~+ Colle3
++~Why not. You seem to have become a harmless scientist by now.~+ Colle3
++~Sorry, but I have none of it with me any more.~+ Colle3
++~Fine, but only for little Quayle's protection and his mother...~+ Colle4

CHAIN
IF~~THEN RTIren Colle4
~Accepted. (Grumble) They probably thank you for it.~
=~Well, you will find your way out alone like you did once before already.~
DO~ TakePartyItem("RTFlui") AddJournalEntry(@2049,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF~~THEN RTIren Colle3
~Well, you will find your way out alone like you did once before already.~
DO~ TakePartyItem("RTFlui") AddJournalEntry(@2049,QUEST) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF WEIGHT #-7~Global("RTIrenApp","ar0602",3)~THEN LRRielev Lassal1
~Master, alert!!! ~
=~ Lassal!! He finally convinced the Snakes to follow his revolt!~
DO~SetGlobal("RTIrenApp","ar0602",4)~
==RTIren~ Ah, so called allies, nothing but quarrel and disturbance...~
==CVSan25J~Lassal? The vampire in Bodhi's former service?~
==LRRielev~The same, madame.~
==RTIren~Ah, call it a family heritage...~
=~My, we must clean out this level before little Quayle comes home from school...~
=~Anyway...if you want to continue our conversation you need to help me for the moment. Meet me at the prison cells, you will surely remember where they were, <CHARNAME>.~
DO~ClearAllActions() SetGlobal("SanRTFColl","GLOBAL",1) ActionOverride("LRRielev",ReallyForceSpell(Myself,DRYAD_TELEPORT)) ActionOverride("RTIren",ReallyForceSpell(Myself,DRYAD_TELEPORT))~EXIT