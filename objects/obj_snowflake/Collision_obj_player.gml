/// @description Insert description here
// You can write your code in this editor

// play sound
sleep(40);
nokia_play_sound(sndSmash);
shake = 12;

//increase health and snowflake count
global.snowflake += 1
if global.health != global.max_health
//keeps us from 'storing' exess health and cold
{
	global.health += 1;
}
show_debug_message("Snowflakes {0}", global.snowflake);
instance_destroy()



