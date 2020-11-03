//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "Human! Do not go any further! I am Baphomet, the strongest creature!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "If you come any closer, I WILL BACK-HAND SLAP YOU!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Okay.";
		mySpeaker[i]	= oPlayer;
		myScripts[i]	= [returnControl];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);