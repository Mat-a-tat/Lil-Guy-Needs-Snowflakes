// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_size(){
	if (global.health = 3)
	{
		sprite_index = spr_player_big;
		show_debug_message("checking big");
	}
	else if (global.health = 2)
	{
		sprite_index = spr_player_med;
		show_debug_message("checking med");
	}
	else if (global.health = 1)
	{
		sprite_index = spr_player_small;
		show_debug_message("checking small");
	}
}

// psuedo code
// Link health with size states (aka sprites)
// Create array of each state? (to include all animations)
// if health = size state big 

// psuedo code
// if player health = 1
//	then sprite = small
// else if player health = 2
//	 then sprite = med
// else if player health = 3
//	then sprite = big