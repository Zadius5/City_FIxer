/// @description Insert description here
// You can write your code in this editor
strike = 5
points = 0
building_list = []
tier_1 = []
tier_2 = []
tier_3 = []
num_3 = 0
num_2 = 0
num_1 = 0
lose = false
time = 0
buid_up = 0
for(i = 0; i < instance_number(building); i++){
	building_list[i] = instance_find(building,i)
}

show_debug_message("debug")
for (i = 0; i < array_length(building_list); i++){
	show_debug_message(building_list[i])
	
}

for(i = 0; i <array_length(building_list); i++){
	if(building_list[i].tier == 3){
		tier_3[num_3] = building_list[i]
		num_3++
	}
}
for(i = 0; i <array_length(building_list); i++){
	if(building_list[i].tier == 2){
		tier_2[num_2] = building_list[i]
		num_2++
	}
}
for(i = 0; i <array_length(building_list); i++){
	if(building_list[i].tier == 1){
		tier_1[num_1] = building_list[i]
		num_1++
	}
}

alarm[0] = 60 * random_range(12.5,15)
alarm[2] = 60 * random_range(20,22.5)
alarm[3] = 60 * random_range(27.5,30)
alarm[1] = 60

function game_over(){
	player.moving = false
	alarm[0] = -1
	alarm[1] = -1
	lose = true
	var back_bt = instance_create_layer(player.x- 200,player.y+100,"hui",back_but)
	var re_but = instance_create_layer(player.x+ 200,player.y+100,"hui",retry_but)
}