/// @description pincho cafe
if Cambio == true {
	if EstadoV != "muerto"{
		particulaM = part_system_create(Muerte);
		audio_play_sound(expS,80,false);
		part_system_position(particulaM,x,y);
		layer_sequence_create("Transicion", vx + 128, vy + 72, Die);
	}
	EstadoV = "muerto"
}











