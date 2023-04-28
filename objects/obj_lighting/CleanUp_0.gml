/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 57FBA198
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "surface_exists"
/// @DnDArgument : "arg" "surf"
var _exists = surface_exists(surf);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F3C7249
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "value" "true"
if(_exists == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 647C183B
	/// @DnDParent : 5F3C7249
	/// @DnDArgument : "function" "surface_free"
	/// @DnDArgument : "arg" "surf"
	surface_free(surf);
}