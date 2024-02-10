/// @description sleep(ms);
/// @param ms
function sleep(argument0) {
	var t = current_time + argument0;

	// This simulates lag!

	while (current_time < t) { }


}
