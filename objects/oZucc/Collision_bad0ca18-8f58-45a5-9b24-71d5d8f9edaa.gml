if !hit and other.image_index < 2 {
	if zhp != 1
	{
		hit = true;
		audio_play_sound(sndHit,1,0);
		alarm[5] = 60;
		alarm[6] = 6;
		hitBlip = true;
		instance_create_layer(x,y,"Effects",oSwordSlash);
		zhp -= 1;
	}
	else 
	{
		audio_play_sound(sndHit,1,0);
		instance_create_layer(x,y,"Effects",oSwordSlash);
		instance_change(oZuccDead, true);
	}
	
}