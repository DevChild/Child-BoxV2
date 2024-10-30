/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if obj_pausa.pausa == false{
	if movimiento {
		x++;
	}

	if obj_player.EstadoV == "muerto" {
		movimiento = false;
	}

	if obj_seg.x > 2336 {
		movimiento = false;
	}

}





