var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _horiz = _right - _left
var _vert = _down - _up
move_dir = point_direction(0,0,_horiz, _vert);

// setting and normalizing x and y speeds
var _speed = 0
var _input_level = point_distance( 0, 0, _horiz, _vert);
_input_level = clamp(_input_level, 0 ,1);
_speed = move_speed * _input_level;

var _xspeed = lengthdir_x(_speed, move_dir) * speed_perc;
var _yspeed = lengthdir_y(_speed, move_dir) * speed_perc; 

x += _xspeed
y += _yspeed

/*
show_debug_message("Speed: " + string(_speed));
show_debug_message("X Speed: " + string(_xspeed));
show_debug_message("Y Speed: " + string(_yspeed));
/*