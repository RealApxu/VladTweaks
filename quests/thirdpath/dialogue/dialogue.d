// Gaelan Bale

REPLACE_STATE_TRIGGER GAELAN 20
~~

EXTEND_BOTTOM GAELAN 26 27 33
 IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I'll better kill you now and then deal with your friends than to pay such an outrageous sum.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 29
 IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~"The thing to be done lightly" is to kill you now and then deal with your friends. Prepare to die, scum!~ GOTO N20
END

EXTEND_BOTTOM GAELAN 30
 IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~Oh, you misunderstand the situation. You will help me whether you want it or not. I'll kill you first and then deal with your friends.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 32
 IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I'm tired of this nonsense. I'll better kill you now and then deal with your friends directly.~ GOTO N20
END

EXTEND_BOTTOM GAELAN 42 49 51
 IF ~~ THEN REPLY ~I have changed my mind. I'll better kill you now and then deal with your friends than to pay such an outrageous sum. Prepare to die, scum!~ GOTO N20
END

EXTEND_BOTTOM GAELAN 86
 IF ~!Global("ShadowWork","GLOBAL",0)~ THEN REPLY ~I am not happy with the price and I don't trust anyone of you. I'll better kill you now and then deal with your friends. Prepare to die, scum!~ GOTO N20
END

