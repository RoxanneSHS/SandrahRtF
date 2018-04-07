BEGIN RTMysMes

IF~Global("SeenMys","RTF070",2)~THEN BEGIN Seenher
SAY~It is really true!! I must notify Candrella.~
IF~~THEN DO~SetGlobal("SeenMys","RTF070",3)~ EXIT
END

BEGIN RTThKn

IF~Global("GuardOd","RTF070",2)~THEN BEGIN NoOut70
SAY~STOP! You know you are not to leave detention. Go back!~
IF~~THEN REPLY~We go where we want to go, lackey.~ GOTO Think2
IF~PartyHasItem("RTOdBad")~THEN REPLY~ We have a permission, we may pass.~GOTO Out70
IF~~THEN REPLY~Calm down, we will go back.~DO~SetGlobal("GuardOd","RTF070",3)~EXIT
END

IF~ Global("GuardOd","RTF070",3)~THEN BEGIN NoOut70b
SAY~What do you want again?~
IF~~THEN REPLY~We go where we want to go, lackey.~ GOTO Think2
IF~PartyHasItem("RTOdBad")~THEN REPLY~ We have a permission, we may pass.~GOTO Out70
IF~~THEN REPLY~Calm down, we will go back.~DO~SetGlobal("GuardOd","RTF070",3)~EXIT
END

IF~~THEN BEGIN Out70
SAY~I see. I was not informed about the visit. (Sigh) All this secrecy...You may pass.~
IF~~THEN DO~SetGlobal("GuardOd","RTF070",4)~EXIT
END  

IF~Global("In910","RTF910",1)~ THEN BEGIN LegHQ1
SAY~Tread carefully in the Legion's Headquarters, do not disturb the knights. Stay away from the prison and torture chamber unless you want to end up there.~
IF~~THEN DO~SetGlobal("In910","RTF910",2)~EXIT
END 

IF~Global("In908","RTF908",1)~ THEN BEGIN LegHQ2
SAY~This is not an area for visitors. Your screams will soon be among those imprisoned and tortured in here!!~
IF~~THEN DO~SetGlobal("In908","RTF908",2)~DO~Enemy()~EXIT
END

CHAIN
IF~~THEN RTThKn Think2                                        
~Have you not learned yet, Odesseiron, violence is useless here.~
==CVSan25J~Please, <CHARNAME>, we are not here to unnecessarily draw attention yet. Let us explore this area for another possibility first.~
END
++~You are right counsellor, they mistake us for someone else it seems. Let's find out what is going on.~EXIT
++~I take no insults from such an ape, and I'm surely no Odesseiron. I will stuff the arrogant fool's mouth.~DO~ActionOverride("RTThKn",Enemy())~EXIT



BEGIN RTOdButl
CHAIN
IF~AreaCheck("RTF079") Global("CadrHint","RTF079",0)~THEN RTOdButl Hint1
~ Get out, red scum...!!~
=~Eeh...who are you?~
DO~SetGlobal("CadrHint","RTF079",1)~
==CVSan25J~Mystra...~
==RTOdButl~Psst!!~
=~Mylady, can it be? It must be true then...you...~
==CVSan25J~Candrella?~
==RTOdButl~Psst! There may be ears everywhere, my lady.~
==CVSan25J~This is the former Odesseiron estate, is it not?~
==RTOdButl~Psst! All these names are not to be mentioned here any more.~
=~Move upstairs, you will find what you are supposed to find. Good luck.~
DO~EscapeArea()~EXIT

BEGIN  RTOdLuc
CHAIN
IF~AreaCheck("RTF087") GlobalLT("SanRTFPlot3","GLOBAL",3)~THEN RTOdLuc Wellhint
~Mama said you'd come.~
==CVSan25J~Are you Candrella's daughter?~
==RTOdLuc~Mama said you'd understand. I am Lucinda. Mama cannot be here but finds you.~
==CVSan25J~Are you save here, my dear?~
==RTOdLuc~Mama says the Legion bastards don't care for small ones like me and old ones like Ehrdwin. They leave us alone.~
==CVSan25J~Anything else your mama has said for us to know?~
==RTOdLuc~Mama says you look for barn and for old well. You clever and wise and know what to do.~
==CVSan25J~Thank you, Lucinda. We will see that you and your mama will be together again soon.~
==RTOdLuc~This is what mama has said also, bye.~EXIT

CHAIN
IF~AreaCheck("RTF087") GlobalGT("SanRTFPlot3","GLOBAL",2)~THEN RTOdLuc Wellc
~Mama said you always welcome here.~EXIT

CHAIN
IF~Global("In091","RTF091",1)~THEN RTThKn GoSamHQ
~Peasants!! Where do you think you go, he?~
DO~SetGlobal("In091","RTF091",2)~
==CVSan25J~I assume this is the Guild of Foreign Trade. Consequently the man to meet here will be Samas Kul.~
==RTThKn~ Lady, the Master will surely like you, I know his taste in women. For that we ought to get rid of your armour and we need to get rid of that company you brought along.~
==CVSan25J~I am afraid your master has to deal with me just the way I am. He may appreciate the woman but he may even prefer the treasure I bring for him.~
==RTThKn~ You come with tribute, why didn't you say that - Samas may still wanna add you to the loot, be careful.~
==CVSan25J~I come to compensate for some losses your master had to endure recently. Step aside less you want to be among them.~
==RTThKn~ Ah, you're the one who so reduced the ranks of our lizardmen. I think he will make me Lieutenant for dragging you before his throne in chains, my beauty.~
DO~Enemy()~EXIT
