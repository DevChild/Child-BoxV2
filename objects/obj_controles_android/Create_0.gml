/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//display_set_gui_maximize(8,8);
//display_set_gui_size(256,144);
if global.mobile == true {
	//Almacena el tamaño de la pantalla del juego
	ww = 256;
	hh = 144;

	size=ww/10 ;//Tamaño del botón respecto al ancho de la pantalla, en este caso, un décimo del ancho de la pantalla
	
	key_left = virtual_key_add(size/5, hh-size, size+size/2, size, vk_left);
	key_right = virtual_key_add(size+size/5*4, hh-size, size+size/2, size, vk_right);
	key_jump = virtual_key_add(ww-size-size, hh-size, size, size, vk_up);
	key_down = virtual_key_add(ww-size-size-size-size/2, hh-size, size, size, vk_down);
	key_space = virtual_key_add(ww-size-size/2, hh-size-size-size/4*2, size, size,  ord("Z"));
	key_pause = virtual_key_add(0, 0, size, size, vk_escape);
//declarar las teclas virtuales, se guardan en variables para luego dibujarlas para testing
/*
	key_left = virtual_key_add(size/5, hh-size, size+size/2, size, vk_left);
	key_right = virtual_key_add(size+size/5*4, hh-size, size+size/2, size, vk_right);
	key_jump = virtual_key_add(ww-size-size, hh-size, size, size, vk_up);
	key_down = virtual_key_add(ww-size-size-size-size/2, hh-size, size, size, vk_down);
	key_space = virtual_key_add(ww-size-size/2, hh-size-size-size/4*2, size, size,  ord("Z"));
	*/
}











