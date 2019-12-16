BEGIN RTIltash

IF~Global("RTGetOut","GLOBAL",6)~ THEN BEGIN Burglar1
SAY~You're coming out of my house. So who be you?~
IF~~THEN REPLY~Your house...yeah, we found it wasn't Sharkey's, even if it was left of the road just like we were told. ~GOTO Burglar2
IF~~THEN REPLY~Your house? Sure it must be, it smells terrible in there.~ GOTO Burglar3
IF~~THEN REPLY~We followed some suspicious looking fellows, we were sure it was not THEIR house they entered.~GOTO Burglar4
IF~~THEN REPLY~You stole something from our friends and we have stolen it back.~ GOTO Burglar3
END

IF~~THEN BEGIN Burglar2
SAY~Stupido - you come from this direction then left is over there and that's Sharkey's!~
IF~~THEN GOTO Burglar5
END

IF~~THEN BEGIN Burglar3
SAY~Stupido - you come stumble out from Sharkey's, drunkard! Me not fight drunks, not fun.~
IF~~THEN GOTO Burglar5
END

IF~~THEN BEGIN Burglar4
SAY~Thieves rascals underdogs sneaking house? Must be Mask fools seeking for lantern, he. MEN, go surround house, me go check inside. Let no escape!!~
IF~~THEN DO~ SetGlobal("RTGetOut","GLOBAL",7) EscapeArea()~EXIT
END

IF~~THEN BEGIN Burglar5
SAY~High time we close that brothel inn drink hall - bad for good neighbourhood. Maybe do it myself tomorrow, hrpf.~
IF~~THEN DO~ SetGlobal("RTGetOut","GLOBAL",7) EscapeArea()~EXIT
END

IF~ Global("RTGetOut","GLOBAL",8) ~THEN BEGIN Deceiver1
SAY~You stand and be liar no more!!~
IF~~THEN REPLY~Are you still searching for burglars?~ GOTO Deceiver2
IF~~THEN REPLY~Ohnonothimagain!~GOTO Deceiver2
END

IF~~THEN BEGIN Deceiver2
SAY~There was burglars in my house and that was you. You are Red Hood!!~
=~You are dead Red Hood in a moment.~
IF~~THEN DO~SetGlobal("RTGetOut","GLOBAL",9)Enemy()~ EXIT
END

CHAIN
IF~Global("RTSaeHij","GLOBAL",4)~THEN RTIltash FoundSaem
~When there is stealing, when there is burglaring, then there is you!!~
DO~SetGlobal("RTSaeHij","GLOBAL",5)~
==RTSaemon~I think he means you, <CHARNAME>, what did you steal from him?~
==CVSan25J~We took something he himself had stolen from the Red Hoods. Saemon, I am afraid it is NOT that theft he came for here today.~
==RTIltash~I see clear now, one thief is friend of another thief and all are here waiting to be crushed.~
==RTSaemon~Good man, don't throw me in with these people who stole something from you, you know me, I am a friend of Samas Kul.~
==RTIltash~They thieves, you thief, Samas greatest thief of all but not steal never from me. You do steal woman, where is she?~
==CVSan25J~We cannot steal what you cannot possess. You have no right for possession of people.~
==RTIltash~I have right and I have justice here in my hand and I will teach it to your stubborn heads now.~DO~Enemy()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",4)~ THEN RTIltash Foundestate
~Little thieves always return - must just wait and be patient.~
DO~SetGlobal("CitEntpl","GLOBAL",5)~
==RTEdwin~You see that I told you the truth, Commander.~
==RTIltash~I never doubt. No one can lie when Ithrash asks for truth. Only wonder why you told truth but we will find out later when scum is crushed.~
DO~Enemy()~EXIT
