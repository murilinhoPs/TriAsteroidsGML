instance_destroy();

with (other)
{
	instance_destroy();
	
	audio_play_sound(snd_die, 1, false);
	
	#region DuplicadeAsteroids
	if(sprite_index == spr_asteroid_L)
	{
		score += 10;
		
		repeat(2)
		{			
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_M;			
		}
	}
	if(sprite_index == spr_asteroid_M)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_s;		
			
		}
		score += 5;
	}
	if(sprite_index == spr_asteroid_s)
	{
		score += 2;
	}
	
	#endregion
	
	#region CreateDebris
	
	repeat(irandom_range(3, 10))
	{
		instance_create_layer(x, y, "Instances", obj_debris);
	}
			
	#endregion
}
