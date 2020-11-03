if room == rDead exit;

trans = 1;
mode = "open"
hasControl = true;

transTitle = 0
modeTitle = "open"
alarm[0] = 200; // to close title

if room == r2 {
	title = "Typical Cave";
	if !audio_is_playing(mscStage1) {
		audio_play_sound(mscStage1,0,1);
	}
}

if room == r3 {
	title = "Area 3";
}

lastRoom = room
