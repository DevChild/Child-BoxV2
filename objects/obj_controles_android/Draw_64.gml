/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if global.mobile == true {
	//display_set_gui_size(256, 72) ;//esta línea no es que sea necesaria realmente
	//Dibujar los botones, sólo usar para testeo, el sprite final de los botones debes dibujarlos con la función draw_sprite
	//virtual_key_show(key_left);
	//virtual_key_show(key_right);
	//virtual_key_show(key_jump);
	//virtual_key_show(key_down);
	//virtual_key_show(key_pause);
	draw_sprite(spr_bton_pause,0,0,0);
	
	if obj_pausa.pausa == false{
		draw_sprite(spr_bton_left91,0,size/5, hh-size);
		draw_sprite(spr_bton_right,0,size+size/5*4, hh-size);
		draw_sprite(spr_bton_up,0,ww-size-size, hh-size*1.2);
		draw_sprite(spr_bton_change,0,ww-size-size/2, hh-size-size-size/4*2);
		if obj_player.EstadoJ == "Escaleras" {
			draw_sprite(spr_bton_down,0,ww-size-size-size-size/2, hh-size*1.2);
		}
	}
}










