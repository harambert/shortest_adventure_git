if other.hit exit;

var dir = point_direction(x,y,other.x,other.y)

other.hit = true;
other.vsp = lengthdir_y(3, dir)
other.hsp = lengthdir_x(3, dir)
with(other) {
	event_perform(ev_other, ev_user0);
}

instance_destroy();