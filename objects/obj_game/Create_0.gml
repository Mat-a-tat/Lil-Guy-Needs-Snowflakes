tick = 0; // game's frames
global.health = 3;
global.snowflake = 0; 
global.level += 1

log(string(make_color_rgb(199, 240, 216)));
log(string(make_color_rgb(67, 82, 61)));

show_debug_message("Level {0}", global.level);