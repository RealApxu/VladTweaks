//4. Enhanced Robe of Armory

EXTEND_BOTTOM WSMITH01 13
 IF ~OR(4)
PartyHasItem("robearm")
PartyHasItem("amulbar")
PartyHasItem("tuamulb")
PartyHasItem("leat23")
Global("VP_Robe_Is_Done","GLOBAL",0)~ THEN GOTO IU0
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU0
 SAY #59724 /* ~Ay, now, what have we here?~ */
 IF ~PartyHasItem("leat23")
!PartyHasItem("robearm")
!PartyHasItem("tuamulb")
!PartyHasItem("amulbar")~ THEN GOTO IU001
 IF ~PartyHasItem("amulbar")
!PartyHasItem("robearm")
!PartyHasItem("tuamulb")
!PartyHasItem("leat23")~ THEN GOTO IU002
 IF ~PartyHasItem("tuamulb")
!PartyHasItem("robearm")
!PartyHasItem("amulbar")
!PartyHasItem("leat23")~ THEN GOTO IU003
 IF ~PartyHasItem("robearm")
!PartyHasItem("amulbar")
!PartyHasItem("tuamulb")
!PartyHasItem("leat23")~ THEN GOTO IU004
 IF ~PartyHasItem("leat23")
PartyHasItem("robearm")
!PartyHasItem("tuamulb")
!PartyHasItem("amulbar")~ THEN GOTO IU005
 IF ~PartyHasItem("leat23")
!PartyHasItem("robearm")
PartyHasItem("tuamulb")
!PartyHasItem("amulbar")~ THEN GOTO IU006
 IF ~PartyHasItem("leat23")
!PartyHasItem("robearm")
!PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU007
 IF ~!PartyHasItem("leat23")
PartyHasItem("robearm")
PartyHasItem("tuamulb")
!PartyHasItem("amulbar")~ THEN GOTO IU008
 IF ~!PartyHasItem("leat23")
PartyHasItem("robearm")
!PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU009
 IF ~!PartyHasItem("leat23")
!PartyHasItem("robearm")
PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU010
 IF ~PartyHasItem("leat23")
PartyHasItem("robearm")
PartyHasItem("tuamulb")
!PartyHasItem("amulbar")~ THEN GOTO IU011
 IF ~PartyHasItem("leat23")
PartyHasItem("robearm")
!PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU012
 IF ~PartyHasItem("leat23")
!PartyHasItem("robearm")
PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU013
 IF ~!PartyHasItem("leat23")
PartyHasItem("robearm")
PartyHasItem("tuamulb")
PartyHasItem("amulbar")~ THEN GOTO IU014
 IF ~PartyHasItem("robearm")
PartyHasItem("amulbar")
PartyHasItem("tuamulb")
PartyHasItem("leat23")~ THEN GOTO IU015
END

IF ~~ THEN BEGIN IU001
 SAY ~Well, ye've got the Leather of Thorns here, but I would need other three pieces: Robe of Armory, Barrier Amulet and Amulet Of Proof Against Detection and Location, in order to forge them into a very enhanced robe.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU002
 SAY ~Well, ye've got the Barrier Amulet, here, indeed. But I would need other three pieces: Leather of Thorns, Robe of Armory and Amulet Of Proof Against Detection and Location, in order to forge it into a new robe piece for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU003
 SAY ~Hmmmn. A pretty enough Amulet Of Proof Against Detection and Location, but without the Leather of Thorns, Robe of Armory and Barrier Amulet, I cannae forge it into one piece for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU004
 SAY ~Hmmmn. A rare enough Robe of Armory, but without the Leather of Thorns, Barrier Amulet and Amulet Of Proof Against Detection and Location, I cannae forge it into one piece of a very enhanced robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU005
 SAY ~Well, ye've got the Leather of Thorns and Robe of Armory here, but I would need other two pieces: Barrier Amulet and Amulet Of Proof Against Detection and Location, in order to forge them into a very enhanced robe.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU006
 SAY ~Well, ye've got the Leather of Thorns and Amulet Of Proof Against Detection and Location here, but I would need other two pieces: Robe of Armory and Barrier Amulet, in order to forge them into a very enhanced robe.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU007
 SAY ~Well, ye've got the Leather of Thorns and Barrier Amulet here, but I would need other two pieces: Robe of Armory and Amulet Of Proof Against Detection and Location, in order to forge them into a very enhanced robe.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU008
 SAY ~Hmmmn. A rare enough Robe of Armory and Amulet Of Proof Against Detection and Location, but without the Leather of Thorns and Barrier Amulet, I cannae forge it into one piece of a very enhanced robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU009
 SAY ~Hmmmn. A rare enough Robe of Armory and Barrier Amulet, but without the Leather of Thorns and Amulet Of Proof Against Detection and Location, I cannae forge it into one piece of a very enhanced robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU010
 SAY ~Hmmmn. Ye've not one but two pretty amulets: Amulet Of Proof Against Detection and Location and Barrier Amulet. But without the Leather of Thorns and Robe of Armory, I cannae forge it into one very enhanced robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU011
 SAY ~Well, ye've collected three rare pieces: Leather of Thorns, Robe of Armory and Amulet Of Proof Against Detection and Location. Brin' me the Barrier Amulet, and I'll forge a great robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU012
 SAY ~Well, ye've collected three rare pieces: Leather of Thorns, Robe of Armory and Barrier Amulet. Brin' me the Amulet Of Proof Against Detection and Location, and I'll forge a great robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU013
 SAY ~Well, ye've collected three rare pieces: Leather of Thorns, Amulet Of Proof Against Detection and Location and Barrier Amulet. Brin' me the Robe of Armory, and I'll forge it into much better robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU014
 SAY ~Well, ye've collected three rare pieces: Robe of Armory, Amulet Of Proof Against Detection and Location, and Barrier Amulet. Brin' me the Leather of Thorns, and I'll forge a great robe for ye.~
 IF ~~ THEN GOTO IU017
END

IF ~~ THEN BEGIN IU015
 SAY ~Hmmmn... I see. ye've got the Robe of Armory, Leather of Thorns, Barrier Amulet and Amulet Of Proof Against Detection and Location. I could forge it all into one very protective robe for ye.~
 IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ GOTO IU016
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU017
END

IF ~~ THEN BEGIN IU016
 SAY ~Two things, me friend. It will cost ye 10,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
 IF ~PartyGoldGT(9999) Global("VP_Robe_Is_Done","GLOBAL",0)~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000) SetGlobal("VP_Robe_Is_Done","GLOBAL",1)~ GOTO 56
 IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ GOTO IU017
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU017
 IF ~~ THEN REPLY #59791 /* ~No, I don't think so. I think I'll be going, now.~ */ GOTO 12
END

IF ~~ THEN BEGIN IU017
 SAY #59742 /* ~Well, what else does ye have in yer packs, then? Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END