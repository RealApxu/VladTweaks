//1. Enhanced King Strohm Mask

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(3)
PartyHasItem("key20")
PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU10
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU10
  SAY ~Aye, ye've collected some nice items to forge. I can make a new helmet for yon, very powerful, if ye like.~
  IF ~PartyHasItem("key20")
!PartyHasItem("ring41")
!PartyHasItem("helm05")
!PartyHasItem("helm19")~ THEN GOTO IU101
  IF ~PartyHasItem("helm19")
!PartyHasItem("ring41")
!PartyHasItem("helm05")
!PartyHasItem("key20")~ THEN GOTO IU102
  IF ~PartyHasItem("helm05")
!PartyHasItem("ring41")
!PartyHasItem("helm19")
!PartyHasItem("key20")~ THEN GOTO IU103
  IF ~PartyHasItem("ring41")
!PartyHasItem("helm19")
!PartyHasItem("helm05")
!PartyHasItem("key20")~ THEN GOTO IU104
  IF ~PartyHasItem("key20")
PartyHasItem("ring41")
!PartyHasItem("helm05")
!PartyHasItem("helm19")~ THEN GOTO IU105
  IF ~PartyHasItem("key20")
!PartyHasItem("ring41")
PartyHasItem("helm05")
!PartyHasItem("helm19")~ THEN GOTO IU106
  IF ~PartyHasItem("key20")
!PartyHasItem("ring41")
!PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU107
  IF ~!PartyHasItem("key20")
PartyHasItem("ring41")
PartyHasItem("helm05")
!PartyHasItem("helm19")~ THEN GOTO IU108
  IF ~!PartyHasItem("key20")
PartyHasItem("ring41")
!PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU109
  IF ~!PartyHasItem("key20")
!PartyHasItem("ring41")
PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU110
  IF ~PartyHasItem("key20")
PartyHasItem("ring41")
PartyHasItem("helm05")
!PartyHasItem("helm19")~ THEN GOTO IU111
  IF ~PartyHasItem("key20")
PartyHasItem("ring41")
!PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU112
  IF ~PartyHasItem("key20")
!PartyHasItem("ring41")
PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU113
  IF ~!PartyHasItem("key20")
PartyHasItem("ring41")
PartyHasItem("helm05")
PartyHasItem("helm19")~ THEN GOTO IU114
  IF ~PartyHasItem("ring41")
PartyHasItem("helm19")
PartyHasItem("helm05")
PartyHasItem("key20")~ THEN GOTO IU115
END

IF ~~ THEN BEGIN IU101
  SAY ~Well, ye've got the Mask of King Strohm the Third here, but I would need other three pieces: Ring of Protection +3, Dusty Rose Ioun Stone and Helm of Infravision, in order to forge them into a very enhanced helmet.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU102
  SAY ~Well, ye've got the Dusty Rose Ioun Stone, here, indeed. But I would need other three pieces: Mask of King Strohm the Third, Ring of Protection +3 and Helm of Infravision, in order to forge it into a new helmet piece for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU103
  SAY ~Hmmmn. A pretty enough Helm of Infravision, but without the Mask of King Strohm the Third, Ring of Protection +3 and Dusty Rose Ioun Stone, I cannae forge it into one piece for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU104
  SAY ~Hmmmn. A rare enough Ring of Protection +3, but without the Mask of King Strohm the Third, Dusty Rose Ioun Stone and Helm of Infravision, I cannae forge it into one piece of a very enhanced helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU105
  SAY ~Well, ye've got the Mask of King Strohm the Third and Ring of Protection +3 here, but I would need other two pieces: Dusty Rose Ioun Stone and Helm of Infravision, in order to forge them into a very enhanced helmet.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU106
  SAY ~Well, ye've got the Mask of King Strohm the Third and Helm of Infravision here, but I would need other two pieces: Ring of Protection +3 and Dusty Rose Ioun Stone, in order to forge them into a very enhanced helmet.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU107
  SAY ~Well, ye've got the Mask of King Strohm the Third and Dusty Rose Ioun Stone here, but I would need other two pieces: Ring of Protection +3 and Helm of Infravision, in order to forge them into a very enhanced helmet.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU108
  SAY ~Hmmmn. A rare enough Ring of Protection +3 and Helm of Infravision, but without the Mask of King Strohm the Third and Dusty Rose Ioun Stone, I cannae forge it into one piece of a very enhanced helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU109
  SAY ~Hmmmn. A rare enough Ring of Protection +3 and Dusty Rose Ioun Stone, but without the Mask of King Strohm the Third and Helm of Infravision, I cannae forge it into one piece of a very enhanced helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU110
  SAY ~Hmmmn. Ye've got not one but two pretty head gears: Helm of Infravision and Dusty Rose Ioun Stone. But without the Mask of King Strohm the Third and Ring of Protection +3, I cannae forge it into one very enhanced helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU111
  SAY ~Well, ye've collected three rare pieces: Mask of King Strohm the Third, Ring of Protection +3 and Helm of Infravision. Brin' me the Dusty Rose Ioun Stone, and I'll forge a great helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU112
  SAY ~Well, ye've collected three rare pieces: Mask of King Strohm the Third, Ring of Protection +3 and Dusty Rose Ioun Stone. Brin' me the Helm of Infravision, and I'll forge a great helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU113
  SAY ~Well, ye've collected three rare pieces: Mask of King Strohm the Third, Helm of Infravision and Dusty Rose Ioun Stone. Brin' me the Ring of Protection +3, and I'll forge it into much better helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU114
  SAY ~Well, ye've collected three rare pieces: Ring of Protection +3, Helm of Infravision, and Dusty Rose Ioun Stone. Brin' me the Mask of King Strohm the Third, and I'll forge a great helmet for ye.~
  IF ~~ THEN GOTO IU117
END

IF ~~ THEN BEGIN IU115
  SAY ~Hmmmn... I see.  ye've got the Mask of King Strohm the Third, Ring of Protection +3, Helm of Infravision and Dusty Rose Ioun Stone. I could forge it all into one very protective helmet for ye.~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",11)~ GOTO IU116
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU117
END

IF ~~ THEN BEGIN IU116
  SAY ~Two things, me friend. It will cost ye 10,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(9999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000)~ GOTO 56
  IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU117
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU117
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END
  
IF ~~ THEN BEGIN IU117
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
    COPY_TRANS WSMITH01 13
END
END