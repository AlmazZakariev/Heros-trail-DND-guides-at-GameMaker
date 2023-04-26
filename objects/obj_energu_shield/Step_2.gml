/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3CF7B00B
/// @DnDArgument : "obj" "obj_energu_shield"
/// @DnDSaveInfo : "obj" "obj_energu_shield"
var l3CF7B00B_0 = false;
l3CF7B00B_0 = instance_exists(obj_energu_shield);
if(l3CF7B00B_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1CB44D64
	/// @DnDParent : 3CF7B00B
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	x = obj_player.x;
	y = obj_player.y;
}