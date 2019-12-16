BEGIN RTSamas

CHAIN
IF~Global("RTSamThrone","GLOBAL",2)~THEN RTSamas First1
~Another bout of destruction and violence, not really what our visitors should represent, my good Havarian.~
DO~SetGlobal("RTSamThrone","GLOBAL",3)~
==RTSaemon~Eh, how am I to know, my friend Samas?~
==RTSamas~Oyoyh, all those beautiful little charades, how I love them...you know them as well as I know them, Saemon.~
==RTSamas IF~Global("SanRomPath","GLOBAL",1)~THEN~The Goddess of All Magic and the God of Love and Hope finally make their appearance in my humble quarters.~
==RTSamas IF~Global("SanRomPath","GLOBAL",2)~THEN~The Goddess of All Magic and the Goddess of Love and Hope finally make their appearance in my humble quarters.~
==RTSaemon~Eh, are they?~
==CVSan25J~So we have made the introductory round, Samas Kul, Master of the Guild of Foreign Trade and Saemon Havarian, Bad Penny of Faerun.~
==RTSamas~Could your appearance not have been conducted a bit more restrained?~
==CVSan25J~It is not really our fault, Guildmaster, your *helpers* were a bit overacting when they saw us - or was it your intention?~
==RTSamas~I charge you for the destruction of my guards and I think you will not try to negotiate that debt...~
==CVSan25J~(Nods)~
==RTSamas~...so we can use the occasion to talk about your true reason to be in Thay.~
==RTSaemon~Eh?~
==RTSamas~The High Zulkir proposes a great future for our land and immense prospects to everyone supporting him and his dream.~
==CVSan25J~Not everyone in Bezantur shares his visions.~
==RTSamas~I see no issue in hiding anything from you, goddess. You are official enemy of the Red Wizards...~
==CVSan25J~...you are in their ranks, Samas.~
==RTSamas~Well, yes - as well as I am Trademaster.~
==CVSan25J~But most of all you are your own man with his own plans, right?~
==RTSamas~As I pointed out, Mystra, I have no reason to hide anything from you.~
=~Szass Tam is after you and your power to build his Glorious Empire, there is no way in Thay to oppose him.~
==CVSan25J~A good Trademaster seizes opportunities where he finds them. This may be in the wake of Szass' conquests but not be completely dependent on his success.~
==RTSaemon~A valid conduct for any merchant...~
==CVSan25J~...or for any thief. I understand, Samas, you will not oppose your heroic leader but you will also not seek to gain his attention or even privileges by delivering his arch enemies to him.~
==RTSamas~There is no gain in getting TOO MUCH attention from Szass Tam. He is not known for gratitude to those who reveal their abilities and ambitions.~
==CVSan25J~You will not support us to find him, I conclude.~
==RTSamas~You will not need me for your success, Mystra. I simply will not stand in your way by exposing you prematurely.~
==CVSan25J~This will help you to keep the attitude. (You see that the worth of the blue crystal jewels Sandrah hands to Samas Kul compensates ten times for the loss of his mercenaries.)~
==RTSamas~Be warned, Mystra. The forces Szass Tam gathers in his secret Citadel may be more than you and your companions may want to face at the moment.~
==CVSan25J~Velsharoon, Cyric, Talos...Shar?~
==RTSamas~Not to underestimate Szass himself and his buddy from the Academy of Legencase.~
==CVSan25J~Xephistagoras?~
==RTSamas~He currently builds the New Academy right on the Sword Coast doorstep, hundreds of mages and sorcerers to draw power from the Weave at his command.~
==CVSan25J~Probably another portal we have not yet found.~ DO~RevealAreaOnMap("ar60pb") AddJournalEntry(@2075,QUEST)~
==RTSamas~An old Bhaal temple in the Wood of Sharp Teeth, a Black Hand to assist him.~
=~Plan your next steps well, goddess, - and preserve the memory of this day.~
==CVSan25J~I never forget the actions of those who oppose me and those who do not, be assured.~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",9)~THEN RTSamas Trait1
~I still apologize for being a trifle late for the battle, Candrella.~
DO~SetGlobal("CitEntpl","GLOBAL",10)~
==RTCandre~The red hood knights have proven their excellence on the occasion, Samas.~
==CVSan25J~(Mumbles) Late? I could swear there were some familiar lizard men among the aggressors...~
==RTODButl~I have prepared everything for the celebration just like the master has ordered.~
==RTSamas~I had my servants bring a casket of most excellent wine reserved for such a special occasion.~
==CVSan25J~(Mumbles) Everyone contributes to the success in his own way...~
==RTODLuc~My daddy is a big hero, yes, he is.~
==RTCandre~He surely is, Lucinda.~
==RTODLuc~You must know, you are heroine yourself.~
==RTEdwin~Let us raise our glasses for the moment - before we need to turn our attention to the next steps once again.~DO~StartCutSceneMode() 
FadeToColor([30.0],0)
Wait(3)
ActionOverride("CVSandr",JumpToPoint([2048.908]))
ActionOverride("RTSamas",JumpToPoint([2130.894]))
Wait(4) 
FadeFromColor([30.0],0)
MoveViewPoint([2130.894],INSTANT)
SetGlobal("CitEntpl","GLOBAL",11)
EndCutSceneMode()~EXIT

CHAIN
IF~Global("CitEntpl","GLOBAL",11)~THEN RTSamas Trait2
~I have waited for this occasion to forget about the goddess I face and talk to the woman that will not leave my thoughts.~
DO~SetGlobal("CitEntpl","GLOBAL",12)~
==CVSan25J~Your wine may be excellent, Samas, but it has its effects.~
==RTSamas~Oh, yes it has...but it is not the wine that loosens my tongue, it is my heart that does the talking.~
==CVSan25J~You are an attractive man, Samas Kul, maybe one the woman you talk about might like to get to know better - but I have my doubts about your honesty.~
==RTSamas~Have I not proven my loyalty to our common course again and again...~
==CVSan25J~You have not stood in the way, just like it was expected from the merchant who always will turn up on the winning side.~
==RTSamas~How disappointing, Mystra,...oh, no let us stick to Sandrah.~
=~How much I long to have you there with me - on the winning side...~
==CVSan25J~Which side will that be in your opinion, Samas?~
==RTSamas~Our side, Sandrah - our side.~
=~You have felt the effect of that wine, haven't you? Forget about all these fools...the winning side is where we will be.~DO~EscapeArea()~EXIT

