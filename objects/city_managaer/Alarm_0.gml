/// @description Insert description here
// You can write your code in this editor

var non_availible1 = true
for(i = 0; i < array_length(tier_1); i++){
	if (!tier_1[i].collapsed && !tier_1[i].collasing){
		non_availible1 = false}
}
if(!non_availible1){
var index1 = irandom_range(0,array_length(tier_1)-1)
var chosen_b1 = tier_1[index1]

while(chosen_b1.collasing || chosen_b1.collapsed){
	index1 = irandom_range(0,array_length(tier_1)-1)
	chosen_b1 = tier_1[index1]
}
show_debug_message(index1)
chosen_b1.collaspe()
}


alarm[0] = 60 * random_range(12.5,15)