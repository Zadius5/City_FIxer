/// @description Insert description here
// You can write your code in this editor
var non_availible2 = true
for(i = 0; i < array_length(tier_2); i++){
	if (!tier_2[i].collapsed && !tier_2[i].collasing){
		non_availible2 = false}
}
if(!non_availible2){
var index2 = irandom_range(0,array_length(tier_2)-1)
var chosen_b2 = tier_2[index2]

while(chosen_b2.collasing || chosen_b2.collapsed){
	index2 = irandom_range(0,array_length(tier_2)-1)
	chosen_b2 = tier_2[index2]
}
chosen_b2.collaspe()
show_debug_message(index2)
}


alarm[2] = 60 * random_range(20,22.5)