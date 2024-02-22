// Plans: Sequence plays when game starts, then moves upwards to reveal title screen.

var temp_sequence = seq_intro;
var layer_name = "Instances";

// This will run the sequence immediately in the room that this object is put in.
layer_sequence_create(layer_name, 0, 0, temp_sequence);
