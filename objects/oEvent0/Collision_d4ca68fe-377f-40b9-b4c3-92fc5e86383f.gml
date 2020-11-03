if instance_exists(obj_textbox) {
	instance_destroy(obj_textbox);
}

with(oSensei)
{
	event_perform(ev_other, ev_user0);
}

hasControl = false;
with(other){
	hsp = 0;
}

instance_destroy();