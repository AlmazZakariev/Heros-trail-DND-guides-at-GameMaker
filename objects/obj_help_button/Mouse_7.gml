/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 763A2E00
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6DE91B08
/// @DnDArgument : "obj" "obj_help_close"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_help_close"
var l6DE91B08_0 = false;
l6DE91B08_0 = instance_exists(obj_help_close);
if(!l6DE91B08_0)
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 0BE3C822
	/// @DnDParent : 6DE91B08
	/// @DnDArgument : "var" "global.help_popup"
	/// @DnDArgument : "sequenceid" "seq_help_window"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "sequenceid" "seq_help_window"
	global.help_popup = layer_sequence_create("GUI", 0, 0, seq_help_window);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 564BE59E
	/// @DnDApplyTo : {obj_button_parent}
	/// @DnDParent : 6DE91B08
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1000"
	/// @DnDArgument : "y_relative" "1"
	with(obj_button_parent) {
	x += 0;
	y += 1000;
	}
}