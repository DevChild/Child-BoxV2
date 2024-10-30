/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(obj_pausa){
	if obj_pausa.pausa == false {
		if obj_player.EstadoV == "vivo"{
			if obj_player.Cambio == true {
				draw_sprite(spr_Flag,1,obj_player.x,obj_player.y-20);
			} else {
				draw_sprite(spr_Flag,0,obj_player.x,obj_player.y-20)
			}
		}

	}
}











