/// @description On death, reset room.
// You can write your code in this editor
timer++;

if (keyboard_check(ord("R")) && (room != rm_title) && (room != rm_credit) && !(instance_exists(obj_screen_wiper)))
{
	instance_create_depth(0, 0, - 100, obj_screen_wiper);
	global.open = false;
	global.snowflake = 0;
	
}

//room auto-resets on dying
if (global.health == 0)
{
	global.open = false;
	global.snowflake = 0;
	instance_destroy(obj_player)
	nokia_play_sound(snd_restart)
	room_goto(room)
}



