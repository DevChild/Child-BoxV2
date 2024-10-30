

if obj_trofeos.fans[ID] == 0 {
	audio_play_sound(sn_catch,80,false);
	obj_GameManager.animacionUi = true;
	obj_trofeos.fans[ID] = 1;
	visible = true;  
	
	//save
	//
	obj_trofeos.lista = 0;
	for (var i = 0; i < 10; i += 1){
		if obj_trofeos.fans[i] == 1 {
			obj_trofeos.lista += 1;
		}
	}
}

obj_trofeos.lista = 0;
	for (var i = 0; i < 10; i += 1){
		if obj_trofeos.fans[i] == 1 {
			obj_trofeos.lista += 1;
		}
	}









