/// @description Damage player and transform


if place_meeting(x - freeze_range,y,obj_water_frozen)
{
	instance_change(obj_water_frozen,true)
}
if place_meeting(x + freeze_range,y,obj_water_frozen)
{
	instance_change(obj_water_frozen,true)
}
if place_meeting(x, y - 1.5,obj_player)
{
	global.health += freeze_cost;
	instance_change(obj_water_frozen,true)
}
