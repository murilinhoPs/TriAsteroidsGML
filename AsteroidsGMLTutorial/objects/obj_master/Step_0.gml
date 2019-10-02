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
//if score >= 1000
//    {
//    room_goto(rm_win);
//    }
if (lives <= 0)
    {
    room_goto(rm_lose);
	lives = 1;
    }
}
