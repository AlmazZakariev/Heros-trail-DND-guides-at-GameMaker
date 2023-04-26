/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 643E03CA
/// @DnDArgument : "var" "pause"
/// @DnDArgument : "value" "false"
if(pause == false)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7C75E6C1
	/// @DnDParent : 643E03CA
	/// @DnDArgument : "var" "camera_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera"
	var camera_x = camera_get_view_x(view_camera);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 719179B7
	/// @DnDParent : 643E03CA
	/// @DnDArgument : "var" "camera_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera"
	var camera_y = camera_get_view_y(view_camera);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 04A33E72
	/// @DnDParent : 643E03CA
	/// @DnDArgument : "xpos" "camera_x"
	/// @DnDArgument : "ypos" "camera_y"
	/// @DnDArgument : "var" "pause_seq"
	/// @DnDArgument : "sequenceid" "seq_pause_menu"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
	pause_seq = layer_sequence_create("GUI", camera_x, camera_y, seq_pause_menu);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 053EBA24
	/// @DnDParent : 643E03CA
	/// @DnDArgument : "function" "instance_deactivate_all"
	/// @DnDArgument : "arg" "true"
	instance_deactivate_all(true);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02DC6866
	/// @DnDParent : 643E03CA
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "pause"
	pause = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B6BC9D2
else
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 25B42CE1
	/// @DnDParent : 5B6BC9D2
	/// @DnDArgument : "var" "pause_seq"
	layer_sequence_destroy(pause_seq);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 61EF68CC
	/// @DnDParent : 5B6BC9D2
	/// @DnDArgument : "function" "instance_activate_all"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53250F22
	/// @DnDParent : 5B6BC9D2
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pause"
	pause = false;
}