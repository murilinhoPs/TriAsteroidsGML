// pass trough
move_wrap(true,true,sprite_width/2);

if(speed > 1.5) // limit speed
	speed = 1.5;
	
#region mobile

var angle = point_direction(0, 0, obj_Analog.analogMoveX, obj_Analog.analogMoveY);

	if(obj_Analog.analogMoveX != 0 || obj_Analog.analogMoveX != 0)
	{
		motion_add(image_angle, 0.02);
		image_angle = lerp(image_angle, angle, 0.1);
	}
	
#endregion
	
#region PC

var delta_x = keyboard_check((vk_right)) - keyboard_check((vk_left));
var delta_y = keyboard_check((vk_down)) - keyboard_check((vk_up));

var angle2 = point_direction(0, 0, delta_x, delta_y);

if(delta_x != 0 ||delta_y != 0 || obj_Analog.analogMoveX != 0 || obj_Analog.analogMoveX != 0)
{
	moving = true;

}	
else if(obj_Analog.analogMoveX == 0 || obj_Analog.analogMoveX == 0 || delta_x == 0 || delta_y == 0)
	moving = false;
	
	
if(moving)
{
	sprite_index = spr_pl_anim;	
	image_speed = 1;
}
else 
	sprite_index = sprite_player;

	#region movementPc
	if(-delta_x)
	{
	     image_angle = lerp(image_angle, angle2, 0.1);
		 motion_add(image_angle, 0.025);	
	}
	if(delta_x)
	{
		 image_angle = lerp(image_angle, angle2, 0.1);
		 motion_add(image_angle, 0.025);
	}

	if (-delta_y)
	{
		image_angle = lerp(image_angle, angle2, 0.1);
	    motion_add(image_angle, 0.025);
	}

	if (delta_y)
	{
		 image_angle = lerp(image_angle, angle2, 0.1);
		 motion_add(image_angle, 0.025);
	}

	//if(keyboard_check_released(vk_anykey))
	//	sprite_index = sprite_player;
	#endregion
	
#endregion