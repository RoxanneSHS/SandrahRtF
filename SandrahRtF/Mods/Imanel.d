APPEND P#Imanel
IF WEIGHT #-3~Global("Needfight","LOCALS",1) ~THEN BEGIN NewBoss1
SAY~My name is Imanel Silversword. I am inclined to give you a chance - I will take you under my protective wing and teach you what life is all about. ~
IF~~THEN REPLY~What the hell do you mean by that? ~GOTO NewBoss2
IF~~THEN REPLY~Teach me? You are definitely a joker of magnitude. ~GOTO NewBoss2
END

IF~~THEN BEGIN NewBoss2
SAY~I need thralls to fill my ranks. I give you the chance to serve me after you have proven your worth.~
IF~OR(3)InParty("Loureed")InParty("Viconia")InParty("Yasraena")~THEN REPLY~Prove my worth - to you?~GOTO NewBossL
IF~!InParty("Loureed")!InParty("Viconia")!InParty("Yasraena")InParty("Leyala")~THEN REPLY~Prove my worth - to you?~GOTO NewBossN
IF~!InParty("Loureed")!InParty("Leyala")!InParty("Viconia")!InParty("Yasraena")InParty("CVGiran")~THEN REPLY~Prove my worth - to you?~GOTO NewBossG
IF~!InParty("Loureed")!InParty("Leyala")!InParty("Viconia")!InParty("Yasraena")!InParty("CVGiran")~THEN REPLY~Prove my worth - to you?~GOTO NewBossS
END

IF~~THEN BEGIN NewBossL
SAY~Make room in the party for its new leader - kill that drow for me, will you?~
IF~~THEN REPLY~You have been standing out here in the sun for a bit too long, it seems.~GOTO NewBoss3
END

IF~~THEN BEGIN NewBossG
SAY~Get rid of that pathetic ranger to make room in the party for its new leader, will you?~
IF~~THEN REPLY~You have been standing out here in the sun for a bit too long, it seems.~GOTO NewBoss3
END

IF~~THEN BEGIN NewBossN
SAY~We don't need a silly nun in our new company led by ME, kill her, will you?~
IF~~THEN REPLY~You have been standing out here in the sun for a bit too long, it seems.~GOTO NewBoss3
END

IF~~THEN BEGIN NewBossS
SAY~Mystra will soon be dead - we need no priestess in our new company led by ME, kill her, will you?~
IF~~THEN REPLY~You have been standing out here in the sun for a bit too long, it seems.~GOTO NewBoss3
END

IF~~THEN BEGIN NewBoss3
SAY~Oh, do not you understand that your second option is a gravestone with your name on it? That slow, eh? ~
=~Now -
Snowball, attack! Swiftclaw, FORWARD!
Dread, gut them! Babe, be a good girl and KILL! Fang, stop drooling all over this good <LADYLORD> and rip <PRO_HISHER> throat, already! ~
IF~~THEN DO~
SetGlobal("Needfight","LOCALS",2)
ActionOverride("P#WOLF01",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF02",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF03",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF04",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF05",MoveToObject("P#IMANEL"))
CreateCreatureObjectDoor("ardeno",Myself,0,0,0)
CreateCreatureObjectDoor("CVBandF4","P#WOLF01",0,0,0)
ActionOverride("P#WOLF01",Enemy())
ActionOverride("P#WOLF02",Enemy())
ActionOverride("P#WOLF03",Enemy())
ActionOverride("P#WOLF04",Enemy())
ActionOverride("P#WOLF05",Enemy())
ActionOverride("P#IMANEL",Enemy()) 
ActionOverride("ardenor",Enemy())~EXIT
END
END


