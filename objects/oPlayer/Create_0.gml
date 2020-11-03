hit = false;
hitTrans = 0;
hsp = 0;
walkspd = 3;
vsp = 0;
grav = 0.3;
grounded = false;
jumps = 2;
runTimer = 0;
depth = 99;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice1;
myFont				= fnt_dialogue;
myName				= "Student";

if room == r3 {
	gotSword = true;
}
