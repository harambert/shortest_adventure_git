display_set_gui_size(456,256)

globalvar hp;
hp = 5;
globalvar hasControl;
globalvar gotSword;
hasControl = true;
gotSword = false;

globalvar cw;
globalvar ch;

cw = display_get_gui_width() / 2
ch = display_get_gui_height() / 2

trans = 1;
mode = "open"

title = "Rectangular Mountains"
transTitle = 0
modeTitle = "open"
alarm[0] = 200; // to close title

globalvar lastRoom;
globalvar baphDead;

lastRoom = r1;
baphDead = false;

audio_sound_gain(mscBoss, 2, 1);