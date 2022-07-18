EXTEND_BOTTOM BOTSMITH 4
 IF ~PartyHasItem("BLACKNIG")~ THEN GOTO N5
END

IF ~~ THEN BEGIN N6
 SAY ~Has recipe for polishing your Nighty Blade even more. I'll give you one katana for three. Needing the Nighty Blade and two best friends of any samurai: Wujen and Wuhaltai. No idea where to find one, though.~
 IF ~~ THEN GOTO N12
END

IF ~~ THEN BEGIN N7
 SAY ~Has recipe for polishing your Nighty Blade even more. Is combined with two friends: Wujen and Wuhaltai. That and 40,000 gp and I will do it for you. Want you that?~
 IF ~PartyGoldLT(40000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
 IF ~PartyGoldGT(39999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",98)
TakePartyGold(40000)
TakePartyItemNum("BLACKNIG",1)
TakePartyItemNum("WUJEN",1)
TakePartyItemNum("WUHALTAI",1)
DestroyItem("BLACKNIG")
DestroyItem("WUJEN")
DestroyItem("WUHALTAI")
DestroyGold(40000)~ GOTO 11
 IF ~~ THEN REPLY #66597 /* ~No, not really. Is there anything else?~ */ GOTO N12
END

IF ~~ THEN BEGIN N12
 SAY #66599 /* ~I keep lookings. You has lots of stuff, you do. Pack rat, you is. You going to Hell.~ [BOTSM22] */
COPY_TRANS BOTSMITH 4
END