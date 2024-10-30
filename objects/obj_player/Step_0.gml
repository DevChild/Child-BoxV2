/// @description Movimiento

//variables//
if global.teclado == "men"{
	TeclaD = ord("D");
	TeclaI = ord("A");
	TeclaS = vk_space;
	TeclaU = ord("W");
	TeclaA = ord("S");
	TeclaC = mouse_check_button_pressed(mb_left);;

} else if global.teclado == "child"{
	TeclaD = vk_right;
	TeclaI = vk_left;
	TeclaS = vk_up;
	TeclaU = vk_up;
	TeclaA = vk_down;
	TeclaC = ord("Z");

}

vx = camera_get_view_x(cam1);
vy = camera_get_view_y(cam1);
var background = layer_get_id("Background_red");
var backcolor = layer_background_get_id(layer_get_id("Backgrounds"));
var TilesRojos = layer_get_id("TilesRojos");
var TilesCafes = layer_get_id("TilesCafes");


if EstadoV == "vivo"{

	sprite_index = asset_get_index("spr_player" + accion + personaje);

	#region Vivo
	if EstadoJ == "Plataformas" {

	#region Movimiento
		if keyboard_check(TeclaD) {
			repeat(sx) {
				if place_free(x+1,y){
					x++;
				}
			}
		}

		if keyboard_check(TeclaI) {
			repeat(sx){
				if place_free(x-1,y){
					x--;
				}
			}
		}
	#endregion

	#region Salto
	if gravedadT {
		//--gravedad
		if place_free(x,y+1){
			gravedad +=0.5;
			Piso = false
		} else {
			Piso = true;
		}

		if gravedad > 0 {
			repeat(gravedad){
				if place_free(x,y+1){
					y++;
					//Piso = false;
				} else {
					gravedad = 0;
					//Piso = true;
					saltando = false;
				}
			}
		}

		if gravedad < 0 {
			repeat(-gravedad){
				if place_free(x,y-1){
					y--;
					//Piso =  false;
				} else {
					gravedad = 0;
				}
			}
		}
	}
	
	
	//--tecla
	if keyboard_check_pressed(TeclaS) && Piso{
		gravedad-=SaltoF;
		audio_play_sound(jumpS,80,false);
		saltando = true;
	}
	//limitar altura//
	if gravedad< AlturaNax {
		gravedad = AlturaNax;
	}
	#endregion

	}

	if EstadoJ == "Escaleras" {

	gravedad = 0;
	saltando = false;

	#region Movimiento
	if keyboard_check(TeclaD) {
		repeat(sx) {
			if place_free(x+1,y){
				x++;
			}
		}
	}

	if keyboard_check(TeclaI) {
		repeat(sx){
			if place_free(x-1,y){
				x--;
			}
		}
	}
	if keyboard_check(TeclaU) {
		repeat(sx){
			if place_free(x,y-1){
				y--;
			}
		}
	}
	if keyboard_check(TeclaA) {
		repeat(sx){
			if place_free(x,y+1){
				y++;
			}
		}
	}
	#endregion

	}

	#region Cambio
	if keyboard_check_pressed(TeclaC){
		Cambio=!Cambio;
		//audio_play_sound(sn_change,80,false);
	}

	if !Cambio {
		layer_background_blend(backcolor,color_red);
		layer_set_visible(TilesRojos,true);
		layer_set_visible(TilesCafes,false);
		layer_set_visible(background,true);
		personaje = "_child";
	} else {
		layer_background_blend(backcolor,color_brown);
		layer_set_visible(TilesRojos,false);
		layer_set_visible(TilesCafes,true);
		layer_set_visible(background,false);
		personaje = "_box"
	}

	//Evitar atascos

	if !place_free(x,y){
		y=y-5;
	}

	if place_meeting(x,y,obj_col){	
		if EstadoV != "muerto"{
			particulaM = part_system_create(Muerte);
			part_system_position(particulaM,x,y);
			layer_sequence_create("Transicion", vx + 128, vy + 72, Die);
		}
		EstadoV = "muerto"
	}

	#endregion

	#region Colision escaleras

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

	#endregion

	#endregion
}

if EstadoV == "muerto"{
	visible = false;
	if MuerteTimer < MuerteTimerMax {
		MuerteTimer++;
	} else {
		layer_sequence_create("Transicion", vx + 128, vy + 74 ,FadeIn);
		MuerteTimer = MuerteTimerMax;
	}
}

//maquina de estados

//derecha//
if EstadoJ == "Plataformas" {
	if keyboard_check(TeclaD) and Piso {
		accion = "_walk";
	}
	//Izquierda//
	if keyboard_check(TeclaI) and Piso {
		accion = "_walk";	
	} 
	//Salto//
	if Piso == false { accion = "_jump";}
	/*
	if TeclaS and !Piso{
		accion = "_jump";
	} if !Piso and saltando {
		accion = "_jump";
	} 
	*/
	if keyboard_check(vk_nokey) and Piso{
		accion = "_idle";
	}
	
	if Piso and ! keyboard_check(TeclaD) and !keyboard_check(TeclaI) {
		accion = "_idle";
	}
	//invertir//
	if  keyboard_check(TeclaD){	image_xscale = 1;	}
	if  keyboard_check(TeclaI){	image_xscale =-1;	}

} else if EstadoJ == "Escaleras"{
	accion = "_up"
}

//coyote time

if !Piso and !saltando {
	coyoteTime = true;
}

if coyoteTime {
	coyotecounter++;
	if  keyboard_check_pressed(TeclaS) {
		gravedad = 0;
		gravedad-=SaltoF;
		audio_play_sound(jumpS,80,false);
		saltando = true;
		coyotecounter = 0;
		coyoteTime = false;
	}
	
	if coyotecounter > maxcoyotecounter {
		coyotecounter = 0;
		coyoteTime = false;
	
	}
}

//conf

//key_left = virtual_key_add(32, 32, 64, 64, TeclaD);
//key_right = virtual_key_add(size+size/10, hh-size, size, size, vk_right);
//key_jump = virtual_key_add(ww-size-size/2, hh-size, size, size, vk_up);