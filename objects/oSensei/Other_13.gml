//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "What the Frick?!.. Is that the Legendary Spirit Sword?!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Yup.";
		mySpeaker[i]	= oPlayer;
		
		//Line 2
		i++;
		myText[i]		= "Oh my.. It was just here all along..";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Oh. looks like there's a huge monster right there!";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Press 'J' to attack! Good luck.";
		mySpeaker[i]	= id;
		myScripts[i]	= [returnMusic];
		
		//Line 5
		i++;
		myText[i]		= "Okay.";
		mySpeaker[i]	= oPlayer;
		myScripts[i]	= [returnControl];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);