if(room == rm_start)
{
	if (mute)
	{
		image_index = 1;
		audio_master_gain(0)
	}
	else if(!mute)
	{
		image_index = 0;
		audio_master_gain(1);
	}
}