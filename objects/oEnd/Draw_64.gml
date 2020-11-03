draw_set_color(c_black);
draw_set_alpha(trans);
draw_rectangle(0,-10,room_width,room_height,false);
draw_set_alpha(1);

if transDown and trans > 0 {
	trans -= 0.01;
}
else if !transDown and trans < 0.7 {
	trans += 0.01;
}

if displayTxt {
	draw_set_font(fnt_dialogue);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text_ext(cw,ch,"And so after saving the world from Zucc and his fake news, you and your master decided to do a cliche ending where you stare at the sunset. The end.",30,350);
}