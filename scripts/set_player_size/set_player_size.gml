function set_player_size(){
	if (global.health = 3)
	{
		sprite_index = spr_player_big;
	}
	else if (global.health = 2)
	{
		sprite_index = spr_player_med;
	}
	else if (global.health = 1)
	{
		sprite_index = spr_player_small;
	}
}