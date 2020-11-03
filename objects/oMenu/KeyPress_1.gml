if !pressed {
	pressed = true;
	audio_play_sound(sndStart , 1, 0);
	audio_stop_sound(mscTitle);
}