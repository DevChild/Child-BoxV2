/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if place_meeting(x,y,obj_mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
	
	if mouse_check_button_pressed(mb_left){
		
		with(obj_pausa){
			obj_pausa.conf = true;
			alarm[0] = 1;
		}
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}



if global.mobile == true {
	instance_destroy();
}





