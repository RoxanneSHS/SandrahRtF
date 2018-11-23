CHAIN
IF WEIGHT #-2~ Global("SanRTFPlot5","GLOBAL",7) ~THEN VOLO RTVoloFin
~ Oh, my heroes, you still stand in the dark days to come.~
DO~SetGlobal("SanRTFPlot5","GLOBAL",8) ~
==CVSan25J~You are troubled, old friend? What are you working on these days?~
==Volo~(Sigh) History needs its scribe even if it's a sad tale to tell. There is only one thing of interest in the Realms today - Mystra's death and the spell plague.~
==CVSan25J~You like happy endings, Volo.~
==Volo~I see none in the current plot.~
==CVSan25J~It is the work of the historian to protocol the events - it is the task of the bard to enlighten and encourage the reader.~
==Volo~You have some suggestion?~
==CVSan25J~Report to the public the great chances that the spell plague implies. Encourage them to seek their own strength apart from the gods. Tell them of the great inventions and discoveries to be made...~
=~(Sandrah reveals more of her visions for the new Faerun to the author who had already started to scribble down notes of her words.)~
==Volo~Those are in deed great ideas, almost a new prophesy...I will start my work immediately.~DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-2~ AreaCheck("RTF025") GlobalLT("SanRTFPlot5","GLOBAL",7)Global("RTVolo","LOCALS",0) ~THEN VOLO RTSurpr1
~ Oh, my heroes, the magnificent Bhaalspawn <CHARNAME>!!!~
=~The wonderful Sandrah of Waterdeep!!!!~
=~??????~
=~But....~
=~YOU??...HERE???~
DO~SetGlobal("RTVolo","LOCALS",1) ~
==CVSan25J~Any problem with that, old friend?~
==Volo~Psst...come aside please, there is indeed a little problem...~
=~Here is better, please keep your voices down a bit...you must understand - my reputation.~
==CVSan25J~You do not want to be seen with us any more, Volo?~
==Volo~Oh, my lady Sandrah, please don't misunderstand me...fact is, I would not have wanted anyone to see you any more - I mean...you were not expected to be seen by anyone after all that had happened and your absence from sight for so long...~
==CVSan25J~You had to finish the story of our deeds in some way, is it that?~
==Volo~I knew you would understand, my lady. You and <CHARNAME> were last seen when you went to fight the deadly murder god. Bhaal was gloriously defeated by the fearless heroes. The realms were saved. Oh, what a battle!! The planes were shaking as the mortals slew monster after monster and finally faced the God of Murder himself.~
=~Three full days the battle was raging as darkness hung over Faerun. At the morning of the fourth day the sun rose again. Bhaal was defeated as the heroes had flung their own lives at him to push him finally into the abyss.~
==CVSan25J~So - we are glorious heroes - glorious dead heroes, that is.~
==Volo~You understand?? There had to be an end to the epic - public demand. What else could have happened, as you never reappeared and Bhaal was dead.~ DO~GiveItemCreate("RTVolo","CVSandr",1,0,0) EscapeArea()~
==CVSan25J~Very good. <CHARNAME>, nothing could have suited us better, do you agree?~
END
++~Volo, you have never seen us today, is that clear? We are not here at all, you just had a glass too many, my friend.~EXIT
++~Our incognito is save then. Volo, you have our permission to spread the story as you like, as long as we remain dead.~EXIT
++~You are a liar, Volo...but a suitable one. Never mind.~EXIT