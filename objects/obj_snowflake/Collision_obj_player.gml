/// @description Increase health, and count.

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

// Test for adjusting player size
set_player_size()

show_debug_message("Snowflakes {0}", global.snowflake);
instance_destroy()



