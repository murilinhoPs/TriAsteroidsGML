move_wrap(true,true,sprite_width/2);

var angle = point_direction(0, 0, obj_Analog.analogMoveX, obj_Analog.analogMoveY);


if(obj_Analog.analogMoveX != 0 || obj_Analog.analogMoveX != 0)
{
	motion_add(image_angle, 0.02);
	image_angle = lerp(image_angle, angle, 0.1);
}

if(speed > 1.5)
	speed = 1.5;
	
#region Obsolete (pec)

var delta_x = keyboard_check((vk_right)) - keyboard_check((vk_left));
var delta_y = keyboard_check((vk_down)) - keyboard_check((vk_up));

var angle2 = point_direction(0, 0, delta_x, delta_y);

if(keyboard_check(vk_left))
{
	//image_angle += 5;
     image_angle = lerp(image_angle, angle2, 0.1);
	 motion_add(image_angle, 0.025);
	
}
if(keyboard_check(vk_right))
{
	//image_angle -= 5;
	 image_angle = lerp(image_angle, angle2, 0.1);
	 motion_add(image_angle, 0.025);
}

if (keyboard_check(vk_up))
{
	image_angle = lerp(image_angle, angle2, 0.1);
    motion_add(image_angle, 0.025);
}

if (keyboard_check(vk_down))
{
	 image_angle = lerp(image_angle, angle2, 0.1);
	 motion_add(image_angle, 0.025);
}

//if(keyboard_check_pressed(vk_space))
//{
//	var inst = instance_create_layer(x, y, "Instances", obj_bullet);

//    inst.direction = image_angle;
//	inst.speed = 6.5;
	
//}
#endregion

