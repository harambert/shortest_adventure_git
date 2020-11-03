if instance_exists(oPlayer) {
	oPlayer.hsp = 0;
}

hasControl = false;

oBaphometControl.alarm[0] = 120;

audio_play_sound(sndHit, 1, 0);

instance_change(oBaphometDie, true);