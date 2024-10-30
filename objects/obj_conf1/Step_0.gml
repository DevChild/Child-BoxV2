/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,obj_mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
	
	if mouse_check_button_pressed(mb_left){
		audio_play_sound(sn_catch,50,false);
		global.teclado = "child";
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}










