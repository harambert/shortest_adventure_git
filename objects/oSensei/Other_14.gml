//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "...I think you overdid it a little..";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Oopsie.";
		mySpeaker[i]	= oPlayer;
		myScripts[i]	= [returnControl];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);