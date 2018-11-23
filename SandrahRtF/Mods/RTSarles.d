BEGIN RTSarles
BEGIN RTSamArt

CHAIN
IF~AreaCheck("RTF104")~ THEN RTSarles Judge
~You, you there, peon! I know you, you ran errands for the temples in Amn.~
END
++~Are you talking to me? ~+ Sancho

CHAIN
IF~~ THEN RTSarles  Sancho
~Not really, I rather need the more distinguished knowledge of your companion. My lady, you are obviously a woman of taste and finery, regardless of the appearance of your *bodyguards*.~
==CVSan25J~Sir Sarles, if I remember well?~
==RTSarles~The very same, my lady - you see, Jorklar, I am a renown artist!~
==RTSamArt~They seem to know you but they may as well know you as the charlatan I take you for.~
==RTSarles~You may accept them as authority in our little dispute.~
==RTSamArt~Well, it is fine with me, I cannot see they are prejudiced in this case.~
=~So, my lady, this self-declared *artist* and sculptor has finally delivered his *masterpiece* for my master Samas Kul, wrought from the finest and most expensive Moondust Steel - and...I cannot see any improvement on the raw material we delivered to him.~
==RTSarles~Barbarian, the purity of the Moondust talks to the senses and the soul of every sensitive beholder immediately. ~
==RTSamArt~Sure, it does, that's why the material costs a fortune - it has nothing to do with your so-called work!~
==RTSarles~Your master is the owner of a singular masterpiece by the great Sir Sarles, legions of art lovers will take the trip to his estate to see it, if just for a single moment in their life.~
==RTSamArt~Oh, shut up, wind bag, let me hear the lady's opinion, you have called her yourself to be the judge here.~
==CVSan25J~It is rather <CHARNAME> here, who is our expert for works of art. I trust <PRO_HIMHER> completely, you have surely read <PRO_HISHER>'s encyclopaedia *Masterworks and Fakes, the art of the Sword Coast*, especially Volume Four dealing with contemporary art.~
END
++~Sir Sarles once quenched a fortune out of the Temple of Helm in Athkatla for delivering them a truly raw lump of Illithium. He is a clever manipulator but never an artist.~ + Mani
++~The value of any art is in the eye of the beholder. The beauty of this artefact speaks for itself, it requires no Sir Sarles to enhance it.~ + Neut
++~Without Sir Sarles' seal and reputation attached to it, this Moondust Steel would just be very expensive material, it is the radiance of his name alone that makes it a piece of art for which spectators would walk any mile.~ + Good

CHAIN
IF~~ THEN RTSarles Mani
~Impertinence!! You deserve the distasteful artefacts that disgrace all of Thay and make it hell for any person of taste. I'll be out of here and you will not see me again, Jorklar.~DO~EscapeArea()~
==RTSamArt~Samas Kul will be delighted, at least the worth of the material is still ours.~
DO~EscapeArea() AddexperienceParty(6500) ReputationInc(1)~ EXIT

CHAIN
IF~~ THEN RTSarles Neut
~That was not really helpful. I'll be out of here and you will not see me again, Jorklar.~DO~EscapeArea()~
==RTSamArt~This is as much an *expert* as Sarles is an *artist*. However the statement is quite reasonable, we will expose the artefact in the Throne Room without need to give any credit to some Sword Coast wanna-be.~
DO~EscapeArea() AddexperienceParty(7500)~ EXIT

CHAIN
IF~~ THEN RTSarles Good
~There you have it, out of the mouth of the Sword coast's premier expert. Now my coin, please, curator Jorklar, I will leave this place of distrust immediately.~ DO~EscapeArea()~
==RTSamArt~Samas Kul will be delighted, even if I still have my doubts. You people of the West all plot together when it goes to betray Thay. Arrgh. Better forget about this episode quickly.~
DO~EscapeArea() AddexperienceParty(2500) ReputationInc(-1)~EXIT