/// @description 

if place_meeting(x,y,obj_mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
	
	if mouse_check_button(mb_left){
		with(obj_cambio){
			changeroom = Level1;
			cambio = true;
			alarm[0] = room_speed*1;
		}
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}









