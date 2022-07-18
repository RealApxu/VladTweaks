// Bayard.d

ADD_TRANS_TRIGGER ~BAYARD~ 9 ~Gender(Player1,FEMALE)~ DO 1

EXTEND_TOP BAYARD 9
 IF ~Gender(Player1,MALE)
Global("Therella","GLOBAL",1)~ THEN REPLY ~One of your friends; they did not happen to be named Ginny, did they?~ GOTO 10A //new option for male player
END

CHAIN BAYARD 10A
~You know the lass, or did her mother send you to check on her? She is a worrisome little parent, isn't she? Perhaps rightly so, I worried about the girl too. She does not take much of this seriously, and when she realizes what she has been through it may be a rude awakening, to be sure. She is with my fellows, deeper than I wished to go. You may find them if you search, but I think the way they went has been blocked. There be so many passages it seems Durlag felt he could afford to collapse a few behind the unwary.~
DO ~EscapeAreaDestroy(90)~
UNSOLVED_JOURNAL ~Find Therella's daughter, Ginny, in Durlag's Tower.

One of Bayard's comrades was the lass named Ginny that I have come to rescue. Bayard thinks the girl is in over her head, but it is her head to do with what she pleases.~
EXTERN BAYARD 12

// Claird.d

ADD_TRANS_TRIGGER ~CLAIRD~ 12 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 13 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 14 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 15 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 17 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~CLAIRD~ 18 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)

EXTEND_TOP CLAIRD 12
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 13
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 14
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 15
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Then tell me straight: what happened to your friends.~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 17
 IF ~Gender(Player1,MALE)~ THEN REPLY ~And it used this device to destroy your friends?~ GOTO 16A //new option for male player
END

EXTEND_TOP CLAIRD 18
 IF ~Gender(Player1,MALE)~ THEN REPLY ~And it deafeated them without any effort at all?~ GOTO 16A //new option for male player
END

REPLACE_STATE_TRIGGER ~CLAIRD~ 24 ~Dead("DeathK")
!Global("Therella","GLOBAL",2)
Gender(Player1,FEMALE)~

REPLACE_STATE_TRIGGER ~CLAIRD~ 25 ~Dead("DeathK")
Global("Therella","GLOBAL",2)
Gender(Player1,FEMALE)~

CHAIN
IF ~Dead("DeathK") !Global("Therella","GLOBAL",2)~ THEN CLAIRD 16A
~They entered and challenged it, and it stared and did nothing. For a moment they didn't know what to do, and then it made a simple gesture with its hand, and all the hells broke loose. It created doubles of them all, and laughed as they literally killed themselves. I heard Ginny screaming loudest. I think she actually killed her double, but couldn't handle the fact that she had to. She was the youngest... They didn't know, and they missed the one shot they may have had...~
END
 IF ~~ THEN REPLY ~And what fell magic did it use to do this?~ EXTERN CLAIRD 17
 IF ~~ THEN REPLY ~Why did you come if you think this creature unbeatable?~ EXTERN CLAIRD 18
 IF ~~ THEN REPLY ~And what is this 'one shot' of which you speak? You have already said that you think the creature cannot be beaten.~ EXTERN CLAIRD 19
 IF ~~ THEN REPLY ~Weaklings. I will assault the creature head-on and destroy him before he realizes!~ EXTERN CLAIRD 20

CHAIN
IF ~Dead("DeathK") !Global("Therella","GLOBAL",2) Gender(Player1,MALE)~ THEN CLAIRD 24A
~You... you made it! Did any of... no, all my friends are dead, aren't they? Ginny's mother will kill me as surely as this place would have. At... at least the Demonknight has been stopped. I hope we've seen that last of his kind...it worries me though. I have heard they serve powerful beings even more evil than they, if such a thing is possible. I... I'd better go.~
DO ~DialogInterrupt(FALSE)
MoveToPoint([4208.1107])
DestroySelf()~
JOURNAL ~Clair seemed rather amazed that I defeated the demonknight. Perhaps so was I. A pity her friends could not be saved. A harsh lesson about knowing your boundaries.~
EXIT

CHAIN
IF ~Dead("DeathK") Global("Therella","GLOBAL",2) Gender(Player1,MALE)~ THEN CLAIRD 25A
~You... you made it! Ginny ran out faster than I've ever seen her move. Did anyone else... no, they are dead, aren't they? At least Ginny's mother will sleep well tonight. I doubt she'll be going on any more adventures anytime soon. Neither will I, for that matter. At least you stopped the demonknight, though... though it worries me. I have heard that such creatures serve powerful beings even more evil than they, as if such a thing were possible. I... I should go.~
DO ~DialogInterrupt(FALSE)
MoveToPoint([4208.1107])
DestroySelf()~
JOURNAL ~Clair seemed rather amazed that I defeated the demonknight, and perhaps so was I. She was also happy that at least one of her friends made it out alive. A small thing in the face of so much death, but we take our victories where we can.~
EXIT

