switch (room)
{
	case rm_start:
		room_goto_next();
		lives = 5;
		score = 0;
	break;
	
	case rm_game:
	break;
	
	case rm_win:
		room_goto(rm_start);
	break;
	
	case rm_lose:
		room_goto(rm_start);
	break;
}