/// @description Fly off screen after some time.
timer += 1;
if timer > 100
{
	//stop it from bobbing up and down
	image_speed = 0;
	y -= .2;
}



