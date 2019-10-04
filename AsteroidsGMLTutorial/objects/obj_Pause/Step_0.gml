if(paused)
{
	image_index = 1;
	instance_deactivate_all(1);
}
else
{
	image_index = 0;
	instance_activate_all();
}