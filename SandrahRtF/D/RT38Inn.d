BEGIN RT38Inn

CHAIN
IF~AreaCheck("RTF038")~THEN RT38Inn DogDead
@0
=@1
==CVSan25J@2
==RT38Inn@3
==CVSan25J@4
==RT38Inn@5
==CVSan25J@6
==RT38Inn@7
DO~EscapeArea()~EXIT

CHAIN
IF~AreaCheck("RTF381") NumTimesTalkedTo(0)~THEN RT38Inn InnSide
@8
==CVSan25J@9
==RT38Inn@10
==CVSan25J@11
==RT38Inn@12
==CVSan25J@13
==RT38Inn@14
==CVSan25J@15
==RT38Inn@16
==CVSan25J@17
==RT38Inn@18
END
++@19EXIT
++@20 DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~AreaCheck("RTF381") NumTimesTalkedToGT(0)~THEN RT38Inn InnKeep
@21
END
++@22 DO ~StartStore("tav0721",LastTalkedToBy(Myself))~EXIT
++@23EXIT