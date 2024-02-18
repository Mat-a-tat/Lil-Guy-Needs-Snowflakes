/// @description Insert description here
// You can write your code in this editor

if place_meeting(x - freeze_range,y,obj_water_frozen)
{
	instance_change(obj_water_frozen,true)
}
if place_meeting(x + freeze_range,y,obj_water_frozen)
{
	instance_change(obj_water_frozen,true)
}
if place_meeting(x, y - 2,obj_player)
{
	global.health += freeze_cost;
	instance_change(obj_water_frozen,true)
}
