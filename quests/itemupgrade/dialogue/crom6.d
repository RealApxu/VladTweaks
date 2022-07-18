//6. Enhanced Messenger of Sseth

EXTEND_BOTTOM WSMITH01 19
 IF ~OR(3)
PartyHasItem("bowmess")
PartyHasItem("bowhamm")
PartyHasItem("bow10")
Global("VP_Bow_Is_Done","GLOBAL",0)~ THEN GOTO IU60
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU60
 SAY ~Aye, ye're a bows collector... Hehehe...~
 IF ~PartyHasItem("bowmess")
!PartyHasItem("bowhamm")
!PartyHasItem("bow10")~ THEN GOTO IU61
 IF ~PartyHasItem("bowhamm")
!PartyHasItem("bowmess")
!PartyHasItem("bow10")~ THEN GOTO IU62
 IF ~PartyHasItem("bow10")
!PartyHasItem("bowmess")
!PartyHasItem("bowhamm")~ THEN GOTO IU63
 IF ~PartyHasItem("bowmess")
PartyHasItem("bowhamm")
!PartyHasItem("bow10")~ THEN GOTO IU64
 IF ~PartyHasItem("bowmess")
!PartyHasItem("bowhamm")
PartyHasItem("bow10")~ THEN GOTO IU65
 IF ~!PartyHasItem("bowmess")
PartyHasItem("bowhamm")
PartyHasItem("bow10")~ THEN GOTO IU66
 IF ~PartyHasItem("bowmess")
PartyHasItem("bowhamm")
PartyHasItem("bow10")~ THEN GOTO IU67
END

IF ~~ THEN BEGIN IU61
 SAY ~Well, ye've got the Messenger of Sseth, not from Merrshaulk himself, I hope... But I would need the two composite long bows called "Defender" and "Heartseeker", in order to forge it into a new bow for ye.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU62
 SAY ~Hmmmn. A rare enough Defender, but without the Messenger of Sseth and Heartseeker, I cannae forge it into one piece of a very powerful bow for ye. A pity.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU63
 SAY ~Well, ye've got the bow called "Heartseeker" here. But I would need the other two rare bows: the Messenger of Sseth and Defender, in order to forge them into a new and very powerful bow for ye.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU64
 SAY ~Well, ye've got a pair of nice bows here: the Messenger of Sseth and Defender. But I would need Heartseeker in order to forge them into a new and very powerful bow for ye.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU65
 SAY ~Well, ye've got the Messenger of Sseth here and Heartseeker. If ye brin' me the bow called "Defender", I'll forge it into a much better bow for ye.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU66
 SAY ~Well, ye've got the two composite long bows: Defender and Heartseeker. If ye brin' me the Messenger of Sseth, I'll forge it into a much better bow for ye.~
 IF ~~ THEN GOTO IU69
END

IF ~~ THEN BEGIN IU67
 SAY ~Hmmmn... I see. ye've got the Messenger of Sseth, Defender and Heartseeker. I could forge it all into one very powerful bow for ye.~
 IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ GOTO IU68
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU69
END

IF ~~ THEN BEGIN IU68
 SAY ~Two things, me friend. It will cost ye 10,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
 IF ~PartyGoldGT(9999) Global("VP_Bow_Is_Done","GLOBAL",0)~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000) SetGlobal("VP_Bow_Is_Done","GLOBAL",1)~ GOTO 56
 IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ GOTO IU69
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU69
 IF ~~ THEN REPLY #59791 /* ~No, I don't think so. I think I'll be going, now.~ */ GOTO 12
END

IF ~~ THEN BEGIN IU69
 SAY #59742 /* ~Well, what else does ye have in yer packs, then? Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END