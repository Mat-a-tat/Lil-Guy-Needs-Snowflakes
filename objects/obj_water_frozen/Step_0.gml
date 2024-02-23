/// @description Transform touching water

//the collision to .5 to see the magic happen.
//the magic being a mess.
if place_meeting(x+.49,y,obj_water)
{
	instance_destroy(other);
	instance_create_layer(x+.49, y, "Instances", obj_water_frozen);
}

