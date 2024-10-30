/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if speedrun == true {
	if startsped == true {
		if time < 3600 {
			time += delta_time/100000;
			if segundos < 60{
				segundos += delta_time/1000000;
			} else {
				segundos = 0;
				minutos += 1;
				//segAm += 1 ;
			}
		}

		if instance_exists(obj_player){
			switch (obj_player.Cambio){
				case(true):
					sub = 1;
				break;
		
				case(false):
					sub = 0;
				break;
			}
		}
	}

}


switch(obj_GameManager.R){
	case("SelectRoom"):
		startsped = false;
	break;
	
	case("creditos"):
		startsped = false;
	break;
	case("Level1"):
		startsped = true;
	break
}



