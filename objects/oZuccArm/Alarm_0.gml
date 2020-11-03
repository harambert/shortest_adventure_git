if count < 3 {
var xx = lengthdir_x(35, image_angle);
var yy = lengthdir_y(35, image_angle);
instance_create_layer(x+xx, y+yy, "Effects", oMuzzle);
with(instance_create_layer(x+xx, y+yy, "Effects", oBullet)) {
	speed = 5;
	direction = other.image_angle;
	image_angle = direction;
}
audio_sound_pitch(sndZuccGun, choose(0.9,1,1.1));
audio_play_sound(sndZuccGun, 1, 0);
count += 1;
alarm[0] = 10;
}
else
{
	oZucc.alarm[4] = 30;
}