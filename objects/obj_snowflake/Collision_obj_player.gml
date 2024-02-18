/// @description Insert description here
// You can write your code in this editor

// play sound
sleep(40);
nokia_play_sound(sndSmash);
shake = 12;

//increase health and snowflake count
global.snowflake += 1
global.health += 10
show_debug_message("Snowflakes {0}", global.snowflake);
instance_destroy()



