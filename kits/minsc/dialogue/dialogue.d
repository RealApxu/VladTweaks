BEGIN VPBOO

CHAIN
IF ~!CharName("Minsc",LastTalkedToBy)~ THEN VPBOO Boo1
~(You grab Boo and give 'him' to Minsc.)~ [BOOHL]
DO ~GiveItemCreate("misc84","Minsc",0,0,0)
SetGlobalTimer("VP_NoBoo","GLOBAL",6)
DestroySelf()~
EXIT

CHAIN
IF ~CharName("Minsc",LastTalkedToBy)~ THEN VPBOO Boo2
~(Minsc grabs Boo and places 'him' on his shoulder.)~ [BOOHL]
DO ~GiveItemCreate("misc84","Minsc",0,0,0)
SetGlobalTimer("VP_NoBoo","GLOBAL",6)
DestroySelf()~
EXIT