BEGIN BLeya25

IF~ Global("LeyalaGB","LOCALS",1) ~THEN BEGIN LGoodbye1
SAY~May I ask a final favour from the God I love above all.~
IF~~THEN REPLY~Anything, my sweet nun, if I can provide it.~DO~SetGlobal("LeyalaGB","LOCALS",2)~GOTO  LGoodbye2
END

IF~~THEN BEGIN LGoodbye2
SAY~You will depart soon for Celestia and I will remain here.~
=~I will continue to conduct my duties to my Lord with joy and pleasure...I only ask of you not to seek my company again should you visit the Prime in the future as - a man. I want to keep the sweet memory of what has been but I know that from now on I have to live my own life - with my god in my heart but not with you as the man at my side.~
IF~~THEN REPLY~I agree and respect your decision. You will stay in my heart even if you cannot continue to be the woman at my side.~GOTO LGoodbye4
IF~~THEN REPLY~You will deny yourself to your Lord should he come to seek pleasure with you again?~ GOTO LGoodbye3
END

IF~~THEN BEGIN LGoodbye3
SAY~It was my hope and feeling that I was more to you than a toy for your pleasure. Do not confront me with a situation where I have to reject your presence.~
IF~~THEN REPLY~You are right, I wouldn't be any better than those gods we just defeated if I took a mortal for just a joy. I love you too much to hurt you in such a way.~ GOTO LGoodbye4
IF~~THEN REPLY~I will miss you, but there is no other way for us, Leyala.~GOTO LGoodbye4
END

IF~~THEN BEGIN LGoodbye4
SAY~My heart sings with joy - let us enjoy each other one last time, my love.~
IF~~THEN DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

CHAIN
IF~Global("RTLeybant","GLOBAL",1)~THEN BLeya25 Exercise1        
~*Leyala has moved a bit aside from the group to perform her morning exercises. Her trained yet fragile feminine body follows a pattern of very slow movements. You enjoy the play of her muscles beneath her spotless skin and the concentrated look on her beautiful face as she goes through her scores with half-closed eyes.*~
DO~SetGlobal("RTLeybant","GLOBAL",2)~
==BSandr25~ *Sandrah observes the nun's exercise with similar admiration.*~
==BLeya25~ Aah, I feel a lot better now with my brain and body refreshed.~
==BSandr25~I hope I have not disturbed your concentration, Leyala.~
==BLeya25~I have noticed your presence but it only added to the value of my eyercise. After all this is a preparation for combat and defence and my foe would do anything to distract me from my attack actions.~
==BSandr25~It always fascinates me how you monks have this complete control of your body and make it an effective weapon at will.~
==BLeya25~(Laughs) Your own behaviour in combat is not so much different according to my observations. Even with your hammer, shield, and armour you are not one to rely on power and melee but on your fast eye and coordinated movements.~
==BSandr25~I heard such analysis of my fighting style before and admit it is true. When I discovered that a war hammer is my ultimate weapon I learned as well how I needed to develop a different style from a normal fighter to handle it as I could never rely on strength alone.~
==BLeya25~I have great respect for your insight that life is constant learning, Sandrah. It is not often that one finds this ability in the ones that lead and rule.~
==BSandr25~In most things in live I was lucky to have the best of teachers for this, like my father who considers himself a constant seeker...but let us join the others now, breakfast seems to be ready.~EXIT

