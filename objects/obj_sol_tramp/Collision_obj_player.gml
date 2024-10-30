/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if obj_player.Piso and usado == false{
	obj_player.gravedad-=obj_player.SaltoF*3;
	if !audio_is_playing(sn_trampolin){ audio_play_sound(sn_trampolin,80,false); }
	obj_player.saltando = true;
	usado = true;
}