// therel.d

//2. AR1005 in BGT - Meeting Therella
REPLACE_STATE_TRIGGER ~THEREL~ 0
~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 1
~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 2
~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)
!Dead("DeathK")~ //fix for the case of meeting Therella for the first time after rescuing Dalton/Ginny

REPLACE_STATE_TRIGGER ~THEREL~ 13
~!Dead("Dalton")
Global("Therella","GLOBAL",1)
Gender(Player1,FEMALE)~

REPLACE_STATE_TRIGGER ~THEREL~ 14
~Dead("Dalton")
Gender(Player1,FEMALE)
Global("Therella","GLOBAL",1)~

ADD_TRANS_TRIGGER ~THEREL~ 0 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 1 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 2 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 3 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)
ADD_TRANS_TRIGGER ~THEREL~ 17 ~Gender(Player1,FEMALE)~ DO 0 //reply option 0 (start with 0)

EXTEND_TOP THEREL 0
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 1
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 2
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

EXTEND_TOP THEREL 3
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Tell us the tale and we might be able to help.~ GOTO 6A //new option for male player
END

EXTEND_TOP THEREL 17
 IF ~Gender(Player1,MALE)~ THEN REPLY ~Worry not, lady. Is there anything that we could do to help?~ GOTO 3A //new option for male player
END

APPEND ~THEREL~

IF ~~ THEN BEGIN 3A
 SAY ~Unless you wish to search for my errant daughter, then no.~
 IF ~~ THEN REPLY ~Tell us the tale and we might be able to help.~ GOTO 6A
 IF ~~ THEN REPLY ~As you will. Good day.~ GOTO 4
END

IF ~~ THEN BEGIN 6A
 SAY ~I have, or perhaps I should say had, a daughter named Ginny. She fell in with a crew of adventurers from Waterdeep. Ginny was always obsessed with the idea of being a hero. Alas, she has neither the brains nor the ability. Such is a mother's lot in life however, to watch her children perform acts of idiocy despite her warnings or concerns.~
 IF ~~ THEN JOURNAL ~In Ulgoth's Beard, a woman named Therella has asked us to look for her errant daughter in Durlag's Tower.~ GOTO 7A
END

IF ~~ THEN BEGIN 7A
 SAY ~My poor girl took those acts of idiocy to the extreme. She and her thickskulled cohorts took it upon themselves to plumb the depths of Durlag's Tower. They bought a ward token from that shyster, Galkin, and made ready to leave. Though I begged and cried, Ginny still insisted on going. The band never returned. I fear that they were destroyed by the mad dwarf's machinations. That is the tale, sad but true.~
 IF ~~ THEN REPLY ~I wish I could help, but we have other concerns at present.~ GOTO 8
 IF ~~ THEN REPLY ~Rest easy, woman. We will find your daughter if she still lives.~ GOTO 9A
 IF ~~ THEN REPLY ~She deserved her fate. Cease your pointless weeping.~ GOTO 5
END

IF ~~ THEN BEGIN 9A
 SAY ~Thank you so much. Such kindness from strangers is unheard of in this harsh life. I will await Ginny's return with breathless anticicpation.~
 IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",1)~ EXIT
END

IF ~Global("Therella","GLOBAL",2)
!Dead("Ginny")
Gender(Player1,MALE)~ THEN BEGIN 10A
 SAY ~Thank you for rescuing Ginny. She arrived back here just a few days before you did. The tales she had to tell were quite fantastic, demon knights! Well, it is nice seeing my daughter. Here is some of my savings for your time.~
 IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",3)
GiveGoldForce(300)~ EXIT
END

IF ~Global("Therella","GLOBAL",3)
Gender(Player1,FEMALE)~ THEN BEGIN N1
 SAY ~Thank you for saving my son.~
 IF ~~ THEN EXIT
END

IF ~Global("Therella","GLOBAL",3)
Gender(Player1,MALE)~ THEN BEGIN N2
 SAY ~Thank you for saving my daughter.~
 IF ~~ THEN EXIT
END

