/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(player) > 500){
	cal_cord()
	if(critical){
		draw_set_color(c_red)
		draw_sprite(warning_srpite,1,640-x_ui, 350-y_ui)
	}
	
	else{
		draw_set_color(c_yellow)
		draw_sprite(warning_srpite,0,640-x_ui, 350-y_ui)
	}
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_transformed(640-x_dis,350-y_dis, string(dis) + "m",1.5,1.5,0)
}
