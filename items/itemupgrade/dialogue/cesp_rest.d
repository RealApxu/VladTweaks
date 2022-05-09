EXTEND_BOTTOM BOTSMITH 2
  IF ~~ THEN REPLY ~May I rest here?~ GOTO R1
END

APPEND BOTSMITH

IF ~~ THEN BEGIN R1
  SAY ~Sure. Cespenar is at your service while you rest as always.~
  IF ~~ THEN  DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPHealCp")~ EXIT
END