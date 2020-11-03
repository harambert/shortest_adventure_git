if touchable {
	if instance_exists(obj_textbox) {
		instance_destroy(obj_textbox);
	}
	with(oSensei)
	{
		event_perform(ev_other, ev_user2);
	}
	touchable = false;
	alarm[0] = 300;
}
