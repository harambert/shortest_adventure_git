sprite_index = sZuccAtk;
hsp = 0;
if image_index > 4 and !instance_exists(oZuccAtkHit) and !sounded
{
	with(instance_create_layer(x,y,"Effects",oZuccAtkHit))
	{
		image_xscale = other.image_xscale;
	}
	audio_play_sound(sndZuccArm,1,0);
	sounded = true;
}
if image_index > 5
{
	if instance_exists(oZuccAtkHit) {
		instance_destroy(oZuccAtkHit);
	}
}