EXTEND_BOTTOM BOTSMITH 4
 IF ~PartyHasItem("UMHULK")~ THEN GOTO N8
END

APPEND BOTSMITH

IF ~~ THEN BEGIN N8
 SAY ~Ooo! A green plate made from a diggy monster...~ 
 IF ~!PartyHasItem("BLOOD")
!PartyHasItem("PLATBLK")~ THEN GOTO N9
 IF ~!PartyHasItem("BLOOD")
PartyHasItem("PLATBLK")~ THEN GOTO N9
 IF ~PartyHasItem("BLOOD")
!PartyHasItem("PLATBLK")~ THEN GOTO N9
 IF ~PartyHasItem("BLOOD")
PartyHasItem("PLATBLK")~ THEN GOTO N10
END

IF ~~ THEN BEGIN N9
 SAY ~Has recipe for making it even better. I'll give you a new plate for three. Needing that green plate of yours, a plate of a demon warrior from the North and a bloody plate. No idea where to find one, though.~
 IF ~~ THEN GOTO N11
END

IF ~~ THEN BEGIN N10
 SAY ~Has recipe for making your Umber Hulk Plate much better. Is combined with Kresselack�s Plate Mail and Bathed-In-Blood. That and 30,000 gp and I will do it for you. Want you that?~
 IF ~PartyGoldLT(30000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
 IF ~PartyGoldGT(29999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",97)
TakePartyGold(30000)
TakePartyItemNum("UMHULK",1)
TakePartyItemNum("BLOOD",1)
TakePartyItemNum("PLATBLK",1)
DestroyItem("UMHULK")
DestroyItem("BLOOD")
DestroyItem("PLATBLK")
DestroyGold(40000)~ GOTO 11
 IF ~~ THEN REPLY #66597 /* ~No, not really. Is there anything else?~ */ GOTO N11
END

IF ~~ THEN BEGIN N11
 SAY #66599 /* ~I keep lookings. You has lots of stuff, you do. Pack rat, you is. You going to Hell.~ [BOTSM22] */
COPY_TRANS BOTSMITH 4
END