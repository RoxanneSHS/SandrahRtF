CHAIN
IF WEIGHT #-13 ~Global("SanRaiseMys","GLOBAL",9)~THEN Solar GetRTFgoing
@0
DO~SetGlobal("SanRaiseMys","GLOBAL",15)~
==CVSan25J@1
==Solar@2
==Pellig@3
==Solar@4
==Pellig@5
==Solar@6
==Pellig@7
==Solar@8
=@9 DO~ ReputationSet(9) AddXPObject(Player1,-2000000) AddXPObject("CVSandr",-2000000)
ReallyForceSpell(Myself,DRYAD_TELEPORT) AddJournalEntry(@1721,QUEST)~EXIT