CHAIN
IF WEIGHT #-1 ~Global("Attacked","LOCALS",1)~ THEN GAELAN N20
~Ye're more of a fool than I be thinkin', me <LADYLORD>. Learn what happens to fools who double-cross the Shadow Thieves!~
DO ~AddXPObject(Player1,45000)
AddXPObject(Player2,45000)
AddXPObject(Player3,45000)
AddXPObject(Player4,45000)
AddXPObject(Player5,45000)
AddXPObject(Player6,45000)
SetGlobal("Attacked","LOCALS",2)
SetGlobal("VP_Guild_Attacked","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("vpthirdp")~
EXIT

// Aran Linvail

REPLACE_STATE_TRIGGER ARAN02 0
~NumTimesTalkedTo(0)
Global("WorkingForBodhi","GLOBAL",1)~

CHAIN
IF ~NumTimesTalkedTo(0) Global("WorkingForBodhi","GLOBAL",0)~ THEN ARAN02 kr1_aran
~Fools, I would have helped you! Now you'll die!~ DO ~Enemy()~
EXIT

// Shadow Thief

ADD_TRANS_TRIGGER ARNWAR08 2 ~Global("WorkingForBodhi","GLOBAL",1)~ DO 0 1

EXTEND_BOTTOM ARNWAR08 2
 IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY ~I have no idea what you are talking about. Explain yourself.~ GOTO kr1
END

ADD_TRANS_TRIGGER ARNWAR08 8 ~Global("WorkingForBodhi","GLOBAL",1)~ DO 0

EXTEND_BOTTOM ARNWAR08 8
	IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN DO ~EscapeArea()~ EXIT
END

CHAIN arnwar08 kr1
~Ah, so you are not working for the mistress. Anyway, it matters not. You have no choice but to kill Aran or he will kill you.~
EXTERN arnwar08 5

// Saemon Havarian

REPLACE_TRIGGER_TEXT PPSAEM
~Global("ThiefGroup","GLOBAL",1)[^!]*Global("AsylumPlot","GLOBAL",2)~
~Global("AsylumPlot","GLOBAL",2)
OR(2)
Global("ThiefGroup","GLOBAL",0)
Global("ThiefGroup","GLOBAL",1)~

CHAIN
IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",0)
Global("VP_SailTo_Brynnlaw","GLOBAL",2)~ THEN PPSAEM KR0
~This is a grand day to see you. You must be <CHARNAME>, the one Aran Linvail told me about. He said you would be a very capable help to his course.~
= ~But I don't see Aran here... In fact, I heard very bad rumours that Aran has ultimately passed away and not without your help.~
DO ~SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",3)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
TakePartyItem("vparlett")~
END
IF ~~ THEN REPLY ~Yes, I've killed Aran Livnail and destroyed his guild. You must be Saemon Havarian, the infamous captain mentioned in this letter. I need your ship to sail to Brynnlaw.~ EXTERN PPSAEM KR1
IF ~~ THEN REPLY ~Yes, I've killed Aran Livnail and destroyed his guild. Here is the letter I've got from his corpse, but I presume you have been well aware of my soon arrival. I need your ship to sail to Brynnlaw.~ EXTERN PPSAEM KR1
IF ~~ THEN REPLY ~(*Pretend to be surpsrised*) No, I haven't heard of his death, and if it is true, I am not responsible for that. Aran mentioned to me you might be waiting for me in this tavern. I need your ship to sail to Brynnlaw.~ EXTERN PPSAEM KR1

CHAIN PPSAEM KR1
~Well, frankly speaking, I don't care about Aran Linvail and his guild. If you succeeded to assassinate Aran and destroy his guild in a single blow, I would like to have such a powerful ally on board.~
= ~However, I had a certain deal with Aran which due to his present condition and circumstances behind that he could not respect.~
= ~So, the ship will be yours to the island provided that you now purchase the passage for mere 10,000 gold pieces, as well as the silence of the crew.~
= ~Though a silence more symbolic than anything, as you may well find my men a boisterous lot at all hours. I encourage general revelry.~
END
IF ~PartyGoldGT(9999)~ THEN REPLY ~The personal habits of the crew are your business, Captain. Just as long as they perform as they should and deliver me safely and in good time. Here your gold is then.~ EXTERN PPSAEM KR2
IF ~PartyGoldGT(9999)~ THEN REPLY ~Sure, here your gold is then.~ EXTERN PPSAEM KR2
IF ~PartyGoldLT(10000)~ THEN REPLY #20968 EXTERN PPSAEM KR3
IF ~PartyGoldLT(10000) AreaCheck("AR0500")~ THEN REPLY #20988 EXTERN PPSAEM KR4
IF ~PartyGoldLT(10000) AreaCheck("AR0313")~ THEN REPLY #20988 EXTERN PPSAEM KR6

CHAIN PPSAEM KR2
~Thank you, <CHARNAME>. Then we are fully staffed and ready to sail. Never a fear nor worry should cross your thoughts this eve, m'<PRO_LADYLORD>. I have traveled this sea a good many times, and I foresee no troubles.~
= ~Although, I am sure, nothing untoward will happen during our crossing, best that we get underway as soon as possible. Please follow me to the docks where my ship is waiting for us.~
DO ~TakePartyGold(10000)
DestroyGold(10000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("VPMov03B")~
EXIT // --> to Brynnlaw (no Kachiko in party) => VPMov03B => VPMov03D => CUT41td 

CHAIN PPSAEM KR3
~I am sure you have spent as much in the past and will again. Surely there be work in the city for you. Or perhaps some of your expensive goods to sell?~
END
IF ~AreaCheck("AR0500")~ THEN REPLY #20988 EXTERN PPSAEM KR4
IF ~AreaCheck("AR0313")~ THEN REPLY #20988 EXTERN PPSAEM KR6

CHAIN
IF ~Global("ThiefGroup","GLOBAL",0)
Global("AsylumPlot","GLOBAL",0)
Global("VP_SailTo_Brynnlaw","GLOBAL",3)
Global("Start_Island","GLOBAL",0)
Global("VP_Pay_to_Saemon","GLOBAL",0)~ THEN PPSAEM KR5
~Hey, <CHARNAME>. It's nice to see you again. Have you gathered the required fee for me?~
END
IF ~PartyGoldLT(10000) AreaCheck("AR0500")~ THEN REPLY #21031 EXTERN PPSAEM KR4
IF ~PartyGoldLT(10000) AreaCheck("AR0313")~ THEN REPLY #21031 EXTERN PPSAEM KR6
IF ~PartyGoldGT(9999)~ THEN REPLY #21033 EXTERN PPSAEM KR2

CHAIN PPSAEM KR4
~I'll wait for you here.~
EXIT

CHAIN PPSAEM KR6
~I'll wait for you here. I enjoy here my drinks and chatting with friends.~
EXIT

CHAIN
IF ~Global("AsylumPlot","GLOBAL",1)	Global("ThiefGroup","GLOBAL",0)~ THEN PPSAEM s0
#43922 /* ~We have arrived, and in good time, I might add. Congratulatory remarks for all the crew, and to our visitors for their delightful company.~ [PPSAEM02] */
END
 IF ~!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ GOTO 56
 IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~NALIAJ~ 272
 IF ~!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~JANJ~ 150
 IF ~!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~YOSHJ~ 92
 IF ~!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)~ EXTERN ~KORGANJ~ 117

EXTEND_TOP KORGANJ 117 
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN EXTERN PPSAEM 56
END

EXTEND_BOTTOM KORGANJ 118
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN EXTERN PPSAEM 56
END

EXTEND_TOP YOSHJ 92
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN EXTERN PPSAEM 56
END

EXTEND_TOP JANJ 150 
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN EXTERN PPSAEM 56
END

EXTEND_TOP NALIAJ 272 
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN EXTERN PPSAEM 56
END

EXTEND_BOTTOM PPSAEM 56 
IF ~Global("ThiefGroup","GLOBAL",0)~ THEN DO ~SetAreaRestFlag(0)
SetGlobal("VP_SailTo_Brynnlaw","GLOBAL",4)
SetGlobal("AsylumPlot","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("vp41et")~ EXIT
END

// VVARKAN.D

REPLACE_STATE_TRIGGER VVARKAN 0
~Global("VP_Guild_Attacked","GLOBAL",0) Global("PlayerAttackedAran","GLOBAL",0)~

REPLACE_STATE_TRIGGER VVSHAD1 0
~OR(2)
Global("VP_Guild_Attacked","GLOBAL",1)
Global("PlayerAttackedAran","GLOBAL",1)~

// VVSHAD1.d

REPLACE_STATE_TRIGGER VVSHAD1 0
~Global("HareisFlee","GLOBAL",1)
OR(2)
Global("WorkingForBodhi","GLOBAL",1)
Global("VP_Guild_Attacked","GLOBAL",1)~

REPLACE_STATE_TRIGGER VVSHAD1 1
~Global("HareisFlee","GLOBAL",1)
Global("VP_Guild_Attacked","GLOBAL",0)~

REPLACE_STATE_TRIGGER VVSHAD1 2
~Global("HareisFlee","GLOBAL",1)
Global("WorkingForAran","GLOBAL",1)
Global("VP_Guild_Attacked","GLOBAL",0)~

SET_WEIGHT VVSHAD1 0 #0
SET_WEIGHT VVSHAD1 1 #2
SET_WEIGHT VVSHAD1 2 #1

// Twisted Rune Unlock Dialogue

ALTER_TRANS HLSHANG // file name
BEGIN 2 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("HeardOfTwistedRuneHQ","GLOBAL",1)~
END

ALTER_TRANS HLSHANG // file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~Global("HeardOfTwistedRuneHQ","GLOBAL",1)~
END