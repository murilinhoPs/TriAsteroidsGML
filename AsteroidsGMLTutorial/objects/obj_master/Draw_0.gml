draw_set_font(font_text);

switch (room)
{
case rm_start:
	draw_set_halign(fa_center);
	var color = c_white;
    draw_text_transformed_color(room_width/2, 100, 
	"Asteroids GML", 3, 3, 0,color,color,color,color,1);
	
	draw_text(room_width/2, 200, 
@"Consiga 1,000 pontos para ganhar!

W: mover
A/D: virar
S: parar
SPACE: atirar

>>PRESSIONE ENTER PARA JOGAR<<");
	break;
	
	case rm_game:
		draw_text(50, 10, "Pontos: " + string(score));
		draw_text(50, 30, "Vidas:  " + string(lives));      	
	break;
	
	case rm_win:
	break;
	
	case rm_lose:
	draw_set_halign(fa_center);
	var color = c_red;
	 draw_text_transformed_color(room_width/2, 100, 
	"Game Over", 3, 3, 0,color,color,color,color,1);	
    draw_text(room_width/2, 200, ">>PRESSIONE ENTER PARA VOLTAR!<<");
	break;
	
}

if(paused)
   draw_text(220,250, "Pause!");
else
   draw_text(0,0, " ");
   
   get_timer();