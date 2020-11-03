//---You can update variables here!---//
reset_dialogue_defaults();

		//Line 0
		var i = 0;
		myText[i]		= "Mother.. I was too weak..";
		mySpeaker[i]	= id;
		myScripts[i]	= [baphDisappear];

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);