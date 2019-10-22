switch (room)
{
	case rm_start:
		draw_text_color(x, y - 10, ">>PRESS HERE OR ENTER TO PLAY!!<<", c_white,c_white,c_white,c_white,1);
	break;
	
	case rm_game:
		return;
	break;
	
	case rm_win:
		draw_rectangle_color(192, 300, 288, 330, c_silver,c_silver,c_silver,c_silver,0);
		draw_text_color(240, 305, "Menu!", c_black,c_black,c_black,c_black,1);
	break;
	
	case rm_lose:
		draw_rectangle_color(192, 300, 288, 330, c_silver,c_silver,c_silver,c_silver,0);
		draw_text_color(240, 305, "Menu!", c_black,c_black,c_black,c_black,1);
	break;
}