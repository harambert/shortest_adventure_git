//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "Behold! I am Zucc! The Robot Lizard Overlord!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "I will take over the world with fake news!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= oPlayer;
		
		//Line 3
		i++;
		myText[i]		= "Okay.";
		mySpeaker[i]	= oPlayer;
		myScripts[i]	= [commenceBoss];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);