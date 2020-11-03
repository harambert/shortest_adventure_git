draw_set_font(fnt_title);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(20,60, "Shortest Adventure Ever");
draw_set_font(fnt_dialogue);
draw_text(40, 210, "Press any key to start");


draw_set_alpha(trans);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

if pressed {
	trans += 0.01;
}

if trans > 1 {
	room_goto(r1)
}