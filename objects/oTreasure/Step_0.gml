if !instance_exists(oPlayer) exit;
if place_meeting(x,y,oPlayer) and image_index == 0 {
	if keyboard_check_pressed(ord("J")){
		oPlayer.hsp = 0;
		hasControl = false;
		image_speed = 1;
		gotSword = true;
		oSword.alarm[0] = 60;
		audio_stop_sound(mscStage1);
		audio_play_sound(sndGet,1,0);
	}
}