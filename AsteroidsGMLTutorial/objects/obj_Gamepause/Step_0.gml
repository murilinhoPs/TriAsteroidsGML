if(keyboard_check_pressed(ord("P"))){
	
paused = !paused;

}

if(paused){
pauseSpeed = speed;
pauseDirection = direction;
pauseAngle = image_angle;
speed = 0;
direction = 0;
image_angle = 0;
}else{
pauseSpeed = pauseSpeed;
pauseDirection = pauseDirection;
pauseAngle = image_angle;
}