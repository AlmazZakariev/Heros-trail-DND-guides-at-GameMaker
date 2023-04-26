/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50193507
/// @DnDArgument : "var" "shield_energy"
/// @DnDArgument : "op" "2"
if(shield_energy > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D3CA0B0
	/// @DnDParent : 50193507
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_energu_shield"
	/// @DnDSaveInfo : "objectid" "obj_energu_shield"
	instance_create_layer(x + 0, y + 0, "Instances", obj_energu_shield);
}