//10. Crimson Dragon Scale

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(3)
PartyHasItem("scalesel")
PartyHasItem("leat14")
PartyHasItem("clck06")~ THEN GOTO IU100
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU100
  SAY #59724 /* ~Ay, now, what have we here?~ */
  IF ~PartyHasItem("scalesel")
!PartyHasItem("leat14")
!PartyHasItem("clck06")~ THEN GOTO IU1001
  IF ~PartyHasItem("leat14")
!PartyHasItem("scalesel")
!PartyHasItem("clck06")~ THEN GOTO IU1002
  IF ~PartyHasItem("clck06")
!PartyHasItem("scalesel")
!PartyHasItem("leat14")~ THEN GOTO IU1003
  IF ~PartyHasItem("scalesel")
PartyHasItem("leat14")
!PartyHasItem("clck06")~ THEN GOTO IU1004
  IF ~PartyHasItem("scalesel")
!PartyHasItem("leat14")
PartyHasItem("clck06")~ THEN GOTO IU1005
  IF ~!PartyHasItem("scalesel")
PartyHasItem("leat14")
PartyHasItem("clck06")~ THEN GOTO IU1006
  IF ~PartyHasItem("scalesel")
PartyHasItem("leat14")
PartyHasItem("clck06")~ THEN GOTO IU1007
END

IF ~~ THEN BEGIN IU1001
  SAY ~Aye, ye've collected the scales of a crimson dragon. By the Soul Forger, 'tis a grand sight. I can make a suit of armor from yon scales, if ye like, but I would need two other items: the Night's Gift armour and Cloak of Non-Detection.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1002
  SAY ~Hmmmn. The nice suite of Night's Gift armour... Brin' me the scales of a crimson dragon and Cloak of Non-Detection, I can forge it into one piece of a very strong armour for ye.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1003
  SAY ~Well, ye've got the Cloak of Non-Detection here. But I would need the scales of a crimson dragon and Night's Gift armour, in order to forge them into a new and very strong armour for ye. Good for mages and thieves too.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1004
  SAY ~Ah! Scales from a crimson dragon and the Night's Gift armour. It shall make a new grand suit of armor, if ye wish, me friend. But I would need the Cloak of Non-Detection too.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1005
  SAY ~Ah! Scales from a crimson dragon and the Cloak of Non-Detection. It shall make a new grand suit of armor, if ye wish, me friend. But I would need the Night's Gift armour too.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1006
  SAY ~Well, ye've got the Night's Gift armour and Cloak of Non-Detection. If ye find and kill a crimson dragon somewhere in yer travels, brin' its scale to me it and I'll forge all 'tis into a new grand suit of armour for ye.~
  IF ~~ THEN GOTO IU1009
END

IF ~~ THEN BEGIN IU1007
  SAY ~Aye, ye've collected the scales of a crimson dragon. By the Soul Forger, 'tis a grand sight. ye've got also the Night's Gift armour and Cloak of Non-Detection. It shall make a grand suit of armor, if ye wish, me friend. Good for mages and thieves too. Does that hold yer interest?~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",20)~ GOTO IU1008
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU1009
END

IF ~~ THEN BEGIN IU1008
  SAY ~Two things, me friend. It will cost ye 30,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(29999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(30000)
DestroyGold(30000)~ GOTO 56
  IF ~PartyGoldLT(30000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU1009
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU1009
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU1009
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END