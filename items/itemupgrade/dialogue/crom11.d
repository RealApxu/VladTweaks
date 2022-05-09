//11. Enhanced Melody Chain

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(4)
PartyHasItem("chan11")
PartyHasItem("chan15")
PartyHasItem("boot01")
PartyHasItem("ring09")~ THEN GOTO IU200
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU200
 SAY #59724 /* ~Ay, now, what have we here?~ */
  IF ~PartyHasItem("chan11")
!PartyHasItem("ring09")
!PartyHasItem("boot01")
!PartyHasItem("chan15")~ THEN GOTO IU2001
  IF ~PartyHasItem("chan15")
!PartyHasItem("ring09")
!PartyHasItem("boot01")
!PartyHasItem("chan11")~ THEN GOTO IU2002
  IF ~PartyHasItem("boot01")
!PartyHasItem("ring09")
!PartyHasItem("chan15")
!PartyHasItem("chan11")~ THEN GOTO IU2003
  IF ~PartyHasItem("ring09")
!PartyHasItem("chan15")
!PartyHasItem("boot01")
!PartyHasItem("chan11")~ THEN GOTO IU2004
  IF ~PartyHasItem("chan11")
PartyHasItem("ring09")
!PartyHasItem("boot01")
!PartyHasItem("chan15")~ THEN GOTO IU2005
  IF ~PartyHasItem("chan11")
!PartyHasItem("ring09")
PartyHasItem("boot01")
!PartyHasItem("chan15")~ THEN GOTO IU2006
  IF ~PartyHasItem("chan11")
!PartyHasItem("ring09")
!PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2007
  IF ~!PartyHasItem("chan11")
PartyHasItem("ring09")
PartyHasItem("boot01")
!PartyHasItem("chan15")~ THEN GOTO IU2020
  IF ~!PartyHasItem("chan11")
PartyHasItem("ring09")
!PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2009
  IF ~!PartyHasItem("chan11")
!PartyHasItem("ring09")
PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2010
  IF ~PartyHasItem("chan11")
PartyHasItem("ring09")
PartyHasItem("boot01")
!PartyHasItem("chan15")~ THEN GOTO IU2011
  IF ~PartyHasItem("chan11")
PartyHasItem("ring09")
!PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2012
  IF ~PartyHasItem("chan11")
!PartyHasItem("ring09")
PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2013
  IF ~!PartyHasItem("chan11")
PartyHasItem("ring09")
PartyHasItem("boot01")
PartyHasItem("chan15")~ THEN GOTO IU2014
  IF ~PartyHasItem("ring09")
PartyHasItem("chan15")
PartyHasItem("boot01")
PartyHasItem("chan11")~ THEN GOTO IU2015
END

IF ~~ THEN BEGIN IU2001
  SAY ~Well, ye've got the Crimson Chain here, but I would need Melodic Chain, Ring of Free Action and Boots of Speed, in order to forge them into a very enhanced chain.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2002
  SAY ~Well, ye've got the Melodic Chain, here, indeed. But I would need Crimson Chain, Ring of Free Action and Boots of Speed, in order to forge it into a new chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2003
  SAY ~Hmmmn. Speedy Boots... Brin' me the Crimson Chain, Melodic Chain and Ring of Free Action, and I'll forge a new chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2004
  SAY ~Hmmmn. The gift from bloody Edventar himself... Brin' me the Crimson Chain, Melodic Chain and Boots of Speed, I'll forge a very enhanced chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2005
  SAY ~Well, ye've got the Crimson Chain and Ring of Free Action. Brin' me the Melodic Chain and Speedy Boots, in order to forge them into one very sturdy and light chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2006
  SAY ~Well, ye've got the Crimson Chain and Speedy Boots here, but I would need Melodic Chain and Ring of Free Action in order to forge them into a very enhanced chain.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2007
  SAY ~Well, ye've two fashion chains here: the Crimson Chain and Melodic Chain... Brin' me the Ring of Free Action and Boots of Speed, in order to forge a very enhanced chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2020
  SAY ~Hmmmn. Ring of Free Action and Speedy Boots... Brin' me the Crimson Chain and Melodic Chain, I'll forge a new very sturdy and light chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2009
  SAY ~Hmmmn. Ring of Free Action and Melodic Chain... But without the Crimson Chain and Boots of Speed, I cannae forge 'em into one very sturdy and light chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2010
  SAY ~Hmmmn. Boots of Speed and Melodic Chain... pretty useless though. Brin' me the Crimson Chain and Ring of Free Action, and I'll forge 'em into a very sturdy and light chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2011
  SAY ~Well, ye've collected Crimson Chain, Ring of Free Action and Speedy Boots. Brin' me the Melodic Chain, and I'll forge a great chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2012
  SAY ~Well, ye've collected Crimson Chain, Ring of Free Action and Melodic Chain. Brin' me the Boots of Speed, and I'll forge a great chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2013
  SAY ~Well, ye've collected Crimson Chain, Boots of Speed and Melodic Chain. Brin' me the Ring of Free Action, and I'll forge it into much better chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2014
  SAY ~Well, ye've collected Ring of Free Action, Boots of Speed, and Melodic Chain. Brin' me the Crimson Chain, and I'll forge a great chain for ye.~
  IF ~~ THEN GOTO IU2017
END

IF ~~ THEN BEGIN IU2015
  SAY ~Hmmmn... I see.  Ye've got the Ring of Free Action, Crimson Chain, Melodic Chain and Boots of Speed. I could forge it all into one very sturdy and light chain for ye.~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",21)~ GOTO IU2016
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU2017
END

IF ~~ THEN BEGIN IU2016
  SAY ~Two things, me friend. It will cost ye 25,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(24999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(25000)
DestroyGold(25000)~ GOTO 56
  IF ~PartyGoldLT(25000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU2017
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU2017
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU2017
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END
