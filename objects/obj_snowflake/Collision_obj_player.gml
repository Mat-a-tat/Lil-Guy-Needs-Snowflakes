/// @description Increase health, and count.

//increase health and snowflake count
instance_destroy()
global.snowflake += 1
//current nonfunction differation of sound
if global.open == true
{
	nokia_play_sound(snd_door_open);
}
if global.open == false
{
	nokia_play_sound(snd_pickup);
}
if global.health != global.max_health
//keeps us from 'storing' exess health and cold
{
	global.health += 1;
}
show_debug_message("Snowflakes {0}", global.snowflake);



