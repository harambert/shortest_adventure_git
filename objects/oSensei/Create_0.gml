//-------DIALOGUE STUFF

event_inherited();

myPortrait			= spr_portrait_sensei;
myVoice				= snd_voice2;
myName				= "Sensei"

alarm[0] = 500;

if room == r2 {
	if instance_exists(obj_textbox) {
		instance_destroy(obj_textbox);
	}
	if instance_exists(oPlayer){
		oPlayer.image_xscale = -1;
	}
	event_perform(ev_other, ev_user3);
}