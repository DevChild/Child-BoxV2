/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(global.Font);
if pausa {
	if !conf{
		draw_sprite(spr_pause,0,vx,vy);
	} else {
		draw_sprite(spr_title_conf,0,vx+64,vy+16)
	}
	
}











