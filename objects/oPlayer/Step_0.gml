left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(ord("K"));
jumpRelease = keyboard_check_released(ord("K"));
atk = keyboard_check_pressed(ord("J"));


//CONTROLS AND MOVEMENT

if hasControl and !hit{
	hsp = right - left;
}

if place_meeting(x + hsp*walkspd, y, oWall)
{
	while !place_meeting(x + hsp, y, oWall) {
		x += hsp };
	hsp = 0;
}
x += hsp * walkspd;

vsp = min(5, vsp + grav);

if place_meeting(x, y + sign(vsp) * 5, oWall)
{
	while !place_meeting(x, y + sign(vsp), oWall) {
		y += sign(vsp) };
	vsp = 0;
}
y += vsp;

//JUMPING

if place_meeting(x, y+5, oWall) {
	grounded = true;
	jumps = 2;
} else {
	grounded = false;
}

if jumps > 0 and jump and hasControl and !hit {
	vsp = -6
	repeat(5) {
		with (instance_create_layer(x + random_range(-2,2),bbox_bottom,"Effects",oDust)){
			vsp = random_range(-2,-3);
		}
	}
	jumps -= 1
	audio_sound_pitch(sndJump, choose(1.1,1.2,1.3));
	audio_play_sound(sndJump, 1,false);
}

if jumpRelease {
	if vsp < -3 {
		vsp = -3;
	} else if vsp < -2 {
		vsp = -2;
	} else if vsp < -1 {
		vsp = -1;
	}
}

//ATTACKS
if atk and hasControl and !instance_exists(obj_textbox) and gotSword and !hit {
	if !instance_exists(oAtk)
	{
		instance_create_layer(x,y,"Effects", oAtk);
		audio_sound_pitch(sndAtk, choose(0.9,1,1.1));
		audio_play_sound(sndAtk, 1,false);
	}
}

//ANIMATION
if hsp != 0 and vsp == 0 {
	sprite_index = sPlayerRun;
	if runTimer < 10 {
		runTimer += 1
	} else {
		runTimer = 0;
		with (instance_create_layer(x,bbox_bottom,"Effects",oDust)){
			vsp = random_range(0,-1);
		}
		audio_sound_pitch(sndRun, choose(0.9,1,1.1));
		audio_play_sound(sndRun, 1,false);
	}
} else {
	sprite_index = sPlayer;
}

//Landing
if grounded and vsp > 0 {
	repeat(5) {
		with (instance_create_layer(x + random_range(-2,2),bbox_bottom,"Effects",oDust)){
			hsp = random_range(-2,2);
		}
	}
	audio_play_sound(sndRun, 1,false);
	if hit {
		hit = false;
	}
}

if vsp != 0 {
	if vsp > 0 {
		sprite_index = sPlayerDown;
	} else {
		sprite_index = sPlayerUp;
	}
}

if hsp != 0 {
	image_xscale = sign(hsp);
}

//Hit animation
if hit {
	sprite_index = sPlayerHit;
	if runTimer < 2 {
		runTimer += 1
	} else {
		runTimer = 0;
		repeat(3) {
			with (instance_create_layer(x,bbox_bottom,"Effects",oDust)){
			}
		}
	}
}
