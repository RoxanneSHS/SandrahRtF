CHAIN
IF~Global("RolfHere","cvrtf9",1)~THEN CBRolfSB RTF1
~It's good to work for Ilneval's own daughter, Bhaalspawn, my troups are ready to strike when she gives the sign. We will not let the Southerners take one inch of Clan's land.~
DO~SetGlobal("RolfHere","cvrtf9",2)~
==CVSan25J~There is not yet any evidence of an agression from the Southern Towns, Rolf. We will follow the Hornswamp passage to fin out what has happened.~
==CBRolfSB~Be quick with it, I will not be able to hold my men much longer.~EXIT

CHAIN
IF~Global("RolfHere","cvrtf9",2)~THEN CBRolfSB RTF2
~ We are ready to strike!~EXIT