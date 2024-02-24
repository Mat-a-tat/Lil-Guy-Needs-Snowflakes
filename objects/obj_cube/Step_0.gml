/// @description Insert description here
// You can write your code in this editor

if place_meeting(obj_player.bbox_right - 3.7, y, obj_player)
{
	x += 1
}
if place_meeting(obj_player.bbox_right + 3.7, y, obj_player)
{
	x += -1
	
}
#region Health Calcuation
if global.cube_health == 3
{
	sprite_index = spr_player_big;
}
if global.cube_health == 2
{
	sprite_index = spr_player_med;
}
if global.cube_health == 1
{
	sprite_index = spr_player_small;
}
if global.cube_health == 0
{
	instance_destroy()
}
#endregion






