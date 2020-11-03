if canAtk and point_distance(oPlayer.x, y, x, y) < 100
{
	image_index = 0;
	sprite_index = sBaphometAtk;
	alarm[0] = cooldown
	canAtk = false;
}

if sprite_index == sBaphometAtk
{
	if image_index > 4 and image_index < 6 and !instance_exists(oBaphometHitbox)
	{
		instance_create_layer(x,y,"Effects", oBaphometHitbox);
		audio_play_sound(sndZuccArm,1,0);
	}
	else if image_index >= 6 and instance_exists(oBaphometHitbox)
	{
		instance_destroy(oBaphometHitbox);
	}
}