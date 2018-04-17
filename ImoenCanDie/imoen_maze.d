APPEND IMOEN2

IF WEIGHT #-1
~%ENDOFBG1_2%~ THEN imoen_can_die
SAY ~Unhh...~ [IMOEN18]
++ ~Imoen! Looks like you're recovering from whatever was affecting you earlier.~ + 1 //Imoen's original first line
++ ~Imoen! You seem like you're slipping away!~ + imoen_dies_01
END

IF ~~ THEN imoen_dies_01
SAY ~Feel so... empty... can't hold on...~
IF ~~ THEN DO ~SetGlobal("C#ICD_ImoenIsDead","GLOBAL",1)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("c#icd001")~ EXIT
END

END //APPEND IMOEN2 

CHAIN
IF WEIGHT #-1
~Global("C#ICD_ImoenIsDead","GLOBAL",1)~ THEN Player1 imoen_dies_02
~(You can do nothing but watch, as Imoen's body disintegrates into nothing.)~
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN ~Oh no! That w-was Imoen, was she not? <CHARNAME>, I am so sorry!~
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN ~Not... not another death. Not another death on account of this monster! <CHARNAME>, we will... we *will* find him!~
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN ~Oh, our friend Imoen dead! Boo, this is a sad day.~
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) !HasItem("MISC84","MINSC")~ THEN ~Oh, our friend Imoen dead! This is a sad day.~
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN ~Pfft. So, this was what the rescuing mission was about?~
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN ~The ritual seems to have weakened her. (Well, maybe better than to have to drag her along.)~
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN ~This bird closed her eyes forever. No more songs of joy and love for this one. But songs of loss and grieve for the ones who remain.~
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN ~What... what a failure! We were too late, <CHARNAME>. I... I am sorry.~
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN ~Seeing a friend die is hard to take as it is. Not knowing whether it might have been possible to save her if only we did something differently, is the hardest part of it.~
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~She was too weak. Better have her die now than slow us down. Our own life is at risk now.~
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN ~Oh, <CHARNAME>, I am so sorry. But you have to keep in mind that you did all you could. Do not lose yourself in self-reproach. Take this advice from soneone who knows what she is talking about...~
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN ~The paths of nature seem crual and unjust at times.~
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN ~This reminds me of...of so many stories I've heard... and some that I experienced. (sigh)~
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN ~No! No! We failed in rescuing your friend. Let us find this mage. Let us make him pay for your loss!~
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",1)~ THEN ~Pfeh, there she lies. Too weakend to endure, too strong to die during the ritual. Ths leaves us with only one more goal - find this mage and make him pay for everything he did!~
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN ~This is a grave moment indeed. <CHARNAME>, do not let yourself be drowned in guilt. We did what we could - albeit this knowledge is no relief for the pain you must feel now, it is important not to forget this.~
END
IF ~~ THEN DO ~SetGlobal("C#ICD_ImoenIsDead","GLOBAL",2)~ SOLVED_JOURNAL ~Imoen is Dead.

Imoen died in the asylum.

My childhood friend Imoen - or was she my sister? - died the moment I thought I freed her from Irenicus' grasp. All is left for me now is to go after Irenicus, not only to retrieve my soul but also to confront him with all the deaths he brought into my life.~ EXIT

