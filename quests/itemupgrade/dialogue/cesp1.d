EXTEND_BOTTOM BOTSMITH 4
 IF ~PartyHasItem("sw2h15")~ THEN GOTO N1
END

APPEND ~BOTSMITH~

IF ~~ THEN BEGIN N1
 SAY ~Ooo! Such a rare and shining sword...~ 
 IF ~!PartyHasItem("JHOSWD2")
!PartyHasItem("SW2H08")~ THEN GOTO N2
 IF ~PartyHasItem("JHOSWD2")
!Global("StartIWD","GLOBAL",0)~ THEN GOTO N3
 IF ~PartyHasItem("SW2H08")
Global("StartIWD","GLOBAL",0)~ THEN GOTO N4
END

IF ~~ THEN BEGIN N2
 SAY ~Has recipe for polishing your Vorpal even more. I'll give you one sword for two. Needing Restored Blade of Aihonen or Soul Reaver, though, oh yes. No idea where to find one, though.~
 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN N3
 SAY ~Has recipe for polishing your Vorpal even more. Is combined with Restored Blade of Aihonen. That and 50,000 gp and I will do it for you. Want you that?~
 IF ~PartyGoldLT(50000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
 IF ~PartyGoldGT(49999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",99)
TakePartyGold(50000)
TakePartyItemNum("sw2h15",1)
TakePartyItemNum("JHOSWD2",1)
DestroyItem("sw2h15")
DestroyItem("JHOSWD2")
DestroyGold(50000)~ GOTO 11
 IF ~~ THEN REPLY #66597 /* ~No, not really. Is there anything else?~ */ GOTO N13
END

IF ~~ THEN BEGIN N4
 SAY ~Has recipe for polishing your Vorpal even more. Is combined with Soul Reaver. That and 50,000 gp and I will do it for you. Want you that?~
 IF ~PartyGoldLT(50000)~ THEN REPLY #66594 /* ~I don't have that much money.~ */ GOTO 10
 IF ~PartyGoldGT(49999)~ THEN REPLY #66595 /* ~Sure... put them together.~ */ DO ~SetGlobal("ItemMaker","GLOBAL",99)
TakePartyGold(50000)
TakePartyItemNum("sw2h15",1)
TakePartyItemNum("SW2H08",1)
DestroyItem("sw2h15")
DestroyItem("SW2H08")
DestroyGold(50000)~ GOTO 11
 IF ~~ THEN REPLY #66597 /* ~No, not really. Is there anything else?~ */ GOTO N13
END
END

IF ~~ THEN BEGIN N13
 SAY #66599 /* ~I keep lookings. You has lots of stuff, you do. Pack rat, you is. You going to Hell.~ [BOTSM22] */
COPY_TRANS BOTSMITH 4
END