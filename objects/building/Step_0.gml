/// @description Insert description here
// You can write your code in this editor

switch(stage){
	case 3:
	image_index = 0
	break;
	case 2:
	image_index = 1
	break;
	case 1:
	image_index = 2
	break;
	case 0:
	image_index = 3
	break;
}
if(collasing){
	if(place_meeting(x,y,hammer_hitbox) && !fix_cd){
			fixing()
		}
}

if(stage <=0 && !collapsed){
	collapsed = true
	collasing = false
	city_managaer.strike -= tier
	instance_destroy(col_warn)
	col_warn = 0
	alarm[0] = -1
}

