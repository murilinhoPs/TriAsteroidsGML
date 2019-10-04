move_wrap(true,true,sprite_width/2);

var angle = point_direction(0, 0, obj_Analog.analogMoveX, obj_Analog.analogMoveY);


motion_add(image_angle, 0.025);
if(obj_Analog.analogMoveX != 0 || obj_Analog.analogMoveX != 0)
	image_angle = lerp(image_angle, angle, 0.1);

if(speed > 2.3)
	speed = 2.3;
	
#region Obsolete (pec)

//var delta_x = //keyboard_check((vk_right)) - keyboard_check((vk_left));
//var delta_y = //keyboard_check((vk_down)) - keyboard_check((vk_up));

//if(keyboard_check(vk_left))
//{
//	//image_angle += 5;
//     image_angle = lerp(image_angle, angle, 0.1);
//	 motion_add(image_angle, 0.025);
	
//}
//if(keyboard_check(vk_right))
//{
//	//image_angle -= 5;
//	 image_angle = lerp(image_angle, angle, 0.1);
//	 motion_add(image_angle, 0.025);
//}

//if (keyboard_check(vk_up))
//{
//	image_angle = lerp(image_angle, angle, 0.1);
//    motion_add(image_angle, 0.025);
//}

//if (keyboard_check(vk_down))
//{
//	 image_angle = lerp(image_angle, angle, 0.1);
//	 motion_add(image_angle, 0.025);
//}

//if(keyboard_check_pressed(vk_space))
//{
//	var inst = instance_create_layer(x, y, "Instances", obj_bullet);

//    inst.direction = image_angle;
//	inst.speed = 6.5;
	
//}
#endregion

