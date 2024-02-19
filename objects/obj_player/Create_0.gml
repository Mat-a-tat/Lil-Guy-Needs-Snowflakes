nokia_play_sound(sndIntro);

grav = .1;
hsp = 0;
vsp = 0;
hsp_walk = .5;  
vsp_jump = -1.5;
can_jump = 0;
// how many frames we can be off a platform before we fall
coyote_time = 5;
size_mod = 1;
global.health = 3;

// now to our solid objects

solid_objects = ds_list_create();
ds_list_add(solid_objects, obj_wall);
ds_list_add(solid_objects, obj_water_frozen);
