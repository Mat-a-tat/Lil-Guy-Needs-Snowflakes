/// @description Moves to next room
// You can write your code in this editor
if (sprite_index == spr_door_open_big) && ((obj_player.sprite_index == spr_player_big) || (obj_player.sprite_index == spr_player_med) || (obj_player.sprite_index == spr_player_small))
{
	room_goto_next()
}

