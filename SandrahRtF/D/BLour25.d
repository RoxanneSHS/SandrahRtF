BEGIN BLour25

CHAIN
IF~Global("LouredB","GLOBAL",1)~ THEN BLour25 meanwhile
~ Ah, to be out in the open once again - in company to trust!!~
DO~SetGlobal("LouredB","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",1040)~
==BSandr25~It sounds like you have not done that too often, L'Urieet. How did you fare since our initial meeting, was it hard for you to reach Undermountain?~
==BLour25~I made it, so much is obvious. It was harder than I had envisioned, I was not prepared for the surface - I mean to manage my survival alone, not heading a conquering drow army for the glory of my damned mother.~
=~The way through Tethir was hard, the Bhaalwar had left its traces everywhere and people where mostly hostile towards strangers - especially if those strangers made it even worse by displaying a dark elf's face. I found no peace until I reached Undermountain almost a year afterwards.~
==BSandr25~It cannot have been so bad in Qilandrha's enclave afterwards - you were still there after all the time.~
==BLour25~The shelter of a new *house*, excuse me for that expression...my drow mindset translates it that way as I have no other word. I lived a sheltered life of study and training, still - I am happy to get out and make new experiences. My skills are not for the Undermountain quarters but for the battlefield.~
==BSandr25~We will see one or the other battle, I am sure, even if we would rather avoid them.~
==BLour25~In those forced upon us I will get the chance to prove my worth to you and <CHARNAME>.~
==BSandr25~And to yourself.~
==BLour25~Qilandrha told me of your emphatic skills. You see much.~EXIT

CHAIN
IF~Global("LouredB","GLOBAL",3)~ THEN BLour25 Lougods1
~I do not regret to have left Undermountain. This develops into much more the life I want for myself.~
DO~SetGlobal("LouredB","GLOBAL",4) RealSetGlobalTimer("LoureedT","LOCALS",1040)~
==BSandr25~You were not too happy in the enclave?~
==BLour25~It was necessary, I learned and grew but I was not truely part of it. Your sister was the only friend I made - she even understood my rejection of Eilistraee.~
==BSandr25~You follow another god? Surely not the Spider Queen.~
==BLour25~I follow no god. Even if Eilistraee is better than Lolth, a society build on faith is weak. Drow will never achieve anything if they depend on such higher powers.~
==BSandr25~This may be true for any other religion as well.~
==BLour25~(Momentarily the drow seems to be puzzled by those words - from the mouth of a goddess.)~
=~Travelling in the company of two *gods* I cannot deny their existence but I can doubt their role for us mortals.~
==BSandr25~Righfully so.~
==BLour25~You must know best - you may have your reason to play along in their game.~
==BSandr25~Be assured I have good reason. I am forever a creature of the Prime regardless of my current power and role.~EXIT

CHAIN
IF~Global("LouredB","GLOBAL",5)~ THEN BLour25 Lougods2
~I hate those *gods* and what they do to us. They have no right to be down here!~
DO~SetGlobal("LouredB","GLOBAL",6) RealSetGlobalTimer("LoureedT","LOCALS",1240)~
==BSandr25~We have more in common than you might imagine.~
==BLour25~I forgot myself...I should not have spoken this way in your presence.~
==BSandr25~It is good to know the opinion of those you travel with. In your case I even agree with your every word.~
==BLour25~You do? Those creatures should not use mortals as their toys. Look at my kin, they are no better than slaves in the clutches of a wicked goddess. This is not acceptable.~
==BSandr25~The mortals cannot storm Celestia but they can emancipate themselves from being sheep guarded by irresponsible shepherds.~
==BLour25~That would include you and <CHARNAME>.~
==BSandr25~We are different. We hail from the Prime and it is still our world. If you cannot achieve what you want from the outside, you must infiltrate and destroy from the inside.~
==BLour25~I no longer wonder how you won all the battles from Candlekeep to the Throne of Bhaal. You are a dangerous creature and I am glad I am not your enemy.~EXIT

CHAIN
IF~Global("LouredB","GLOBAL",7)~ THEN BLour25 Lougods3
~Can you feel this, hear this? Like a thousand haired legs and a thousand tentacles hissing!~
DO~SetGlobal("LouredB","GLOBAL",8) SetGlobal("RTLouPlot","GLOBAL",1)RealSetGlobalTimer("LoureedT","LOCALS",1500) ~
==BSandr25~I have encountered it once before...~
=~<CHARNAME>, prepare for an assault!! This is the signature of Lolth!!~EXIT

