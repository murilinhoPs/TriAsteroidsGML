if (room == rm_game)
{
	repeat(irandom_range(6, 10))
	{
		//Sò vai spawnar em x e y do 0 a 3 parte da tela ou da parte 7 até o final
		// para nao spawnar na cara do player
		var xx = choose(irandom_range(0, room_width * 0.3), 
		irandom_range(room_width * 0.7, room_width));	
		var yy = choose(irandom_range(0, room_height * 0.3), 
		irandom_range(room_height * 0.7, room_height));
		
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
	alarm[0] = 60;
}