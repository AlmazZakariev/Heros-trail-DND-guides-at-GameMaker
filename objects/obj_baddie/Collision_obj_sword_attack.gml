/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2E84D960
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 31D284BF
/// @DnDArgument : "var" "seq_layer"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "layer_create"
/// @DnDArgument : "arg" "depth"
var seq_layer = layer_create(depth);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 43411DFE
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_baddie_defeat"
/// @DnDArgument : "layer" "seq_layer"
/// @DnDSaveInfo : "sequenceid" "seq_baddie_defeat"
layer_sequence_create(seq_layer, x + 0, y + 0, seq_baddie_defeat);