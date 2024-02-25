/// @description On death, reset room.
// You can write your code in this editor
timer++;
//room auto-resets on dying
if (global.health == 0)
{
	instance_destroy(obj_player)
	nokia_play_sound(snd_restart)
	instance_create_depth(0, 0, - 100, obj_screen_wiper);
}

if keyboard_check(ord("R"))
{
	global.open = false;
	global.snowflake = 0;
}
