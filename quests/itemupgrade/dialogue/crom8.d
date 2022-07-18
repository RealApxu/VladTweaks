//8. Enhanced Flame Tongue

EXTEND_BOTTOM WSMITH01 13
 IF ~OR(4)
PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")
Global("VP_FlameSw_Is_Done","GLOBAL",0)~ THEN GOTO IU80
END

APPEND WSMITH01

IF ~~ THEN BEGIN IU80
 SAY #59724 /* ~Ay, now, what have we here?~ */
 IF ~PartyHasItem("sw1h24")
!PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
!PartyHasItem("zzg7ts")~ THEN GOTO IU801
 IF ~PartyHasItem("zzg7ts")
!PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
!PartyHasItem("sw1h24")~ THEN GOTO IU802
 IF ~PartyHasItem("zzc8hb")
!PartyHasItem("ulswd3a")
!PartyHasItem("zzg7ts")
!PartyHasItem("sw1h24")~ THEN GOTO IU803
 IF ~PartyHasItem("ulswd3a")
!PartyHasItem("zzg7ts")
!PartyHasItem("zzc8hb")
!PartyHasItem("sw1h24")~ THEN GOTO IU804
 IF ~PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
!PartyHasItem("zzg7ts")~ THEN GOTO IU805
 IF ~PartyHasItem("sw1h24")
!PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
!PartyHasItem("zzg7ts")~ THEN GOTO IU806
 IF ~PartyHasItem("sw1h24")
!PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU807
 IF ~!PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
!PartyHasItem("zzg7ts")~ THEN GOTO IU808
 IF ~!PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU809
 IF ~!PartyHasItem("sw1h24")
!PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU810
 IF ~PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
!PartyHasItem("zzg7ts")~ THEN GOTO IU811
 IF ~PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
!PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU812
 IF ~PartyHasItem("sw1h24")
!PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU813
 IF ~!PartyHasItem("sw1h24")
PartyHasItem("ulswd3a")
PartyHasItem("zzc8hb")
PartyHasItem("zzg7ts")~ THEN GOTO IU814
 IF ~PartyHasItem("ulswd3a")
PartyHasItem("zzg7ts")
PartyHasItem("zzc8hb")
PartyHasItem("sw1h24")~ THEN GOTO IU815
END

IF ~~ THEN BEGIN IU801
 SAY ~Well, ye've got the Flame Tongue here, but I would need other three swords: Flaming Long Sword, Hell�s Bane and Trollslayer, in order to forge them into a very enhanced flamin' sword.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU802
 SAY ~Well, ye've got the Hell�s Bane, here, indeed. But I would need other three swords: Flame Tongue, Flaming Long Sword and Trollslayer, in order to forge it into a new flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU803
 SAY ~Hmmmn. A rare enough Trollslayer, but without the Flame Tongue, Flaming Long Sword and Hell�s Bane, I cannae forge it into a new flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU804
 SAY ~Hmmmn. A mighty Flaming Long Sword, but without the Flame Tongue, Hell�s Bane and Trollslayer, I cannae forge it into one piece of a very enhanced flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU805
 SAY ~Well, ye've collected a pair of flamin' swords: Flame Tongue and Flaming Long Sword. Brin' me other two swords: Hell�s Bane and Trollslayer, in order to forge them into one very powerfull flamin' sword.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU806
 SAY ~Well, ye've got the Flame Tongue and Trollslayer here, but I would need other two swords: Flaming Long Sword and Hell�s Bane, in order to forge them into a very enhanced flamin' sword.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU807
 SAY ~Well, ye've got the Flame Tongue and Hell�s Bane here, but I would need other two swords: Flaming Long Sword and Trollslayer, in order to forge them into a very enhanced flamin' sword.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU808
 SAY ~Hmmmn. Two fancy swords: Flaming Long Sword and Trollslayer... But without the Flame Tongue and Hell�s Bane, I cannae forge 'em into one very powerfull flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU809
 SAY ~Hmmmn. Two fancy swords: Flaming Long Sword and Hell�s Bane... But without the Flame Tongue and Trollslayer, I cannae forge 'em into one very powerfull flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU810
 SAY ~Hmmmn. Two fancy swords: Trollslayer and Hell�s Bane... pretty useless though. Brin' me a pair of flamin' swords: Flame Tongue and Flaming Long Sword, and I'll forge 'em into one very powerfull flamin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU811
 SAY ~Well, ye've collected three fancy swords: Flame Tongue, Flaming Long Sword and Trollslayer. Brin' me the Hell�s Bane, and I'll forge a great falmin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU812
 SAY ~Well, ye've collected three fancy swords: Flame Tongue, Flaming Long Sword and Hell�s Bane. Brin' me the Trollslayer, and I'll forge a great falmin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU813
 SAY ~Well, ye've collected three fancy swords: Flame Tongue, Trollslayer and Hell�s Bane. Brin' me the Flaming Long Sword, and I'll forge it into much better falmin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU814
 SAY ~Well, ye've collected three fancy swords: Flaming Long Sword, Trollslayer, and Hell�s Bane. Brin' me the Flame Tongue, and I'll forge a great falmin' sword for ye.~
 IF ~~ THEN GOTO IU817
END

IF ~~ THEN BEGIN IU815
 SAY ~Hmmmn... I see. ye've got the Flaming Long Sword, Flame Tongue, Hell�s Bane and Trollslayer. I could forge it all into one very powerfull flamin' sword for ye.~
 IF ~~ THEN REPLY #59740 /* ~What would be involved in that?~ */ GOTO IU816
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU817
END

IF ~~ THEN BEGIN IU816
 SAY ~Two things, me friend. It will cost ye 25,000 gp for the work, no less, and ye'll have to stay here a full day and help me run the forge.~
 IF ~PartyGoldGT(24999) Global("VP_FlameSw_Is_Done","GLOBAL",0)~ THEN REPLY #59785 /* ~That sounds fine. Let's do it.~ */ DO ~TakePartyGold(25000)
DestroyGold(25000) SetGlobal("VP_FlameSw_Is_Done","GLOBAL",1)~ GOTO 56
 IF ~PartyGoldLT(25000)~ THEN REPLY ~Unfortunately, I don't have sufficient funds for that. Anything else of use?~ GOTO IU817
 IF ~~ THEN REPLY #59741 /* ~No, I'm not interested in that. Anything else of use?~ */ GOTO IU817
 IF ~~ THEN REPLY #59791 /* ~No, I don't think so. I think I'll be going, now.~ */ GOTO 12
END

IF ~~ THEN BEGIN IU817
 SAY #59742 /* ~Well, what else does ye have in yer packs, then? Hmmmn...~ */
COPY_TRANS WSMITH01 13
END
END