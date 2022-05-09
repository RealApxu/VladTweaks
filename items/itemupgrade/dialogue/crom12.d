//12. Enhanced Mercykiller Ring

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(3)
PartyHasItem("wa2ring")
PartyHasItem("ring35")
PartyHasItem("ring36")~ THEN GOTO IU300
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU300
 SAY #59724 /* ~Ay, now, what have we here?~ */
  IF ~PartyHasItem("wa2ring")
!PartyHasItem("ring09")
!PartyHasItem("ring36")
!PartyHasItem("ring35")~ THEN GOTO IU3001
  IF ~PartyHasItem("ring35")
!PartyHasItem("ring09")
!PartyHasItem("ring36")
!PartyHasItem("wa2ring")~ THEN GOTO IU3002
  IF ~PartyHasItem("ring36")
!PartyHasItem("ring09")
!PartyHasItem("ring35")
!PartyHasItem("wa2ring")~ THEN GOTO IU3003
  IF ~PartyHasItem("ring09")
!PartyHasItem("ring35")
!PartyHasItem("ring36")
!PartyHasItem("wa2ring")~ THEN GOTO IU3004
  IF ~PartyHasItem("wa2ring")
PartyHasItem("ring09")
!PartyHasItem("ring36")
!PartyHasItem("ring35")~ THEN GOTO IU3005
  IF ~PartyHasItem("wa2ring")
!PartyHasItem("ring09")
PartyHasItem("ring36")
!PartyHasItem("ring35")~ THEN GOTO IU3006
  IF ~PartyHasItem("wa2ring")
!PartyHasItem("ring09")
!PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3007
  IF ~!PartyHasItem("wa2ring")
PartyHasItem("ring09")
PartyHasItem("ring36")
!PartyHasItem("ring35")~ THEN GOTO IU3020
  IF ~!PartyHasItem("wa2ring")
PartyHasItem("ring09")
!PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3009
  IF ~!PartyHasItem("wa2ring")
!PartyHasItem("ring09")
PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3010
  IF ~PartyHasItem("wa2ring")
PartyHasItem("ring09")
PartyHasItem("ring36")
!PartyHasItem("ring35")~ THEN GOTO IU3011
  IF ~PartyHasItem("wa2ring")
PartyHasItem("ring09")
!PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3012
  IF ~PartyHasItem("wa2ring")
!PartyHasItem("ring09")
PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3013
  IF ~!PartyHasItem("wa2ring")
PartyHasItem("ring09")
PartyHasItem("ring36")
PartyHasItem("ring35")~ THEN GOTO IU3014
  IF ~PartyHasItem("ring09")
PartyHasItem("ring35")
PartyHasItem("ring36")
PartyHasItem("wa2ring")~ THEN GOTO IU3015
END

IF ~~ THEN BEGIN IU3001
  SAY ~Well, ye've got the Mercykiller Ring here, but I would need Ring of Lock Picks, Ring of Free Action and Ring of Danger Sense, in order to forge them into an enhanced ring, good for thieves.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3002
  SAY ~Well, ye've got the Ring of Lock Picks, here, indeed. But I would need Mercykiller Ring, Ring of Free Action and Ring of Danger Sense, in order to forge it into a new ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3003
  SAY ~Hmmmn. Ring of Danger Sense... Brin' me the Mercykiller Ring, Ring of Lock Picks and Ring of Free Action, and I'll forge a new ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3004
  SAY ~Hmmmn. The gift from bloody Edventar himself... Brin' me the Mercykiller Ring, Ring of Lock Picks and Ring of Danger Sense, I'll forge a very enhanced ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3005
  SAY ~Well, ye've got the Mercykiller Ring and Ring of Free Action. Brin' me the Ring of Lock Picks and Ring of Danger Sense, in order to forge them into one very nice ring, good for thieves.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3006
  SAY ~Well, ye've got the Mercykiller Ring and Ring of Danger Sense here, but I would need Ring of Lock Picks and Ring of Free Action in order to forge them into a very enhanced ring, good for thieves.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3007
  SAY ~Well, ye've two nice rings here: the Mercykiller Ring and Ring of Lock Picks... Brin' me the Ring of Free Action and Ring of Danger Sense, in order to forge a very enhanced ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3020
  SAY ~Hmmmn. Ring of Free Action and Ring of Danger Sense... Brin' me the Mercykiller Ring and Ring of Lock Picks, I'll forge a new ring for ye, good for thieves.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3009
  SAY ~Hmmmn. Ring of Free Action and Ring of Lock Picks... But without the Mercykiller Ring and Ring of Danger Sense, I cannae forge 'em into one nice ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3010
  SAY ~Hmmmn. Ring of Danger Sense and Ring of Lock Picks... pretty useless though. Brin' me the Mercykiller Ring and Ring of Free Action, and I'll forge 'em into a very enhanced ring, good for thieves.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3011
  SAY ~Well, ye've collected Mercykiller Ring, Ring of Free Action and Ring of Danger Sense. Brin' me the Ring of Lock Picks, and I'll forge a great ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3012
  SAY ~Well, ye've collected Mercykiller Ring, Ring of Free Action and Ring of Lock Picks. Brin' me the Ring of Danger Sense, and I'll forge a great ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3013
  SAY ~Well, ye've collected Mercykiller Ring, Ring of Danger Sense and Ring of Lock Picks. Brin' me the Ring of Free Action, and I'll forge it into much better ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3014
  SAY ~Well, ye've collected Ring of Free Action, Ring of Danger Sense, and Ring of Lock Picks. Brin' me the Mercykiller Ring, and I'll forge a great ring for ye.~
  IF ~~ THEN GOTO IU3017
END

IF ~~ THEN BEGIN IU3015
  SAY ~Hmmmn... I see.  Ye've got the Ring of Free Action, Mercykiller Ring, Ring of Lock Picks and Ring of Danger Sense. I could forge it all into one very nice ring for ye, great for thieves.~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",22)~ GOTO IU3016
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU3017
END

IF ~~ THEN BEGIN IU3016
  SAY ~Two things, me friend. It will cost ye 5,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(4999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(5000)
DestroyGold(5000)~ GOTO 56
  IF ~PartyGoldLT(5000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU3017
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU3017
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU3017
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END