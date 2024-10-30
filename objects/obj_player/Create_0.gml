// @description Inicio


//Iniciar variables

//movimiento//
sx = 2;
sy = 0;

gravedadT = true;
//salto//
gravedad = 0;
AlturaNax = -10;
SaltoF = 6;
Piso = true;
saltando = false;

//cambios
Cambio = false; //false = child||true = box
color_red = make_color_rgb(244,140,182);
color_brown = make_color_rgb(247,182,158);

//die
MuerteTimer = 0;
MuerteTimerMax = 35;

//camera
cam1 = view_camera[0];

//State Machine
EstadoJ = "Plataformas"
EstadoV = "vivo"

accion = "_idle"
personaje = "_child"

//SFx

jumpS = sn_jump;
catchS = sn_catch;
expS = sn_exp;

coyoteTime = false;
coyotecounter = 0;
maxcoyotecounter = 2;










