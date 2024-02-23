<<<<<<< Updated upstream
//checks the current room and total snowflakes 
// set total amount of needed snowflakes to finish a level here
=======
/// @description Checks snowflake amounts
/// checks the current room and total snowflakes 
/// set total amount of needed snowflakes to finish a level here
>>>>>>> Stashed changes

// todo: rework using case as we get multiple rooms
if (room == rm_level1) and (global.snowflake == 1) 
{
	//show_debug_message("Door should be open.")
	sprite_index = spr_door_open
}
if (room == rm_level2) and (global.snowflake == 1) 
{
	//show_debug_message("Door should be open.")
	sprite_index = spr_door_open
}

//backup statement in case we add a room and don't add it to the above list
else 
{
	if global.snowflake == 1
	{
		sprite_index = spr_door_open
	}
	
}

