if(room != rm_game)
	exit;

// Spawnaer nos eixos x e y da mesma forma
if( choose(0,1) == 0)
 {
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
 }
else
 {
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
 }
 
instance_create_layer(xx, yy, "Instances", obj_asteroid);

alarm[0] = room_speed * 10;