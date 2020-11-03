hasControl = false;
other.hsp = 0;

if touchable {
	if other.grounded
	{
		touchable = false;
		instance_create_layer(430, 156, "Instances", oZuccSpawn);
		instance_create_layer(430, 156, "Effects", oPoof);
		instance_destroy();
		other.hit = true;
		other.vsp = -3;
		other.hsp = -5;
		with(other) {
			event_perform(ev_other, ev_user1);
		}
		other.alarm[3] = 20; //return to idle
	}
}
