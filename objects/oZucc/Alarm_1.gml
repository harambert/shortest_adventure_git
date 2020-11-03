/// @description Action Alarm
if !instance_exists(oPlayer) exit;

if point_distance(oPlayer.x,y,x,y) > 60 and state == zuccNormal{
	
	var c = choose(0,1);
	
	if c == 1
	{
		image_index = 0;
		state = zuccShoot;
		instance_create_layer(x,y,"Instances",oZuccArm);
		alarm[2] = 60;
	}
	else if c == 0
	{
		state = zuccWalk;
	}
}