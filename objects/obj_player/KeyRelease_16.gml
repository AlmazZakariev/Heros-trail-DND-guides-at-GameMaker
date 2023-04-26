/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 783D3E5D
/// @DnDArgument : "obj" "obj_energu_shield"
/// @DnDSaveInfo : "obj" "obj_energu_shield"
var l783D3E5D_0 = false;
l783D3E5D_0 = instance_exists(obj_energu_shield);
if(l783D3E5D_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2608BA9A
	/// @DnDApplyTo : {obj_energu_shield}
	/// @DnDParent : 783D3E5D
	with(obj_energu_shield) instance_destroy();
}