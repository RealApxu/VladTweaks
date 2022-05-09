REPLACE_STATE_TRIGGER WSMITH01 0
~NumTimesTalkedTo(0)
!AreaCheck("AR1603")~

ADD_TRANS_ACTION WSMITH01
BEGIN 0 END
BEGIN 0 1 2 3 END
~SetGlobal("VP_Know_Cromwell","GLOBAL",1)~

REPLACE_STATE_TRIGGER WSMITH01 58
~Global("ForgeItem","GLOBAL",0)
!AreaCheck("AR1603")~

APPEND ~WSMITH01~

IF ~AreaCheck("AR1603")~ THEN BEGIN N1 // from:
  SAY ~A good <DAYNIGHTALL> to ye, me friend.  Good to see ye here in Brynnlaw.~
  IF ~!Global("VP_Know_Cromwell","GLOBAL",1)~ THEN REPLY #59658 /* ~Who are you?~ */ GOTO 1
  IF ~~ THEN REPLY #59659 /* ~What do you have for sale, here?~ */ GOTO 2
  IF ~Global("VP_Know_Cromwell","GLOBAL",1)~ THEN REPLY ~Cromwell? What are you doing here?~ GOTO N2
  IF ~~ THEN REPLY #59661 /* ~No thanks.  I'll be on my way.~ */ GOTO 4
END

IF ~~ THEN BEGIN N2
  SAY ~Visiting me human friend and apprentice. Be there something that ye need?~
  IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59803 /* ~What sorts of things do you forge here?~ */ GOTO 8
  IF ~Global("TalkedToCromwell","LOCALS",0)~ THEN REPLY #59799 /* ~What do you have for sale, here?~ */ GOTO 2
  IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59800 /* ~What sorts of things would you need in order to make something?~ */ GOTO 11
  IF ~Global("TalkedToCromwell","LOCALS",1)~ THEN REPLY #59801 /* ~Do I have anything you could forge into an item?~ */ GOTO 13
  IF ~~ THEN REPLY #59802 /* ~No, I don't think so.~ */ GOTO 12
END
END