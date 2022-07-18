//2. Enhanced Lilarcor

EXTEND_BOTTOM WSMITH01 13
 IF ~OR(2)
PartyHasItem("sw2h10")
PartyHasItem("sw2h14")
Global("VP_Carsomyr_Is_Done","GLOBAL",0)~ THEN GOTO IU30
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU30
 SAY ~Aye, ye've collected some nice items to forge. I can make a new sword for yon, very powerful, if ye like.~
 IF ~PartyHasItem("sw2h14")
!PartyHasItem("sw2h10")
!PartyHasItem("misc45")~ THEN GOTO IU31
 IF ~PartyHasItem("sw2h10")
!PartyHasItem("sw2h14")
!PartyHasItem("misc45")~ THEN GOTO IU32
 IF ~PartyHasItem("misc45")
!PartyHasItem("sw2h10")
!PartyHasItem("sw2h14")~ THEN GOTO IU33
 IF ~PartyHasItem("sw2h10")
PartyHasItem("sw2h14")
!PartyHasItem("misc45")~ THEN GOTO IU34
 IF ~PartyHasItem("sw2h14")
!PartyHasItem("sw2h10")
PartyHasItem("misc45")~ THEN GOTO IU35
 IF ~!PartyHasItem("sw2h14")
PartyHasItem("sw2h10")
PartyHasItem("misc45")~ THEN GOTO IU36
 IF ~PartyHasItem("sw2h10")
PartyHasItem("sw2h14")
PartyHasItem("misc45")~ THEN GOTO IU37
END

IF ~~ THEN BEGIN IU31 //79
 SAY ~Well, ye've got the infamous Lilarcor here, indeed... rather stupid. If ye bring me Carsomyr and Rogue Stone, I'll forge it into a smarter sword for ye.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU32 //80
 SAY ~Hmmmn. The rare enough Carsomyr, but without a Rogue Stone and infamous Lilarcor, I cannae forge it into one piece of a very powerful sword for ye. A pity.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU33 //81
 SAY ~Well, ye've got the Rogue Stone here, but I would need two swords: Carsomyr and Lilarcor, in order to forge them into a new and very powerful sword for ye.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU34 //82
 SAY ~Well, ye've got a pair of nasty swords here: Carsomyr and Lilarcor. But I would need a Rogue Stone in order to forge them into a new and very powerful sword for ye.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU35 //83
 SAY ~Well, ye've got the infamous Lilarcor here and a Rogue Stone. If ye brin' me the great Carsomyr, I'll forge it into a smarter sword for ye.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU36 //84
 SAY ~Oh, ye've got the mighty Carsomyr here and a Rogue Stone. If ye brin' me the infamous Lilarcor, I'll forge it into a very powerful sword for ye.~
 IF ~~ THEN GOTO IU39
END

IF ~~ THEN BEGIN IU37 //85
 SAY ~Hmmmn... I see. ye've got the Carsomyr, Lilarcor and Rogue Stone. I could forge it all into one very powerful sword for ye.~
 IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ GOTO IU38
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU39
END

IF ~~ THEN BEGIN IU38 //86
 SAY ~Two things, me friend. It will cost ye 20,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
 IF ~Global("VP_Carsomyr_Is_Done","GLOBAL",0) PartyGoldGT(19999)~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ DO ~SetGlobal("VP_Carsomyr_Is_Done","GLOBAL",1) TakePartyGold(20000)
DestroyGold(20000)~ GOTO 56
 IF ~PartyGoldLT(25000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ GOTO IU39
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU39
 IF ~~ THEN REPLY #59791 /* ~No, I don't think so. I think I'll be going, now.~ */ GOTO 12
END

IF ~~ THEN BEGIN IU39
 SAY #59742 /* ~Well, what else does ye have in yer packs, then? Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END