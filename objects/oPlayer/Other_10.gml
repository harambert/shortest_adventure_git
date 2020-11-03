/// @description Hit Events

game_set_speed(8, gamespeed_fps);
hitTrans = 0.3;
instance_create_layer(x,y,"Effects", oHitEffect);
audio_play_sound(sndHurt, 1, 0);
hp -= 1;

if hp > 0
{
	alarm[0] = 1;
	alarm[1] = 45;
} else if hp <= 0 {
	alarm[2] = 8;
}

