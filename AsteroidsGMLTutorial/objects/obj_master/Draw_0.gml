draw_set_font(font_text);

switch (room)
{
case rm_start:
	draw_set_halign(fa_center);
	var color = c_white;
    draw_text_transformed_color(room_width/2, 100, 
	"Asteroids GML", 3, 3, 0,color,color,color,color,1);
	
	draw_text(room_width/2, 200, 
@"Consiga 500 pontos para ganhar!

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
	draw_set_halign(fa_center);
	var color = c_green;
	 draw_text_transformed_color(room_width/2, 100, 
	"Obrigado por jogar!!!", 3, 3, 0,color,color,color,color,1);	
    draw_text_color(room_width/2, 200, ">>PRESSIONE ENTER PARA VOLTAR AO MENU!<<", 
	c_black, c_black, c_black, c_black, 1);
	break;
	
	case rm_lose:
	draw_set_halign(fa_center);
	var color = c_red;
	 draw_text_transformed_color(room_width/2, 100, 
	"Game Over", 3, 3, 0,color,color,color,color,1);	
    draw_text_color(room_width/2, 200, ">>PRESSIONE ENTER PARA JOGAR NOVAMENTE!<<", 
	c_black, c_black, c_black, c_black, 1);
	break;
}

if(paused)
   draw_text(220,250, "Pause!");
else
   draw_text(0,0, " ");
  
 
   
   