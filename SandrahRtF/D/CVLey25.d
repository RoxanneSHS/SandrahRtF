BEGIN CVLEY25

IF~Global("CVLEYJoin","GLOBAL",0)Global("SanRomPath","GLOBAL",1)~THEN BEGIN Join1m
SAY~I greet you, my beloved God, you are my love and my hope.~
IF~~THEN REPLY~Psst, I am here incognito, little nun.~ GOTO Join3
IF~~THEN REPLY~Who are you to know who I am, sweet nun?~GOTO Join3
END

IF~Global("CVLEYJoin","GLOBAL",1)Global("SanRomPath","GLOBAL",1)~THEN BEGIN Join2m
SAY~Have you returned to make use of your servant this time, my beloved God?~
IF~~THEN REPLY~Not this time, Leyala.~DO~SetGlobal("CVLEYJoin","GLOBAL",1)~EXIT
IF~~THEN REPLY~Come with me, my faithful nun.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty()~ EXIT
END

IF~Global("CVLEYJoin","GLOBAL",0)Global("SanRomPath","GLOBAL",2)~THEN BEGIN Join1f
SAY~I greet you, my beloved Goddess, you are my love and my hope.~
IF~~THEN REPLY~Psst, I am here incognito, little nun.~ GOTO Join4
IF~~THEN REPLY~Who are you to know who I am, sweet nun?~GOTO Join4
END

IF~Global("CVLEYJoin","GLOBAL",1)Global("SanRomPath","GLOBAL",2)~THEN BEGIN Join2f
SAY~Have you returned to make use of your servant this time, my beloved Goddess?~
IF~~THEN REPLY~Not this time, Leyala.~DO~SetGlobal("CVLEYJoin","GLOBAL",1)~EXIT
IF~~THEN REPLY~Come with me, my faithful nun.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty()~ EXIT
END

IF~~THEN BEGIN Join3
SAY~I am Leyala, the one who has your blood run in her veins. First you and Sandrah Mystra saved my life and now you are the true god I serve in the name of love and hope, both of which you have given to me.~
=~Do you welcome me in your party, my God <CHARNAME>?~
IF~~THEN REPLY~Not this time, Leyala.~DO~SetGlobal("CVLEYJoin","GLOBAL",1)~EXIT
IF~~THEN REPLY~Come with me, my faithful nun. Your apprenticeship ends with this day.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~ EXIT
END

IF~~THEN BEGIN Join4
SAY~I am Leyala, the one who has your blood run in her veins. First you and Sandrah Mystra saved my life and now you are the true goddess I serve in the name of love and hope, both of which you have given to me.~
=~Do you welcome me in your party, my Goddess <CHARNAME>?~
IF~~THEN REPLY~Not this time, Leyala.~DO~SetGlobal("CVLEYJoin","GLOBAL",1)~EXIT
IF~~THEN REPLY~Come with me, my faithful nun. Your apprenticeship ends with this day.~DO~SetGlobal("CVLEYJoin","GLOBAL",2) JoinParty() ~ EXIT
END