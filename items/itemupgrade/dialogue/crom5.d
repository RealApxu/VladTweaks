//5. Enhanced Staff of Besieging

EXTEND_BOTTOM WSMITH01 19
  	IF ~OR(2)
PartyHasItem("staffbes")
PartyHasItem("staffpow")~ THEN GOTO IU50
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU50
  SAY ~Aye, ye've collected some nice items to forge. I can make a new staff for yon, very powerful, if ye like.~
  IF ~PartyHasItem("staffbes")
!PartyHasItem("staffpow")
!PartyHasItem("ring31")~ THEN GOTO IU51
  IF ~PartyHasItem("staffpow")
!PartyHasItem("staffbes")
!PartyHasItem("ring31")~ THEN GOTO IU52
  IF ~PartyHasItem("ring31")
!PartyHasItem("staffbes")
!PartyHasItem("staffpow")~ THEN GOTO IU53
  IF ~PartyHasItem("staffbes")
PartyHasItem("staffpow")
!PartyHasItem("ring31")~ THEN GOTO IU54
  IF ~PartyHasItem("staffbes")
!PartyHasItem("staffpow")
PartyHasItem("ring31")~ THEN GOTO IU55
  IF ~!PartyHasItem("staffbes")
PartyHasItem("staffpow")
PartyHasItem("ring31")~ THEN GOTO IU56
  IF ~PartyHasItem("staffbes")
PartyHasItem("staffpow")
PartyHasItem("ring31")~ THEN GOTO IU57
END

IF ~~ THEN BEGIN IU51
  SAY ~Well, ye've got the extremely rare Staff of Besieging, here, indeed. But I would need the Staff of Super Power and a Ring of Regeneration, in order to forge it into a new staff for ye. A pity.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU52
  SAY ~Hmmmn. A rare enough Staff of Super Power, but without the Staff of Besieging and a Ring of Regeneration, I cannae forge it into one piece of a very powerful staff for ye. A pity.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU53
  SAY ~Well, ye've got a Ring of Regeneration here. But I would need the two rare staves: Staff of Besieging and Staff of Super Power, in order to forge them into a new and very powerful staff for ye.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU54
  SAY ~Well, ye've get a pair of nice staves here: the Staff of Super Power and Staff of Besieging. But I would need a Ring of Regeneration in order to forge them into a new and very powerful staff for ye.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU55
  SAY ~Well, ye've got the Staff of Besieging here and a Ring of Regeneration. If ye brin' me the Staff of Super Power, I'll forge it into a much better staff for ye.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU56
  SAY ~Well, ye've got the Staff of Super Power here and a Ring of Regeneration. If ye brin' me the Staff of Besieging, I'll forge it into a much better staff for ye.~
  IF ~~ THEN GOTO IU59
END

IF ~~ THEN BEGIN IU57
  SAY ~Hmmmn... I see.  ye've got the Staff of Besieging, Staff of Super Power and a Ring of Regeneration. I could forge it all into one very powerful staff for ye.~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",16)~ GOTO IU58
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU59
END

IF ~~ THEN BEGIN IU58
  SAY ~Two things, me friend. It will cost ye 10,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(9999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000)~ GOTO 56
  IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU59
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU59
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU59
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END