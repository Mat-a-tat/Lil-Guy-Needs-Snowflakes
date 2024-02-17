var _keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _keyright = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _keyjump = keyboard_check(vk_up) or keyboard_check(ord("W"));

//horizontal and vertical speeds
hsp = (_keyright - _keyleft) * hsp_walk;
vsp += grav;

//Jump checker
if (can_jump --> 0) and (_keyjump)
{
	vsp = vsp_jump * size_mod;
	can_jump = 0
}

// Collision
if (place_meeting (x + hsp,y, obj_wall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp,y,obj_wall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_wall))
{
	// how ever long coyote time is
	if (vsp > 0) can_jump = cyote_time;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, obj_wall)) y += vsp;
	}
	vsp = 0;
}

y += vsp