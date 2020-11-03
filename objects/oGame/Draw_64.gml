//for room transitions
draw_set_alpha(trans);
draw_set_color(c_black);
draw_rectangle(0,-10,room_width, room_height, false);
draw_set_alpha(1);

if room == rEnd  or room == rMenu or room == rSplash exit;

draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_alpha(transTitle);
draw_text(cw, ch-30, title)
draw_set_alpha(1);
//for hp
draw_sprite(sHP, hp, 20,20);