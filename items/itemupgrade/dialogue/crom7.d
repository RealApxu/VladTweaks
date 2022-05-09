//7. Enhanced Firetooth

EXTEND_BOTTOM WSMITH01 13
  	IF ~OR(5)
PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU70
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU70
  SAY ~Aye, ye've collected some components for a mighty crossbow...~
//1 from 5
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU71
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU72
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU73
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU731
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU74
//2 from 5
//First is fixed
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU75
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU76
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU761
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU77
//Second is fixed
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU78
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU781
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU79
//Third is fixed
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU791
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU792
//Fourth is fixed
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU793
//3 from 5
//1, 2, 3
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU710
//1, 2, 4
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU7101
//1, 2, 5
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7102
//2, 3, 4
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU711
//2, 3, 5
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU712
//2, 4, 5
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7121
//1, 3, 4
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU713
//1, 3, 5
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU714
//1, 4, 5
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7141
//3, 4, 5
  IF ~!PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7142
//4 from 5
//3
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
!PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU715
//1
  IF ~!PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7151
//2
  IF ~PartyHasItem("xbow15")
!PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU7152
//4
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
!PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU716
//5
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
!PartyHasItem("wand18")~ THEN GOTO IU717
  IF ~PartyHasItem("xbow15")
PartyHasItem("daisy")
PartyHasItem("clck24")
PartyHasItem("helm19")
PartyHasItem("wand18")~ THEN GOTO IU718
END

IF ~~ THEN BEGIN IU71
  SAY ~Well, ye've got the Firetooth... But I would need another crossbow called "Daisy", a Cloak of Reflection, Dusty Rose Ion Stone and a Wand of Spell Striking in order to forge it into a new xbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU72
  SAY ~Hmmmn. A rare enough Daisy, but without another crossbow called "Firetooth", a Cloak of Reflection, Dusty Rose Ion Stone and a Wand of Spell Striking, I cannae forge it into one piece of a very powerful crossbow for ye. A pity.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU73
  SAY ~Well, ye've got the Cloak of Reflection here. But I would need two rare crossbows: Daisy and Firetooth, as well as Dusty Rose Ion Stone and a Wand of Spell Striking, in order to forge them into a new and very powerful crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU731
  SAY ~Well, ye've got the Dusty Rose Ion Stone here. But I would need two rare crossbows: Daisy and Firetooth, as well as Cloak of Reflection and a Wand of Spell Striking, in order to forge them into a new and very powerful crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU74
  SAY ~Well, ye've got the Wand of Spell Striking here. But I would need two rare crossbows: Daisy and Firetooth, as well as a Cloak of Reflection and Dusty Rose Ion Stone, in order to forge them into a new and very powerful crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU75
  SAY ~Well, ye've got a pair of nice crossbows here: Daisy and Firetooth. But I would need a Cloak of Reflection, Dusty Rose Ion Stone and a Wand of Spell Striking in order to forge them into a new and very powerful crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU76
  SAY ~Well, ye've got the Firetooth and Cloak of Reflection here. If ye brin' me the crossbow called "Daisy" together with Dusty Rose Ion Stone and a Wand of Spell Striking, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU761
  SAY ~Well, ye've got the Firetooth and Dusty Rose Ion Stone here. If ye brin' me the crossbow called "Daisy" together with Cloak of Reflection and a Wand of Spell Striking, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END


IF ~~ THEN BEGIN IU77
  SAY ~Well, ye've got the Firetooth and Wand of Spell Striking here. If ye brin' me the crossbow called "Daisy" together with Dusty Rose Ion Stone and a a Cloak of Reflection, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU78
  SAY ~Well, ye've got the Daisy and Cloak of Reflection here. If ye brin' me the crossbow called "Firetooth" together with Dusty Rose Ion Stone and a Wand of Spell Striking, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU781
  SAY ~Well, ye've got the Daisy and Dusty Rose Ion Stone here. If ye brin' me the crossbow called "Firetooth" together with Cloak of Reflection and a Wand of Spell Striking, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU79
  SAY ~Well, ye've got the Daisy and Wand of Spell Striking here. If ye brin' me the crossbow called "Firetooth" together with Dusty Rose Ion Stone and a a Cloak of Reflection, I'll forge it into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU791
  SAY ~Well, ye've got the Cloak of Reflection and Dusty Rose Ion Stone here. But I would need two rare crossbows: Daisy and Firetooth, together with a Wand of Spell Striking, to forge them into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU792
  SAY ~Well, ye've got the Cloak of Reflection and Wand of Spell Striking here. But I would need two rare crossbows: Daisy and Firetooth, together with Dusty Rose Ion Stone, to forge them into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU793
  SAY ~Well, ye've got the Dusty Rose Ion Stone and Wand of Spell Striking here. But I would need two rare crossbows: Daisy and Firetooth, together with a Cloak of Reflection, to forge them into a much better crossbow for ye.~
  IF ~~ THEN GOTO IU719
