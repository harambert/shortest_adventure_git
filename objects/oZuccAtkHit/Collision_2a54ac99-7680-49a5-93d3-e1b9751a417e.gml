if other.hit exit;

other.hit = true;
other.vsp = -3;

if other.x < x other.hsp = -4;
else other.hsp = 4;

with(other) {
	event_perform(ev_other, ev_user0);
}