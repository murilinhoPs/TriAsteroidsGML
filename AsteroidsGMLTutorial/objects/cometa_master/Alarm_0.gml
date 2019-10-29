/// @description Add speed

var xx = choose(544, 480, 864, 928);
var yy = choose(-128, -160, -416);


var inst = instance_create_layer(xx, yy, "cometas", obj_cometa);

inst.speed = random_range(7,11);
inst.direction = 225;
	
alarm[0] = 10 * room_speed;


//alarm[0] = 10;