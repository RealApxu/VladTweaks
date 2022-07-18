// Aldeth Additions

I_C_T ALDETH 27 VP_Aldeth1
== ALDETH ~In addition I will suggest you to browse my personal store and take a look at my special merchandise which I show only to my very special guests. If you wish you may purchase banknotes accepted by any accredited merchant store, our exchange rate will be only 20% for you.~
END

ALTER_TRANS ALDETH
BEGIN 28 END
BEGIN 0 END
BEGIN "REPLY" ~No, nothing at the moment.~

EXTEND_TOP ALDETH 28
 ++ ~Aldeth, could you show me your special merchandise?~ DO ~StartStore("aldeth",LastTalkedToBy(Myself))~ EXIT
END

// Merchant Bank in Baldur's Gate Market District

BEGIN VPMEBANK

CHAIN
IF ~True()~ THEN VPMEBANK 0
~'Allo, <LADYLORD>! Would you care to invest into our merchant bank?~
END
 ++ ~Let's see what you have.~ DO ~StartStore("vpmebank",LastTalkedToBy())~ EXIT
 ++ ~Maybe another time.~ EXTERN VPMEBANK 1

CHAIN VPMEBANK 1
~As you wish. Have a nice <DAYNIGHT>!~
EXIT

CHAIN
IF ~False()~ THEN VPMEBANK 2
~Come again!~
EXIT