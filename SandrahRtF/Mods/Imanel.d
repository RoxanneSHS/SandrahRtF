APPEND P#Imanel
IF WEIGHT #-3~Global("Needfight","LOCALS",1) ~THEN BEGIN NewBoss1
SAY@0
IF~~THEN REPLY@1GOTO NewBoss2
IF~~THEN REPLY@2GOTO NewBoss2
END

IF~~THEN BEGIN NewBoss2
SAY@3
IF~OR(3)InParty("Loureed")InParty("Viconia")InParty("Yasraena")~THEN REPLY@4GOTO NewBossL
IF~!InParty("Loureed")!InParty("Viconia")!InParty("Yasraena")InParty("Leyala")~THEN REPLY@4GOTO NewBossN
IF~!InParty("Loureed")!InParty("Leyala")!InParty("Viconia")!InParty("Yasraena")InParty("CVGiran")~THEN REPLY@4GOTO NewBossG
IF~!InParty("Loureed")!InParty("Leyala")!InParty("Viconia")!InParty("Yasraena")!InParty("CVGiran")~THEN REPLY@4GOTO NewBossS
END

IF~~THEN BEGIN NewBossL
SAY@5
IF~~THEN REPLY@6GOTO NewBoss3
END

IF~~THEN BEGIN NewBossG
SAY@7
IF~~THEN REPLY@6GOTO NewBoss3
END

IF~~THEN BEGIN NewBossN
SAY@8
IF~~THEN REPLY@6GOTO NewBoss3
END

IF~~THEN BEGIN NewBossS
SAY@9
IF~~THEN REPLY@6GOTO NewBoss3
END

IF~~THEN BEGIN NewBoss3
SAY@10
=@11
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


