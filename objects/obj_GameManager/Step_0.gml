/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*
TeclaF = keyboard_check_pressed(vk_f5);

if full == true {
	window_set_fullscreen(true);
} else {
	window_set_fullscreen(false);
}

if TeclaF {
	full = !full;
}
*/
R = room_get_name(room);

//animacion ui
if animacionUi == true {
	if uiY != 0 {
		uiY++;
		alarm[0] = room_speed*2;
	}
	
	if uiY == 0 {
		
	}
} else {
	if uiY != -20 {
		uiY --;
	}
}
if instance_exists(obj_player){
	if obj_player.Cambio == true{
		frameUi = 1;
	}else {
		frameUi = 0;
	}
}

if R == "Title" {
	if !audio_is_playing(sn_title){
		audio_stop_all();
		audio_play_sound(sn_title,90,true);
	}
}

if R == "SelectRoom" {
	if !audio_is_playing(sn_title){
		audio_stop_all();
		audio_play_sound(sn_title,90,true);
	}
}

if R == "StartRoom" {
	if !audio_is_playing(sn_title){
		audio_stop_all();
		audio_play_sound(sn_title,90,true);
	}
}

if R == "Level1" {
	if !audio_is_playing(sn_gameplay){
		audio_stop_all();
		audio_play_sound(sn_gameplay,90,true);
	}
}

if R == "Level_11" {
	audio_stop_all();
}

if R == "Level_12" {
	if !audio_is_playing(sn_speed){
		audio_stop_all();
		audio_play_sound(sn_speed,90,true);
	}
}

var num = audio_get_listener_count();
for( var i = 0; i < num; i++;)
{
    var info = audio_get_listener_info(i);
    audio_set_master_gain(info[? "index"], volumen);
    ds_map_destroy(info);
}

//conf
