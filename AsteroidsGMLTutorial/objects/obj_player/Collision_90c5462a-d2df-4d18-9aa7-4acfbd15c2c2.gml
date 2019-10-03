lives -= 1;

instance_destroy();

with (obj_master)
{
	alarm[1] = room_speed;
}
   
repeat(irandom_range(3, 10))
{
	instance_create_layer(x, y, "Instances", obj_debris);
}
