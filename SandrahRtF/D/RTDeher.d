BEGIN RTElles
BEGIN RTDeher

CHAIN
IF~AreaCheck("ar2800")Global("SanTotStart","Global",0)~THEN RTElles InRTF1
~Oh, <CHARNAME>, you have returned, and you, Mystra. Suldanessalar is strong again and reborn thanks to you. We have learned some of what has happened to you since, as much as is possible to comprehend for us mortals.~
==CVSan25J~We have returned in our mortal avatars, Ellesime - just as our opponents.~
==RTElles~Gods walking on the Prime, good ones like you - and opponents...it has happened once - will it ever end?~
==CVSan25J~It is my sworn goal in this trouble to end it in a way that will keep the celestials from the prime for all future. This must be the last time that avatars fight their wars among the mortals.~
END
++~Will Suldanessalar aid us in this attempt, my queen?~+ InRTF2
++~To make this vision come true we need the help of your people, Ellesime.~ + InRTF2

CHAIN
IF~~THEN RTElles InRTF2
~We are in your debt, I do not deny such, but what do the gods ask us to do. Mystra said this was the war of the celestials rather than ours.~
==CVSan25J~It is a mortal who has laid out the plot and pulls the strings, it is a creature of the prime who has brought all of us down to this plane once again. Still, it is true that this may not be your war - just like your quarrel with Joneleth was not ours even if we were pulled into it against our will.~
==RTElles~Suldanessalar will pay its debt even if I do not know what we may offer you to assist.~
==RTDeher~My queen, will you allow me to pay the debt of our city as well as my own personal one. Should <CHARNAME> agree I will be happy to follow <PRO_HIMHER> and stand by <PRO_HIMHER> and <PRO_HISHER> companions as one of them.~
END
++~I am glad for this offer, Deheriana. I will be honored by your company.~ EXTERN RTDeher Deherjoin
++~I thank you for your good will, Deheriana. I have reconsidered my request and now agree with your queen - I should not involve you, your city, or the elves in our struggle. Fare well.~ EXTERN RTDeher Deherstay

CHAIN
IF~~THEN RTDeher Deherjoin
~I thank you, <CHARNAME>, your trust in me feels good. I will not disappoint you.~
DO~SetGlobal("P#DehWelcome","GLOBAL",3)SetGlobal("DeherJoined","GLOBAL",1)
ActionOverride("P#DEHER",ReallyForceSpellRES("fjxpmooc",Myself)) ActionOverride("P#DEHER",JoinParty()) ActionOverride("RTElles",EscapeArea())~EXIT

CHAIN
IF~~THEN RTDeher Deherstay
~Your words sadden me, my friend, but I agree with my queen's wisdom. May Sandrah's words come true and this be the last celestial raid on our plane. Farewell.~
DO~ActionOverride("P#DEHER",EscapeArea()) ActionOverride("RTElles",EscapeArea())~EXIT

CHAIN
IF WEIGHT #-4~Global("InRTF","ar2800",1)~THEN Suelf10 Store
~Greetings, our friends and heroes, you were away for long but you will not be forgotten here ever.~
END
++~Thank you for the welcome, Reirra.~ EXTERN Suelf10 18