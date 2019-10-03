#region Pause
if(keyboard_check_pressed(ord("P"))){
	
paused = !paused;

}

if(paused){
  instance_deactivate_all(1);
}
else{
  instance_activate_all();
}
#endregion

if room == rm_game
{
if score >= 500
 {
	    audio_play_sound(snd_win, 1, false);
		room_goto(rm_win);
 }
if (lives <= 0)
 {
		audio_play_sound(snd_lose, 1, false);
	    room_goto(rm_lose);
		lives = 1;
 }
}

if(keyboard_check(ord("R")))
{
	audio_stop_sound(msc_song);
	room_restart();
}

if(keyboard_check(ord("M")))
{
	room_goto(rm_start);
}