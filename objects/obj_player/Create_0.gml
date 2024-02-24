//nokia_play_sound(sndIntro);

global.health = 3;
global.max_health = 3;
grav = .1;
hsp = 0;
vsp = 0;
hsp_walk = .5;  
vsp_jump = -1.5;
can_jump = 0;
// how many frames we can be off a platform before we fall
coyote_time = 5;
size_mod = 1;

#region Solid Objects

solid_objects = ds_list_create();
ds_list_add(solid_objects, obj_wall);
ds_list_add(solid_objects, obj_water_frozen);
ds_list_add(solid_objects, obj_vent_left_frozen);
ds_list_add(solid_objects, obj_vent_right_frozen);

#endregion

