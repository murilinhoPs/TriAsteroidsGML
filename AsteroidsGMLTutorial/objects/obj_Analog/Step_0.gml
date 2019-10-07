if(device_mouse_check_button(0, mb_left))
{
	var xx = device_mouse_x(0);
	var yy = device_mouse_y(0);
	
	if(!isActive)
		{
	
		if(xx <= display_get_width() && yy >= display_get_height() / 3)
		{
			analogPosX = xx;
			analogPosY = yy ;
		}
		isActive = true;
	}
// Não está ativo
	else
		{	
			var angle = point_direction(analogPosX, analogPosY, xx, yy); // direção (angulo)
			var distance = point_distance(analogPosX, analogPosY, xx, yy); // distância entre esses pontos
			
			
			analogMoveX = dcos(angle) * min(32, distance);
			analogMoveY = -dsin(angle) * min(32, distance);
		}
}
// Não está clicando
else
{
	isActive = false;
	analogMoveX = 0; 
	analogMoveY = 0;
}