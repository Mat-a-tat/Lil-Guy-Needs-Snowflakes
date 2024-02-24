// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_snowflake(){

// todo: rework using case as we get multiple rooms
if (room == rm_level3) and (global.snowflake == 2) 
{
	global.open = true
}
if (room == rm_level5) and (global.snowflake == 2) 
{
	global.open = true
}

//backup statement in case we add a room and don't add it to the above list
else 
{
	if global.snowflake == 1
	{
		global.open = true
	}
	
}
}