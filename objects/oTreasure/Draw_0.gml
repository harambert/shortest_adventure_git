draw_self();

if !instance_exists(oPlayer) exit;
if place_meeting(x,y,oPlayer) and image_index == 0 {
	draw_sprite(sTreasureOutline,0,x,y);
}