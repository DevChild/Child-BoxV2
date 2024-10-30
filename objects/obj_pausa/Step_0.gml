/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
vx = camera_get_view_x(cam1);
vy = camera_get_view_y(cam1);
var background_blue = layer_get_id("Background_blue");
var layerFlag = layer_get_id("Flag");

if !conf{
	if keyboard_check_pressed(vk_escape){
		pausa = !pausa;
		if pausa {
		alarm[1] = 1;
		}
	}
}


if pausa {
	layer_set_visible(background_blue,true);
	obj_player.EstadoJ = "otro";
	//instance_deactivate_object(obj_player);
	//audio_pause_all();
	//if !conf {instance_create_layer(vx+12,vy+63,layerFlag,obj_conf_botton_2);}
	
	
} else {
	layer_set_visible(background_blue,false);
	//destroy all conf
	instance_destroy(obj_conf_botton_2);
	instance_destroy(obj_flechita_exit);
	//fix bug
	with (obj_player){
		//Escaleras Rojas
	if Cambio == false {
		if place_meeting(x,y,obj_sol_Red_chair){
			EstadoJ = "Escaleras";
		} else {
			EstadoJ = "Plataformas"
		}
	}

	//Escaleras cafes
	if Cambio {
		if place_meeting(x,y,obj_inv_Brown_chair){
			EstadoJ = "Escaleras";
		} else {
			EstadoJ = "Plataformas"
		}
	}
	}
	
	//instance_activate_object(obj_player);
	//audio_resume_all();
}

if pausa {
	if !conf {
		//instance_create_layer(vx+12,vy+63,layerFlag,obj_conf_botton_2);
		instance_destroy(obj_conf1);
		instance_destroy(obj_conf2);
		instance_destroy(obj_palomita);
		instance_destroy(obj_vol);
		instance_destroy(onj_flechita_conf_2);
	}
}
	 






