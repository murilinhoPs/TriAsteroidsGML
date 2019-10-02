lives -= 1;

instance_destroy();
   
repeat(irandom_range(3, 10))
{
	instance_create_layer(x, y, "Instances", obj_debris);
}
