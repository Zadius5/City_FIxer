/// @description Insert description here
// You can write your code in this editor

collasing = false
collapsed = false
fix_cd = false
stage = 3
hit = 0
stage_time = 0
col_warn = 0
sprite_index = sprite_type
depth = -bbox_bottom
function collaspe(){
	audio_play_sound(colapse,0,false)
	if(col_warn ==0){
	col_warn = instance_create_layer(x,y-100,"buildings",warning)
	}
	if (stage > 0){
	stage -= 1
	}
	if(stage < 2){
		col_warn.critical = true
	}
	collasing = true
	switch(tier){
		case 1:
		stage_time = 15
		break;
		case 2:
		stage_time = 22.5
		break;
		case 3:
		stage_time = 30
		break;
	}
	alarm[0] = 60* (stage_time )
}


function fixing(){
	alarm[0] += 60
	alarm[1] = 30
	alarm[2] = 120
	fix_cd = true
	hit++
	if(hit == max_level){
		alarm[0] = -1
		alarm[2] = -1
		collasing = false
		hit = 0
		stage = 3
		instance_destroy(col_warn)
		col_warn = 0
		city_managaer.points += tier * 100
	}
}