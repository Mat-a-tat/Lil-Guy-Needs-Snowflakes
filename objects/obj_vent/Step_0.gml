/// @description Hurt player, transform. 
// You can write your code in this editor

/*
//to test: do we want larger objects to cost more to freeze?
if image_xscale == 2
{
	freeze_cost = 2;
*/
if place_meeting(x + freeze_range, y,obj_player)
{
	instance_change(obj_vent_right_frozen,true)
	nokia_play_sound(snd_hurt);
	global.health += freeze_cost;
}
if place_meeting(x - freeze_range, y,obj_player)
{
	instance_change(obj_vent_left_frozen,true)
	nokia_play_sound(snd_hurt);
	global.health += freeze_cost;
}

if place_meeting(x + freeze_range, y,obj_cube)
{
	instance_change(obj_vent_right_frozen,true)
	nokia_play_sound(snd_cube_hurt);
	global.cube_health += freeze_cost;
}
if place_meeting(x - freeze_range, y,obj_cube)
{
	instance_change(obj_vent_left_frozen,true)
	nokia_play_sound(snd_cube_hurt);
	global.cube_health += freeze_cost;
}
