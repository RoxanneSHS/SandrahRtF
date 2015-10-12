BEGIN RTReHod3

BEGIN RTReHod1
IF~RandomNum(2,1)~THEN BEGIN Freefi1
SAY~Our knights down here are loyal to the red hoods and stronger than the scum above.~
IF~~THEN EXIT
END

IF~RandomNum(2,2)~THEN BEGIN Freefi2
SAY~It is good you have come, friends.~
IF~~THEN EXIT
END

BEGIN RTReHod2
IF~RandomNum(2,1)~THEN BEGIN Freewi1
SAY~Our knights down here are loyal to the red hoods and stronger than the scum above.~
IF~~THEN EXIT
END

IF~RandomNum(2,2)~THEN BEGIN Freewi2
SAY~There is hope I feel today due to your appearance, friends.~
IF~~THEN EXIT
END

BEGIN RTSlav4
IF~RandomNum(5,2)~THEN BEGIN Free1
SAY~Rather be a free man in a cave than a slave under the sun.~
IF~~THEN EXIT
END

IF~RandomNum(5,1)~THEN BEGIN Free2
SAY~The leader's drow wife may enjoy these caves but I hope to see sunlight again one day.~
IF~~THEN EXIT
END

IF~RandomNum(5,3)~THEN BEGIN Free3
SAY~We have about everything we could ask for, except the four seasons.~
IF~~THEN EXIT
END

IF~RandomNum(5,4)~THEN BEGIN Free4
SAY~Our leader will await you. He mentioned it just the other day.~
IF~~THEN EXIT
END

IF~RandomNum(5,5)~THEN BEGIN Free5
SAY~I miss our children - but at least they can enjoy the sunshine.~
IF~~THEN EXIT
END

BEGIN RTKniRed
IF~RandomNum(2,1)~THEN BEGIN Freekn1
SAY~Our leader will await you. He mentioned it just the other day.~
IF~~THEN EXIT
END

IF~RandomNum(2,2)~THEN BEGIN Freekn2
SAY~It is good you have come, friends.~
IF~~THEN EXIT
END

CHAIN
IF WEIGHT #1~Global("StrangeVap","RTF080",3)~THEN RTReHod1 Foun1
~Finally!! It was announced that you are in town and would most likely be able to break the blockade of the red wizards...~
DO~SetGlobal("StrangeVap","RTF080",4)~
==CVSan25J~From your words I presume that you are not in their ranks, at least not anymore?~
==RTReHod1 ~You have a keen eye, I was a red wizard in the sixth circle before I fell from grace with my superiors and had to leave town before being fed to the lizard men.~
==CVSan25J~Is this what the Red Hoods are, renegade wizards and runaway slaves?~
==RTReHod1 ~Each of us has a different fate and reason to be here, mylady. There are many that have political reasons, others escaped from trouble with the current rulers, and still others are here because the red scum above have taken everything else from their life.~
=~Our leader unites us all in our resistance against Szass Tam and what the Necromancer wants to make of our homeland in order to ascend to godhood.~
==CVSan25J~Your leader - it is him we are seeking as well as a friend of mine, Candrella.~
==RTReHod1~The leader and his wife expected you to come, just continue downstairs.~
==CVSan25J~Candrella...we have seen her daughter upstairs on the estate. She is the wife of the Red Hood Leader?~
==RTReHod1~His wife and his right hand in the most crucial operations. They keep Lucinda with the old butler in the safety of the house. You will soon hear the whole story from their own mouths.~
==CVSan25J~Before we move on, <CHARNAME>, let me cleanse this area from the spells that block the passage and make it useable for the Red hoods again.~EXIT

CHAIN
IF WEIGHT #1~AreaCheck("RTF081")Global("Welcome","RTF081",0)~THEN RTReHod3 Foun2
~You succeeded! Welcome, It was expected that you would most likely be able to break the blockade of the red wizards above.~
DO~SetGlobal("Welcome","RTF081",1)~
==CVSan25J~Thank you for the welcome, we are in search of Candrella and your leader.~
==RTReHod3~Please just move to the next cave. But be careful, we sometimes encounter magical attacks of sorts even down here. We have learned to live with it, we have only minor losses.~
==CVSan25J~I have removed the *gifts* of the red scum in the previous hall, I will see what can be done here as well.~EXIT


