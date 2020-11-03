event_inherited(); //so it will inherit from par_speaker

if !instance_exists(oPlayer) exit;

if oPlayer.x < x {
	image_xscale = -1;
} else {
	image_xscale = 1;
}