var _keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _keyright = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _keyjump = keyboard_check(vk_up) or keyboard_check(ord("W"));

//horizontal and vertical speeds
hsp = (_keyright - _keyleft) * hsp_walk;
vsp += grav;

//todo, size changer

//Jump checker
if (can_jump --> 0) and (_keyjump)
{
	vsp = vsp_jump * size_mod;
	can_jump = 0;
}

// Horizontal collision
var i;
for (i = 0; i < ds_list_size(solid_objects); i++) {
    if (place_meeting(x + hsp, y, solid_objects[| i])) {
        while (abs(hsp) > 0.1) {
            hsp *= 0.5;
            if (!place_meeting(x + hsp, y, solid_objects[| i])) x += hsp;
        }
        hsp = 0;
    }
}
x += hsp;

// Vertical colision
for (i = 0; i < ds_list_size(solid_objects); i++) {
    if (place_meeting(x, y + vsp, solid_objects[| i])) {
        // How ever long coyote time is in create
        if (vsp > 0) can_jump = coyote_time;
        while (abs(vsp) > 0.1) {
            vsp *= 0.5;
            if (!place_meeting(x, y + vsp, solid_objects[| i])) y += vsp;
			//this lets us jump even if we get stuck in objects
			if (place_meeting(x, y, solid_objects[| i])) y += vsp;
        }
        vsp = 0;
    }
}

y += vsp;

if (y > 100)
{
	global.health = 0;
}

//show_debug_message("Y Cordinate {0}", y);
//show_debug_message("Health {0}", global.health);