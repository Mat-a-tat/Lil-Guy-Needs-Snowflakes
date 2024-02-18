nokia_play_sound(sndIntro);

grav = .1;
hsp = 0;
vsp = 0;
hsp_walk = .5;  
vsp_jump = -1.5;
can_jump = 0;
coyote_time = 5;
size_mod = 1;
global.health = 100;

// now to our solid objects

solid_objects = ds_list_create();
ds_list_add(solid_objects, obj_wall);
ds_list_add(solid_objects, obj_water_frozen);
