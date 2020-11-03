sprite_index = sZuccWalk;
hsp = image_xscale;

if !instance_exists(oPlayer) exit;

if point_distance(oPlayer.x,y,x,y) < 20 or place_meeting(x + hsp, y, oWall) {
	state = zuccNormal;
	alarm[1] = 60;
}