/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,obj_mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
	
	if mouse_check_button(mb_left){
		with(obj_GameManager){
			R_prev = asset_get_index(room_get_name(room));
		}
		with(obj_cambio){
			changeroom = configuracion;
			cambio = true;
			alarm[0] = room_speed*1;
		}
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}

if global.mobile == true {
	instance_destroy();
}








