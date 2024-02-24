/// @description Insert description here
// You can write your code in this editor
tick++;
//room auto-resets on dying
if (global.health == 0)
{
	nokia_play_sound(snd_restart)
	room_goto(room);
}

