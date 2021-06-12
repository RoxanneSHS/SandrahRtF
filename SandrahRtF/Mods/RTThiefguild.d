CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Booter Newboss
@0
==Arnboy01@1
==Booter@2
END
++@3EXTERN ARNBOY01 4

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman03 Newboss3
@4
END
++@5+ 1

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman04 Newboss4
@6
END
++@7+ 4

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)NumTimesTalkedTo(0)~THEN Arnman05 Newboss5
@8
=@9DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-4~ GlobalGT("SanBeginRTF","GLOBAL",1)!Dead("arnman08")~THEN Arnman09 Newboss9
@10
END
++@11 + 2
++@12+ 2
