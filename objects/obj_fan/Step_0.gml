/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
sprite_index = SPR;

if obj_trofeos.fans[ID] == 0{
	visible = false;
} else if obj_trofeos.fans[ID] == 1 {
	visible = true;
}


if place_meeting(x,y,obj_mouse){
	image_xscale = 1.1;
	image_yscale = 1.1;
	mostrar = true;
} else {
	image_xscale = 1;
	image_yscale = 1;
	mostrar = false;
}





