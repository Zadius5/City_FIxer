/// @description Insert description here
// You can write your code in this editor



//Key inputs

key_down = 0
key_up = 0
key_right = 0
key_left = 0

x_speed = 0
y_speed = 0
movement = 10
moving = true
//Animation list
face = DOWN
delay = 0.5
awalk[DOWN] = fixer_front
awalk[UP] = fixer_back
awalk[RIGHT] = fixer_right
awalk[LEFT] = fixer_left
afix[DOWN] = fixer_front_fix
afix[UP] = fixer_back_fix
afix[RIGHT] = fixer_right_fix
afix[LEFT] = fixer_left_fix
//Hammer function
fix_cd = false

function fix() {
	audio_play_sound(Anvil,0,false)
	xbox = 0
	ybox = 0
	switch (face) {
		case DOWN:
		ybox = 120
		break;
		case UP:
		ybox = -120
		break;
		case RIGHT:
		xbox = 120
		break;
		case LEFT:
		xbox = -120
		break;
	}
	instance_create_layer(x+xbox,y+ybox,"collision_layer",hammer_hitbox)
	fix_cd = true
	moving = false
	sprite_index = afix[face]
	alarm[0] = 30
	alarm[1] = 30
}


function move() {
	
	if(keyboard_check(ord("S"))){
		face = DOWN
		y_speed = movement
	}
	else if(keyboard_check(ord("W"))){
		face = UP
		y_speed = -movement
	}
	else if(keyboard_check(ord("D"))){
		face = RIGHT
		x_speed = movement
	}
	else if(keyboard_check(ord("A"))){
		face = LEFT
		x_speed = -movement
	}
	if(place_meeting(x+x_speed,y+y_speed,collision_box)||place_meeting(x+x_speed,y+y_speed,building)){
		x_speed = 0
		y_speed = 0
	}
	sprite_index = awalk[face]
	if(y_speed == 0 && x_speed ==0){
		image_index = 0
	}
	if (!audio_is_playing(walkfx) && (y_speed != 0 || x_speed !=0)){
	audio_play_sound(walkfx,false,0)
	}
	y += y_speed
	x += x_speed
	x_speed = 0
	y_speed = 0
}

