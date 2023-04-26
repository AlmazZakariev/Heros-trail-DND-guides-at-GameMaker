/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 36AF8425
/// @DnDArgument : "obj" "obj_energu_shield"
/// @DnDSaveInfo : "obj" "obj_energu_shield"
var l36AF8425_0 = false;
l36AF8425_0 = instance_exists(obj_energu_shield);
if(l36AF8425_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 060DB151
	/// @DnDParent : 36AF8425
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shield_energy"
	shield_energy += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D94CB2D
	/// @DnDParent : 36AF8425
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "3"
	if(shield_energy <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 743155F4
		/// @DnDApplyTo : {obj_energu_shield}
		/// @DnDParent : 0D94CB2D
		with(obj_energu_shield) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B512373
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3757DF78
	/// @DnDParent : 3B512373
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(shield_energy < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51A5610C
		/// @DnDParent : 3757DF78
		/// @DnDArgument : "expr" "0.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "shield_energy"
		shield_energy += 0.2;
	}
}