///@param sound
function nokia_play_sound() {

	/*

	Nokia sounds all override eachother
	So uh this basically plays the sound and stops all others

	*/

	audio_stop_all();
	audio_play_sound(argument[0], 100, false);


}
