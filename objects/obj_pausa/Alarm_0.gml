/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var layerFlag = layer_get_id("Flag");
instance_destroy(obj_conf_botton_2);
instance_destroy(obj_flechita_exit);
instance_create_layer(vx+112,vy+96,layerFlag,obj_palomita);
instance_create_layer(vx+80,vy+80,layerFlag,obj_conf1);
instance_create_layer(vx+176,vy+80,layerFlag,obj_conf2);
instance_create_layer(vx+196,vy+112,layerFlag,obj_vol);
instance_create_layer(vx+16,vy+128,layerFlag,onj_flechita_conf_2);










