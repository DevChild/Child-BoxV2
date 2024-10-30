/// @description Animacion

//Timer//
if usado {
	if TrampTime < TrampMaxTime {
		TrampTime++;		
	} else {
		TrampTime = 0;
		usado = false;
	}
}

//Animacion//
if usado {
	if obj_player.Cambio{
		image_index = 3;
	} else {
		image_index = 1;
	}
	
} else {
	if obj_player.Cambio{
		image_index = 2;
	} else {
		image_index = 0;
	}	
}





