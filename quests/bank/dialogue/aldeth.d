REPLACE ~ALDETH~

IF WEIGHT #9 ~Global("Chapter","GLOBAL",6)
Global("HelpAldeth","GLOBAL",2)~ THEN BEGIN 28
  SAY ~I'm sorry, but I have much to do in rebuilding my shattered consortium.~
  IF ~~ THEN REPLY ~Aldeth, could you show me your special merchandise?~ DO ~StartStore("aldeth",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY #40098 /* ~No, nothing at the moment.~ */ EXIT
END
END

REPLACE_SAY ~ALDETH~ 27 ~I must thank you for saving my consortium! I will reward all of you greatly for what you have done for me. I hope what I give you now is reward enough. This sword is a family heirloom, and could be useful if you were ever to run into those shapeshifting creatures again. Know that if ever you are in trouble, you can come to the consortium. In addition I will suggest you to browse my personal store and take a look at my special merchandise which I show only to my very special guests. If you wish you may purchase banknotes accepted by any accredited merchant store, our exchange rate will be only 20% for you.~