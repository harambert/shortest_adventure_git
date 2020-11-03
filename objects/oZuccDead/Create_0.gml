hasControl = false;
audio_stop_sound(mscBoss);
if instance_exists(oPlayer) {
	oPlayer.hsp = 0;
}

blip = true;
alarm[0] = 15;
alarm[1] = 300;