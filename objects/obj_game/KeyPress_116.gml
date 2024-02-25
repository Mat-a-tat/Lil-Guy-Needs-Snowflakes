// debug reset and fix blurry graphics

	if gpu_get_texfilter()
	{
	    gpu_set_texfilter(false);
	}
	else
	{
	    gpu_set_texfilter(true);
	}

game_restart();