CHAIN
IF~Global("AerieCreated","ar0601",4)~ THEN BLeya25 AirDung
~Love and hope can grow in the most desperate dungeons.~
DO~SetGlobal("AerieCreated","ar0601",5)~
==BSandr25~A fact that <CHARNAME> and me have encountered many times during our travels.~
==BLeya25 IF~Global("SanRomPath","GLOBAL",1)~THEN~It is what makes me follow the new god with all my heart.~
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)~THEN~It is what makes me follow the new goddess with all my heart.~
==BSandr25~And what about yourself, Leyala? A nun of love is not condemned to chastity.~
==BLeya25 ~That is true and I am surely not a virgin anymore. But it is different to teach and encourage others and to experience it yourself.~
==BSandr25~Did we take you from the one you love when we took you from Waterdeep?~
==BLeya25 ~I am close to <CHARNAME> now every moment, the one who makes my heart sing and rejoice.~
==BSandr25~I understand that, however a deity may not be the target for your mortal affection nor does the love for <CHARNAME> exclude you from other happy experience.~
==BLeya25 ~Oh, yes, still...my primary task is to serve in my duty but I will heed your words and think of my own pleasure more often.~
==BLeya25 IF~Global("SanRomPath","GLOBAL",1)~THEN~*She glances in your direction and smiles pleasantly.*~
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)InParty("RTMeli")~THEN~*She glances in Melicamp's direction and smiles pleasantly.*~
==BLeya25 IF~Global("SanRomPath","GLOBAL",2)!InParty("RTMeli") InParty("CVGiran")~THEN~ *She glances in Giran's direction and smiles pleasantly.*~
EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",1)~ THEN BLeya25 Giran1
~This is the land where you grew up, Giran?~
DO~SetGlobal("RTLeyGir","LOCALS",2)~
==BGir25~Yes, even if I were born in Bergost it is this land I call my home and I feel at home. Do you like it?~
==BLeya25~It is cold and rough but it has its beauty. It is cold and rough like its inhabitants and very unlike yourself.~
==BGir25~You think so?~
==BLeya25~You are very calm, gentle - I see how you care for your little animal. It is hard to imagine you being happy among the Clan Orcs.~
==BGir25~For a fighter it is a good school. Also Clan Orcs may be tough but they care very much for their family and children and each other up here.~
==BLeya25~How are their girls?~
==BGir25~Wild, proud and unkempt. (Laughs) When they want you there is little chance of resistance and when they want you they swallow you whole...~
==BLeya25~Are you talking out of experience?~
==BGir25~Hm, I was able to fight them off until now. Not many want me anyway, even - it gets harder now that I really have a berserker's reputation. I am afraid some strong ones have detected me...~
==BLeya25~But...your djahemma - it is not that you are running away, I cannot imagine such a thing from you?~
==BGir25~I would not call it running away, but a good fighter must know when to battle and a good ranger must know when to hide. When I meet a strong grizzly bear I hide - not out of fear as I could most likely kill the beast - but because it is a senseless fight that I can easily avoid. There is no need for unnessesary hurt, in the end a bear is not my foe but a creature to be respected.~
==BLeya25~Those orc girls won't accept a *no* from you?~
==BGir25~I am not sure, Leyala, it does not happen, young orcs will not do that - I mean they just...~
==BLeya25~They listen to their basic instincts rather than to their heart?~
==BGir25~Once they have found a stable partner they become family people, but before that, well, yes, they just follow their instincts as you called it.~
==BLeya25~It is not what you wish for yourself I imagine.~
==BGir25~You are a good observer, silent one.~
==BLeya25~You are an interesting subject, gentle one.~EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",3)~ THEN BLeya25 Giran2
~What is on your mind, gentle observer? *Leyala shifts her hood aside and gives Giran a smile that could melt all ice in the Stormhorns.*~
DO~SetGlobal("RTLeyGir","LOCALS",4)~
==BGir25~You asked me about the orc girls recently. May I ask you something in return?~
==BLeya25~I am glad if you would. It may avoid misunderstanding.~
==BGir25 IF~Global("SanRomPath","GLOBAL",1)~THEN~Maybe - I am not so sure I understand what a nun's service in the name of the God of Love would encompass. ~
==BGir25 IF~Global("SanRomPath","GLOBAL",2)~THEN~Maybe - I am not so sure I understand what a nun's service in the name of the Goddess of Love would encompass.~
==BLeya25~Now I am really glad you have asked. Chastity is not on our agenda but we are no temple whores or such. I advise couples who may have problems with their partner, I show them how they may get happy with each other. I help unexperienced youngsters to overcome their fears of the other gender. Such is how I show people the joy of loving each other.~
==BGir25~But it requires more than just words...at times?~
==BLeya25~It may, it is up to the counselling nun to decide that on her own.~
==BGir25~Can you do that without your heart being in it?~
==BLeya25~But my heart is always in it, Giran, my love for the task I do in <CHARNAME>'s name. You are right, I may not personally love the one I cure, but I love the act and the result.~
==BGir25~And what...I mean, maybe some day there will be one...one you have more than professional interest in...~
=~Will you give up your task and be his forever or something alike?~
==BLeya25~I cannot say, honestly. I know not how he will be and what he may expect of me, how much he is able to understand what I do and what I give to others. I know not if it is possible for a man to share me with others while still knowing I am only just his.~
==BGir25~You are right, we cannot solve such questions in advance, I guess. When the moment comes all will be be different from what we had imagined ever before.~
==BLeya25~I am sure my heart will know what to do then.~EXIT

CHAIN
IF~Global("RTLeyGir","LOCALS",5)~THEN BLeya25 Giran3
~If I could read your mind I would answer your question without your asking it, lone ranger, but as I can't you have to open your mouth.~
DO~SetGlobal("RTLeyGir","LOCALS",6)~
==BGir25~You read me well enough to know I am curious about you.~
==BLeya25~(She has removed her hood so Giran can fully appreciate her beauty.)~
==BGir25~I would like to learn more about your choice to become a follower of <CHARNAME>. ~
==BLeya25~I have <PRO_HISHER> blood in me, it made me stay alive.~
==BGIR25~Oh...you are <CHARNAME>'s child?~
==BLeya25~No...(she tells Giran the story of her rescue by Sandrah and yourself).~
==BGir25~It is in a remote way similar of my becoming an orcish berserker and Shauhana's prince, don't you think?~
==BLeya25~You see how love and hope can make possible what would otherwise have been lost and hopeless lives.~ EXIT
