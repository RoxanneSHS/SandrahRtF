BEGIN RTGarric

IF~NumTimesTalkedTo(0)~THEN BEGIN First
SAY~Welcome to the Elfsong, the place of fine art, fine wine, and fine linen.~
IF~~THEN REPLY~ Garrick? It's good to see you have found your place in life. Let us see what your establishment has to offer.~ GOTO Select1
IF~~THEN REPLY~ Garrick? Even one like you is good for something after all. Let's see what you can provide. ~ GOTO Select1
IF~~THEN REPLY~ Garrick? Good to see you alive and well. We have to leave again but we will remember your establishment for our next stay in town.~EXIT
END

IF~~THEN BEGIN Select1
SAY~I trust you are finding my tavern to your liking?~
IF~~THEN DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Revisit
SAY~Hello again, I trust you are finding my tavern to your liking?~
IF~~THEN REPLY~Let us see what your establishment has to offer.~ GOTO Select2
IF~~THEN REPLY~We have to leave again but we will remember your establishment for our next stay in town.~EXIT
END

IF~~THEN BEGIN Select2
SAY~This is what we have today.~
IF~~THEN DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT
END