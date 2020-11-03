draw_set_color(c_white);
draw_set_alpha(hitTrans);
draw_rectangle(0,0,456,256,false);
draw_set_alpha(1);

if hitTrans > 0 {
	hitTrans -= 0.05;
}