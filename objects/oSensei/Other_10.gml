//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "Ahhh, there you are, my student!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "let us start our long journey to acquire the legendary SPIRIT SWORD!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "We will use it to defeat the Zucc Overlord.";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Okay.";
		mySpeaker[i]	= oPlayer;
		myScripts[i]	= [returnControl];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);