IF ~!Dead("Ginny")
Global("Therella","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN 13A
 SAY ~Please keep looking for my poor girl. I don't know how much longer I can bear to be apart from her.~
 IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Dead("Ginny")
Global("Therella","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN 14A
 SAY ~Have you found Ginny yet? I so worry about my girl.~
 IF ~~ THEN REPLY ~No, she's dead. The whiny little girl had it coming.~ GOTO 15
 IF ~~ THEN REPLY ~I'm sorry Therella, there was little we could do. Your daughter is dead.~ GOTO 16A
END

IF ~~ THEN BEGIN 16A
 SAY ~My daughter is dead. But... I can't believe... It's not fair. Why is fate so cruel?~
 SOLVED_JOURNAL ~Therella's Missing Son
Therella was distraught to hear of her daughter's death, as one might expect.~
 IF ~~ THEN DO ~EraseJournalEntry(227481)
EraseJournalEntry(223508)
EraseJournalEntry(223509)
EraseJournalEntry(226867)
EscapeArea()~ EXIT
END

END

ALTER_TRANS THEREL // file name
BEGIN 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("TherTalk","GLOBAL",1)
SetGlobal("Therella","GLOBAL",1)~
END

ALTER_TRANS THEREL // file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("TherTalk","GLOBAL",1)
SetGlobal("Therella","GLOBAL",1)~
END

ALTER_TRANS THEREL // file name
BEGIN 10 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
 "ACTION" ~SetGlobal("Therella","GLOBAL",3)
GiveGoldForce(300)~
END

// vpginny.d

BEGIN ~VPGINNY~

CHAIN
IF ~Dead("DeathK")~ THEN VPGINNY 0
~Who?! No...Stay back! Stay away!~
END
 IF ~~ THEN REPLY ~Calm down, child. We are here to help you.~ EXTERN VPGINNY 1
 IF ~~ THEN REPLY ~Suck it up, child! The big bad monster is dead and we don't tolerate no crybabies!~
 JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 2
 IF ~Global("Therella","GLOBAL",1)~ THEN REPLY ~Your name? Is it Ginny? Your mother sent us to find you. Your mother Therella.~
 JOURNAL ~I have found and rescued her daughter as Therella wished. Her fellows are dead, but she will live.~ EXTERN VPGINNY 3
 IF ~~ THEN REPLY ~Relax, girl. This is all just a bad dream and you'll wake up tomorrow right as rain.~
 JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 5
 IF ~~ THEN REPLY ~Get out of here, girl! It ain't safe! Get movin'!~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 4

CHAIN VPGINNY 1
~I don't believe! It all hurts here! Everything! You too!~
END
 IF ~~ THEN REPLY ~Run then! Run from this place and don't look back!~
 JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 4
 IF ~~ THEN REPLY ~No, child, I am here to help. Nothing will harm you now.~
 JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 6
 IF ~Global("Therella","GLOBAL",1)~ THEN REPLY ~Your mother sent me to find you; your mother Therella.~
 JOURNAL ~I have found and rescued her daughter as Therella wished. Her fellows are dead, but she will live. ~ EXTERN VPGINNY 3
 IF ~~ THEN REPLY ~Aw shut-up, nothing is gonna hurt you now.~ JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 2
 IF ~~ THEN REPLY ~I don't care what you believe. If you're too stupid to recognize that you've been rescued you can stay here for all I care.~
 JOURNAL ~I have rescued a young lady from the very clutches of this place. She will live, but not without some lasting effects, I am sure. She had to kill her own double, and came very close to death herself. She is young... she will survive.~ EXTERN VPGINNY 4

CHAIN VPGINNY 2
~AHHHHHH!!!! You're here to hurt too! Gotta run! GOTTA RUN!~
DO ~SetGlobal("Therella","GLOBAL",2) EscapeArea()~
EXIT

CHAIN VPGINNY 3
~My... she... she sent you? Oh thank the gods and all that's good! I just wanna... I just wanna go home.~
END
 IF ~~ THEN REPLY ~Then get moving! The way is clear behind us. Stay calm and you'll get out just fine.~ EXTERN VPGINNY 4
 IF ~~ THEN REPLY ~Yeah, whatever. Get out of here, girl. I've cleaned up your mess and you should be safe if you leave now. Get going.~ EXTERN VPGINNY 4

CHAIN VPGINNY 4
~Gotta go...gotta go NOW!! AAAAHHHHHH!!!~
DO ~SetGlobal("Therella","GLOBAL",2) EscapeArea()~
EXIT

CHAIN VPGINNY 5
~Just a... just a bad dream... gotta run outta here... gotta wake up! GOTTA RUN!~
DO ~SetGlobal("Therella","GLOBAL",2) EscapeArea()~
EXIT

CHAIN VPGINNY 6
~You're n-not gonna hurt? You... you've come to rescue! Praise the gods!~
END
 IF ~~ THEN REPLY ~Yes, girl, calm down. We met one of your fellows and she told us of your plight. You should go now. The way is fairly clear, and you should be safe.~ EXTERN VPGINNY 4
 IF ~~ THEN REPLY ~Yeah, whatever. Get out of here, girl. I've cleaned up your mess and you should be safe if you leave now. Get going.~ EXTERN VPGINNY 4