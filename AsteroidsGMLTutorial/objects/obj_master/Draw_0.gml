draw_set_font(font_text);

switch (room)
{
case rm_start:
	draw_set_halign(fa_center);
	var color = c_white;
    draw_text_transformed_color(room_width/2, 100, 
	"Tri Asteroids", 3, 3, 0,color,color,color,color,1);
	
	draw_text(room_width/2, 200, 
@"Get 150 points to win!

Arrows to move
Or
Analog to move");
	break;
	
	case rm_game:
		draw_text(50, 10, "points: " + string(score));
		draw_text(50, 30, "life:  " + string(lives));
	break;
	
	case rm_win:
	draw_set_halign(fa_center);
	var color = c_green;
	 draw_text_transformed_color(room_width/2, 100, 
	"Thanks for playing!!!", 2, 2, 0,color,color,color,color,1);	
    draw_text_color(room_width/2, 200, 
	@"Asteroids style game
Made by Trianons", 
	c_black, c_black, c_black, c_black, 1);
	break;
	
	case rm_lose:
	draw_set_halign(fa_center);
	var color = c_red;
	// Game over
	 draw_text_transformed_color(room_width/2, 100, 
	"Game Over", 3, 3, 0,color,color,color,color,1);	
	// Try again
    draw_text_color(room_width/2, 200, 
	@"Asteroids style game
Made by Trianons!
>>TRY AGAIN!<<", 
	c_black, c_black, c_black, c_black, 1);
	break;
}

//if(paused)
//   draw_text(220,250, "Pause!");
//else
//   draw_text(0,0, " ");
  
 
   
   