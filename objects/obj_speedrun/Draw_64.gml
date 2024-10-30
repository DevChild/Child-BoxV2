/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if speedrun == true {
	if startsped == true{
			draw_set_font(global.Font);

	//draw_text(20,20, time);
	//draw_text(20,50, timeMax);
	//draw_text(20,80, minutos);
	
	draw_sprite(spr_Ui_inv,sub,128,128);
	var strScore = string_replace_all(string_format(segundos ,2, 0), " ", "0");
	var strScore_min = string_replace_all(string_format(minutos ,2, 0), " ", "0");

	draw_text(130,134, strScore);
	draw_text(128,134, ":");
	draw_text(118,134, strScore_min);

	/*
	var strScore = string_replace_all(string_format(ScoreManager.puntaje ,5, 0), " ", "0");
	draw_text(30,15, strScore);
	draw_text(50, 520, generar);
	*/
	}
}






