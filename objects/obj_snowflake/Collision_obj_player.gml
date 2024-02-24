/// @description Increase health, and count.

//increase health and snowflake count
instance_destroy()
global.snowflake += 1
nokia_play_sound(snd_pickup);
if global.health != global.max_health
//keeps us from 'storing' exess health and cold
{
	global.health += 1;
}
show_debug_message("Snowflakes {0}", global.snowflake);



