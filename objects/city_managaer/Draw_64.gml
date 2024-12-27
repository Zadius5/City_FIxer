/// @description Insert description here
// You can write your code in this editor

draw_self()
switch(strike){
	case 5:
	image_index = 0
	break;
	case 4:
	image_index = 1
	break;
	case 3:
	image_index = 2
	break;
	case 2:
	image_index = 3
	break;
	case 1:
	image_index = 4
	break;
	default:
	image_index = 5
}
draw_set_color(c_yellow)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)


draw_text_transformed(30,30,"POINTS: " + string(points),3,3,0)
draw_text_transformed(30,80,"TIME SURVIED: " + string(time div 60) +":"+ string(time -(time div 60)* 60),3,3,0)
if (lose){
	draw_set_halign(fa_center)
	draw_text_transformed(640,300,"YOUR HIGHSCORE: " + string(points),3,3,0)
	draw_text_transformed(640,350,"TIME: " +string(time div 60) +":"+ string(time -(time div 60)* 60),3,3,0)
}