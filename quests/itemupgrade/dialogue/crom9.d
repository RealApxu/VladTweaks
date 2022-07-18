//9. Enhanced Sebastian's Dagger

EXTEND_BOTTOM WSMITH01 13
 IF ~OR(3)
PartyHasItem("dagseb")
PartyHasItem("misc75")
PartyHasItem("udagg5a")
Global("VP_Dagger_Is_Done","GLOBAL",0)~ THEN GOTO IU90
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU90
 SAY ~Aye, ye like daggers... Hehehe...~
 IF ~PartyHasItem("dagseb")
!PartyHasItem("misc75")
!PartyHasItem("udagg5a")~ THEN GOTO IU91
 IF ~PartyHasItem("misc75")
!PartyHasItem("dagseb")
!PartyHasItem("udagg5a")~ THEN GOTO IU92
 IF ~PartyHasItem("udagg5a")
!PartyHasItem("dagseb")
!PartyHasItem("misc75")~ THEN GOTO IU93
 IF ~PartyHasItem("dagseb")
PartyHasItem("misc75")
!PartyHasItem("udagg5a")~ THEN GOTO IU94
 IF ~PartyHasItem("dagseb")
!PartyHasItem("misc75")
PartyHasItem("udagg5a")~ THEN GOTO IU95
 IF ~!PartyHasItem("dagseb")
PartyHasItem("misc75")
PartyHasItem("udagg5a")~ THEN GOTO IU96
 IF ~PartyHasItem("dagseb")
PartyHasItem("misc75")
PartyHasItem("udagg5a")~ THEN GOTO IU97
END

IF ~~ THEN BEGIN IU91
 SAY ~Well, ye've got Sebastian's Dagger, not from Sebastian himself, I hope... Hehehe... But I would need other two daggers: Dagger of Venom and Chaos Dagger, in order to forge it into a new dagger for ye.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU92
 SAY ~Hmmmn. A rare enough Dagger of Venom, but without the Chaos Dagger and Sebastian's Dagger, I cannae forge it into one piece of a very powerful dagger for ye. A pity.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU93
 SAY ~Well, ye've got the Chaos Dagger here. But I would need the other two daggers: Dagger of Venom and Sebastian's Dagger, in order to forge them into a new and very powerful dagger for ye. Good for mages though.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU94
 SAY ~Well, ye've got a pair of nice daggers here: the Dagger of Venom and Sebastian's Dagger. But I would need the Chaos Dagger in order to forge them all into a new and very powerful dagger for ye.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU95
 SAY ~Well, ye've got the Chaos Dagger here and Sebastian's Dagger. If ye brin' me the Dagger of Venom, I'll forge it into a much better dagger for ye. Good for mages though.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU96
 SAY ~Well, ye've got the two dagges: the Chaos Dagger and Dagger of Venom. If ye find Sebastian's Dagger somewhere in yer travels, brin' it to me and I'll forge it into a much better dagger for ye.~
 IF ~~ THEN GOTO IU99
END

IF ~~ THEN BEGIN IU97
 SAY ~Hmmmn... I see. ye've got the Chaos Dagger, Dagger of Venom and Sebastian's Dagger. I could forge it all into one very powerful dagger for ye. Good for mages though.~
 IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ GOTO IU98
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU99
END

IF ~~ THEN BEGIN IU98
 SAY ~Two things, me friend. It will cost ye 10,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
 IF ~PartyGoldGT(9999) Global("VP_Dagger_Is_Done","GLOBAL",0)~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000) SetGlobal("VP_Dagger_Is_Done","GLOBAL",1)~ GOTO 56
 IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ GOTO IU99
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU99
 IF ~~ THEN REPLY #59791 /* ~No, I don't think so. I think I'll be going, now.~ */ GOTO 12
END

IF ~~ THEN BEGIN IU99
 SAY #59742 /* ~Well, what else does ye have in yer packs, then? Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END