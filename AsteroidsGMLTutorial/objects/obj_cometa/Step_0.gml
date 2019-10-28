/// @description Verify screen bounds
move_wrap(true, true,sprite_width);

if(alarm[0] <= 0)
{
	speed = random_range(7,11);
	direction = 225;
	alarm[0] = room_speed * 6;
}
