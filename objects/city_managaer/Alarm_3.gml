/// @description Insert description here
// You can write your code in this editor
var non_availible3 = true
for(i = 0; i < array_length(tier_3); i++){
	if (!tier_3[i].collapsed && !tier_3[i].collasing){
		non_availible3 = false}
}
if(!non_availible3){
var index3 = irandom_range(0,array_length(tier_3)-1)
var chosen_b3 = tier_3[index3]

while(chosen_b3.collasing || chosen_b3.collapsed){
	index3 = irandom_range(0,array_length(tier_3)-1)
	chosen_b3 = tier_3[index3]
}
chosen_b3.collaspe()
show_debug_message(index3)
}


alarm[3] = 60 * random_range(27.5,30)