/// @description Insert description here
// You can write your code in this editor

x_ui = 0
y_ui = 0
x_dis = 0
y_dis = 0
dis = 0
critical = false
function cal_cord(){
	ui_dir = point_direction(player.x,player.y,x,y)
	x_ui = 580*sin(((ui_dir-90)*pi)/180)
	y_ui = 340*cos(((ui_dir-90)*pi)/180)
	x_dis = 520*sin(((ui_dir-90)*pi)/180)
	y_dis = 275*cos(((ui_dir-90)*pi)/180)
	dis = distance_to_object(player) div 20
}

