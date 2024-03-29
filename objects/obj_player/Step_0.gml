/// @description Core Mechanics
#region Size Jump Modifier

if sprite_index == spr_player_small
{
	size_mod = .2
}
if sprite_index == spr_player_med
{
	size_mod = .9
}
else
{
	size_mod = 1
}

#endregion 

#region Basic Movement
var _keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _keyright = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _keyjump = keyboard_check(vk_up) or keyboard_check(ord("W"));

//horizontal and vertical speeds
hsp = (_keyright - _keyleft) * hsp_walk;
vsp += grav;

//Jump checker
if (can_jump --> 0) and (_keyjump)
{
	nokia_play_sound(snd_jump)
	vsp = vsp_jump * size_mod;
	can_jump = 0;
}

#endregion

#region Collision
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

#endregion

#region WIP Landing Particle Effect

if effect_ready == true &&  vsp == 0
{
	draw_sprite(spr_snowflake, 1, x, y);
	effect_ready = false;
}

if vsp != 0
{
	effect_ready = true;
}

#endregion

if (y > 100)
{
	global.health = 0;
}

// Test for adjusting player size
set_player_size()