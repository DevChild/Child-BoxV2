cam1 = view_camera[0];
vx = camera_get_view_x(cam1);
vy = camera_get_view_y(cam1);
layer_sequence_create("Transicion",128+vx, 72+vy,FadeOn);