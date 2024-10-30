/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
time = 0;
timeMax = 3600;
speedrun = false;
startsped = false;
segundos = 0;
minutos = 0;
horas = 0;
sub = 0;

//load max//
/*
if file_exists("maxscore.ini"){
	ini_open("maxscore.ini"){
		timeMax = ini_read_real("score","max", timeMax);
	}
} else {
	timeMax = 3600;
}
//

//ini//
ini_open("maxscore.ini");

ini_write_real("score", "max", timeMax);

ini_close();
*/
//
var _current_challenge = gxc_get_query_param("challenge");

if (_current_challenge == global.ch_speedrun)
{
	speedrun = true;
}