END

IF ~~ THEN BEGIN IU710
  SAY ~Well, ye've got the two rare crossbows: Firetooth and Daisy, and also a Cloak of Reflection. If ye brin' me a Wand of Spell Striking and Dusty Rose Ion Stone, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7101
  SAY ~Well, ye've got the two rare crossbows: Firetooth and Daisy, and also a Dusty Rose Ion Stone. If ye brin' me a Wand of Spell Striking and Cloak of Reflection, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7102
  SAY ~Well, ye've got the two rare crossbows: Firetooth and Daisy, and also a Wand of Spell Striking. If ye brin' me a Cloak of Reflection and Dusty Rose Ion Stone, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU711
  SAY ~Hmmm... I see Daisy in your bag together with a Cloak of Reflection and Dusty Rose Ion Stone. If ye brin' me another crossbow called "Firetooth" and a Wand of Spell Striking, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU712
  SAY ~Hmmm... I see Daisy in your bag together with a Cloak of Reflection and Wand of Spell Striking. If ye brin' me another crossbow called "Firetooth" and a Dusty Rose Ion Stone, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7121
  SAY ~Hmmm... I see Daisy in your bag together with a Dusty Rose Ion Stone and Wand of Spell Striking. If ye brin' me another crossbow called "Firetooth" and a Cloak of Reflection, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU713
  SAY ~Hmmm... I see Firetooth in your bag together with a Cloak of Reflection and Dusty Rose Ion Stone. If ye brin' me another crossbow called "Daisy" and a Wand of Spell Striking, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU714
  SAY ~Hmmm... I see Firetooth in your bag together with a Cloak of Reflection and Wand of Spell Striking. If ye brin' me another crossbow called "Daisy" and a Dusty Rose Ion Stone, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7141
  SAY ~Hmmm... I see Firetooth in your bag together with a Dusty Rose Ion Stone and Wand of Spell Striking. If ye brin' me another crossbow called "Daisy" and a Cloak of Reflection, I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7142
  SAY ~Ye've got some interesting items in your bag... I see a Cloak of Reflection, Dusty Rose Ion Stone and Wand of Spell Striking. If ye brin' me a pair of crossbows: Firetooth and Daisy, I'll forge 'em into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU715
  SAY ~Well, ye've got a pair of nice crossbows here: Daisy and Firetooth together with a Wand of Spell Striking and Dusty Rose Ion Stone. If ye brin me' a Cloak of Reflection, I'll forge a mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7151
  SAY ~Hmmm... I see Daisy in your bag together with a Dusty Rose Ion Stone, Wand of Spell Striking and Cloak of Reflection. If ye brin' me another crossbow called "Firetooth", I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU7152
  SAY ~Hmmm... I see Firetooth in your bag together with a Dusty Rose Ion Stone, Wand of Spell Striking and Cloak of Reflection. If ye brin' me another crossbow called "Daisy", I'll forge it into one mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU716
  SAY ~Well, ye've got a pair of nice crossbows here: Daisy and Firetooth together with a Wand of Spell Striking and Cloak of Reflection. If ye brin me' a Dusty Rose Ion Stone, I'll forge a mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU717
  SAY ~Well, ye've got a pair of nice crossbows here: Daisy and Firetooth together with a Cloak of Reflection and Dusty Rose Ion Stone. If ye brin me' a Wand of Spell Striking, I'll forge a mighty crossbow for ye.~
  IF ~~ THEN GOTO IU720
END

IF ~~ THEN BEGIN IU718
  SAY ~Hmmmn... I see.  Ye've got a pair of nice crossbows here: Daisy and Firetooth together with a Wand of Spell Striking, Cloak of Reflection and Dusty Rose Ion Stone. I could forge it all into one very powerful crossbow for ye.~
  IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",17)~ GOTO IU719
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ GOTO IU720
END

IF ~~ THEN BEGIN IU719
  SAY ~Two things, me friend. It will cost ye 35,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
  IF ~PartyGoldGT(34999)~ THEN REPLY #59785 /* ~That sounds fine.  Let's do it.~ */ DO ~TakePartyGold(35000)
DestroyGold(35000)~ GOTO 56
  IF ~PartyGoldLT(35000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU720
  IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that.  Anything else of use?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO IU720
  IF ~~ THEN REPLY #59791 /* ~No, I don't think so.  I think I'll be going, now.~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN IU720
  	SAY #59742 /* ~Well, what else does ye have in yer packs, then?  Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END