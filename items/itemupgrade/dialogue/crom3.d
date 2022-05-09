//3. Enhanced Selune's Promise

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(4)
PartyHasItem("simace1")
PartyHasItem("hammcomm")
PartyHasItem("rithore")
PartyHasItem("rithtel")~ THEN GOTO IU40
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU40
  SAY ~Aye, ye've collected some nice items to forge. I know an ol' recipe and I can make a new mace for yon, very powerful, if ye like.~
  IF ~PartyHasItem("simace1")
!PartyHasItem("hammcomm")
!PartyHasItem("rithore")
!PartyHasItem("rithtel")~ THEN GOTO IU41
  IF ~!PartyHasItem("simace1")
PartyHasItem("hammcomm")
!PartyHasItem("rithore")
!PartyHasItem("rithtel")~ THEN GOTO IU42
  IF ~!PartyHasItem("simace1")
!PartyHasItem("hammcomm")
OR(2)
PartyHasItem("rithore")
PartyHasItem("rithtel")~ THEN GOTO IU43
  IF ~PartyHasItem("simace1")
PartyHasItem("hammcomm")
!PartyHasItem("rithore")
!PartyHasItem("rithtel")~ THEN GOTO IU44
  IF ~PartyHasItem("simace1")
!PartyHasItem("hammcomm")
OR(2)
PartyHasItem("rithore")
PartyHasItem("rithtel")~ THEN GOTO IU45
  IF ~!PartyHasItem("simace1")
PartyHasItem("hammcomm")
OR(2)
PartyHasItem("rithore")
PartyHasItem("rithtel")~ THEN GOTO IU46
  IF ~PartyHasItem("simace1")
PartyHasItem("hammcomm")
OR(2)
PartyHasItem("rithore")
PartyHasItem("rithtel")~ THEN GOTO IU47
END

IF ~~ THEN BEGIN IU41
  SAY ~Well, ye've got the Selune's Promise here, indeed. But I would need the Hammer of Comminution and a very special ore, in order to forge it into a new mace for ye.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU42
  SAY ~Hmmmn. A rare enough Hammer of Comminution, but without the Selune's Promise and a very special ore, I cannae forge it into one piece of a very powerful mace for ye. A pity.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU43
  SAY ~Well, ye've got an extremely rare ore here that I thought I'd never seen again... Interestin' me where did ye got it... Hmmm... But I would need other two pieces: Selune's Promise and Hammer of Comminution, in order to forge them into a new and very powerful mace for ye.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU44
  SAY ~I see ye've got a pair of nice weapons here, good for priest: the Selune's Promise and Hammer of Comminution. But without a very special ore, I cannae forge it into one piece of a very powerful mace for ye. A pity.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU45
  SAY ~Well, ye've got the Selune's Promise here and the rarest ore that I thought I'd never seen again. If ye brin' me the Hammer of Comminution, I'll forge it into a very powerful mace for ye.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU46
  SAY ~Well, ye've got the Hammer of Comminution here and the rarest ore that I thought I'd never seen again. If ye brin' me the Selune's Promise, I'll forge it into a very powerful mace for ye.~
  IF ~~ THEN GOTO IU49
END

IF ~~ THEN BEGIN IU47
  SAY ~Hmmmn... I see.  ye've got the Selune's Promise, Hammer of Comminution and the very same ore I was dreamin' to see again. I could forge it all into one very powerful mace for ye.~
  IF ~PartyHasItem("rithtel")
!PartyHasItem("rithore")~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",14)~ GOTO IU48
  IF ~PartyHasItem("rithore")~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",15)~ GOTO IU48
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU49
END

IF ~~ THEN BEGIN IU48
  SAY ~Three things, me friend. It will cost ye 10,000 gp for the work, no less, ye'll hav' to assist me with your magics, and ye'll stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(9999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(10000)
DestroyGold(10000)~ GOTO 56
  IF ~PartyGoldLT(10000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU49
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU49
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU49
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END