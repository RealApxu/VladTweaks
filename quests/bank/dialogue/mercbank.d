BEGIN MERCBANK

IF ~True()~ THEN BEGIN 0 // from:
  SAY ~'Allo <LADYLORD>! Would you care to invest into our merchant bank?~
  IF ~~ THEN REPLY #24763 /* ~Let's see what you have.~ */ DO ~StartStore("mercbank",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY #14641 /* ~Maybe another time.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #14644 /* ~As you will. Have a nice <DAYNIGHT>!~ */
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 2 // from:
  SAY #14646 /* ~Come again!~ */
  IF ~~ THEN EXIT
END
