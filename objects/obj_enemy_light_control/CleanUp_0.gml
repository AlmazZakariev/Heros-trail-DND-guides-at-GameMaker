/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 270CCAEC
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "surface_exists"
/// @DnDArgument : "arg" "surf"
var _exists = surface_exists(surf);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E58D8B2
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "value" "true"
if(_exists == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 53CDD388
	/// @DnDParent : 2E58D8B2
	/// @DnDArgument : "function" "surface_free"
	/// @DnDArgument : "arg" "surf"
	surface_free(surf);
}