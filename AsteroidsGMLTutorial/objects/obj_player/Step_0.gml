move_wrap(true,true,sprite_width/2);

if(keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	image_angle += 5;
}
if(keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	image_angle -= 5;
}

if (keyboard_check(vk_up)|| keyboard_check(ord("W")))
{
    motion_add(image_angle, 0.04);
}

if (keyboard_check(vk_down)|| keyboard_check(ord("S")))
{
	if(speed > 0)
	  speed -= 0.025;
	else
	{
		//motion_set(-image_angle, 0);
		speed = 0;
	}
	
}

if(keyboard_check_pressed(vk_space))
{
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);

    inst.direction = image_angle;
	inst.speed = 6.5;
	
}


