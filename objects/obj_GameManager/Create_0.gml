/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.Font = font_add_sprite_ext(spr_font, "0123456789abcdefghijklmnopqrstuvwxyz:", true, 1);
global.teclado = "child";
global.mobile = false;

full = false;
musicP = false;
R = 0;

//conf
R_prev = 0;
ww = window_get_width();
hh = window_get_height();
//ui
uiY = -20;
animacionUi = false;
frameUi = 0;

//establecer musica

songG = sn_gameplay;

volumen = 1;

var _info = os_get_info();

if _info[? "mobile"] {
	//show_message("android mode")
	global.mobile = true;
}



