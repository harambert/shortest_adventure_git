//Collision Controls

if place_meeting(x + hsp*walkspd, y, oWall)
{
	while !place_meeting(x + hsp, y, oWall) {
		x += hsp };
	hsp = 0;
}
x += hsp * walkspd;

vsp = min(5, vsp + grav);

if place_meeting(x, y + sign(vsp) * 5, oWall)
{
	while !place_meeting(x, y + sign(vsp), oWall) {
		y += sign(vsp) };
	vsp = 0;
}
y += vsp;


if instance_exists(oPlayer) {
	if point_distance(oPlayer.x, y, x, y) < 80 and state == zuccNormal and canAtk1 {
		state = zuccAtk;
		image_index = 0;
		canAtk1 = false;
	}
}


script_execute(state);