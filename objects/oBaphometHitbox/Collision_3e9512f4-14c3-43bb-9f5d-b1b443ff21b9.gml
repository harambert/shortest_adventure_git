if other.hit exit;

other.hit = true;
other.vsp = -3;
other.hsp = -5;
with(other) {
	event_perform(ev_other, ev_user0);
}