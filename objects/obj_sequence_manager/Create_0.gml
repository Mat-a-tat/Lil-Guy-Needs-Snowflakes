// Sequence plays before the title screen, then moves upwards to reveal title screen.

var temp_sequence = seq_intro;
// Gets the unique ID of this layer so that the sequence will play on top of the title screen
var layer_name = layer_get_id("instances_sequence");

// This will run the sequence immediately in the room that this object is put in.
layer_sequence_create(layer_name, 0, 0, temp_sequence);