CHAIN
IF~Global("RTLouPlot","GLOBAL",7) ~ THEN BLour25 Lougods4
~She said she will return. Can they not accept the fact I will never be one of them?~
DO~SetGlobal("RTLouPlot","GLOBAL",8)~
==BSandr25~ You were right in your earlier judgement about Lolth. Drow are not her worshippers but her slaves. She hunts you and those who think and act like you like a slaver chases after his lost *property*.~
==BLour25~Gods that behave like the worst of the mortals. Is there no one to stop them?~
==BSandr25~They are powerful but they can be fought. All gods gain their status from the masses that worship them. Without followers they are nothing.~
=~There are those who attract their disciples by example and love, those that provide benefits for them and those that rule by - fear.~
==BLour25~Lolth cannot allow any drow to escape from her regime. It would encourage others, it would be an example that the fear can be overcome.~
==BSandr25~You are right, it is not so much revenge but to constitute an example for others to follow her even more fanatically.~
==BLour25~Resistance and giving the example is locgically the best way to fight her, like Drizzt, like Solaufein, like Qilandrha...~
==BSandr25~...and like you?~
==BLour25~Unlike them I would not replace her by another god or goddess, regardless of alignment. The drow must gain the right to decide for themselves.~
==BSandr25~The spider queen has any reason to persue you. You are dangerous - to her.~
==BLour25~Just like you and <CHARNAME> are dangerous for the rest of the pantheon - I wonder which of them are aware of this danger?~DO~AddJournalEntry(@2059,QUEST)~EXIT

//Giran tested
CHAIN
IF~Global("LouredG","GLOBAL",1)~THEN BLour25 Testgiran
~Come here, orc boy, I demand it!~
DO~SetGlobal("LouredG","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",500)~
==BGir25~If you want something you may ask me politely, *drow*. Is that the famous way the females of your kin treat the males?~
==BLour25~ Do not try to be insolent, do as you are told.~
==BGir25~(Sigh) Young orc girls in the heat of their hormones are not that different and I know how to treat them.~
==BLour25~You dare to compare me with those *animals*? (Grins wickedly) In the Underdark this answer would have gained you a flogging in the spider web pits - with me it gains you respect.~
==BGir25~(Laughs) You play your role well - even as I know you are not fond of the ways of your own kin anymore. So here I am just like you begged me to be.~
==BLour25~Fine, you came to your senses after all. Let me take care of that injury now.~DO~
ReallyForceSpell("CVGiran",CLERIC_HEAL)~EXIT

//Melicamp tested
CHAIN
IF~Global("LouredM","GLOBAL",1)~THEN BLour25 Testmeli
~Come here, mageling, I demand it!~
DO~SetGlobal("LouredM","GLOBAL",2) RealSetGlobalTimer("LoureedT","LOCALS",500)~
==RTMeli~Are you trying your drowish domination ways on me, L'Urieet?~
==BLour25~I treat you like a male needs to be treated! Especially such weaklings that hide behind their toy magics.~
==RTMeli~You are a mage yourself - why do you insult our art so?~
==BLour25~Are you trying to beat me with intellectual challenge where your weapons fail?~
==RTMeli~Intellect and logic can be as sharp as any weapon.~
==BLour25~(Grins wickedly) I like that answer, maybe you are not such a weakling.~
==RTMeli~(Laughs) Even as I know you are not fond of the ways of your own kin anymore, you played your role well - So here I am just like you begged me to be.~
==BLour25~Fine you came to your senses after all. Let me give you this scroll for inspection, it is faulty and maybe you can correct it.~DO~ GiveItemCreate("scrl69","RTMeli",1,0,0)~ EXIT

CHAIN
IF~Global("LouredB","GLOBAL",9) ~THEN BLour25 Loumale1
~Sandrah...as a woman...you surely had quite some experience with the male gender?~
DO~SetGlobal("LouredB","GLOBAL",10) RealSetGlobalTimer("LoureedT","LOCALS",2500)~
==BSandr25~You talk of drow male or just generally? Anyway, the answer to both is yes. Is there any problem you have with that issue?~
==BLour25~ The drow male in Undermountain - well, you once said we carry the Underdark still inside...they do, at least this generation.~
==BSandr25~They have a problem when facing a strong female like you, you mean, at least when that woman is drow?~
==BLour25~That very much explains it. And the elves and humans, there is either fear of my race or the plain lust that arises in them when they see a dark beauty like me.~
==BSandr25~You are now in company of people that have a clearer mind than those you encountered before, people strong enough to overcome prejudice and race frontiers.~
==BLour25~It may not be a good idea to mingle with fighting companions...~
==BLour25 IF~InParty("RTMeli")~THEN ~ ...even, mh, he is unbiased and a strong sorcerer...(she glances thoughtfully in Melicamp's direction.) Ah, we should focus on the task ahead, Sandrah, thank you for listening.~
==BLour25 IF~!InParty("RTMeli") InParty("CVGiran")~THEN ~ ...even, mh, he has withstood those lusty orc girls and he is quite charming - for a human...(she glances thoughtfully in Giran's direction.) Ah, we should focus on the task ahead, Sandrah, thank you for listening.~
==BLour25 IF~!InParty("RTMeli") !InParty("CVGiran")~THEN ~...especially not with gods - even if he's so different and charming...Ah, we should focus on the task ahead, Sandrah, thank you for listening.~EXIT