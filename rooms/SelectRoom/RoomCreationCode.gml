cam1 = view_camera[0];
vx = camera_get_view_x(cam1);
vy = camera_get_view_y(cam1);

with(obj_speedrun){
	segundos = 0;
	minutos = 0;
	time = 0;
}
layer_sequence_create("Transicion",128+vx, 72+vy,FadeOn);