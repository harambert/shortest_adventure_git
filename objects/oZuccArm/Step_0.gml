if instance_exists(oPlayer)
{
	image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
}
if image_angle > 90 and image_angle < 270 {
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

if !instance_exists(oZucc)
{
	instance_destroy();
}