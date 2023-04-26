/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0591E80D
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l0591E80D_0 = false;
l0591E80D_0 = instance_exists(obj_player);
if(l0591E80D_0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DE14BC6
	/// @DnDInput : 4
	/// @DnDParent : 0591E80D
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_distance"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "obj_player.x"
	/// @DnDArgument : "arg_3" "obj_player.y"
	var distance = point_distance(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DF980AA
	/// @DnDParent : 0591E80D
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "not" "1"
	if(!(distance == 0))
	{
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 66B4A4A5
		/// @DnDParent : 4DF980AA
		/// @DnDArgument : "sound" "fly_sound"
		/// @DnDArgument : "volume" "50/distance"
		audio_sound_gain(fly_sound, 50/distance, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2BF9975F
	/// @DnDParent : 0591E80D
	else
	{
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 4F9A49F0
		/// @DnDParent : 2BF9975F
		/// @DnDArgument : "sound" "fly_sound"
		/// @DnDArgument : "volume" "50"
		audio_sound_gain(fly_sound, 50, 0);
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 04A4B0E6
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "value" "x - xprevious"
var x_movement = x - xprevious;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68E92AAB
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "op" "1"
if(x_movement < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6C0DDC67
	/// @DnDParent : 68E92AAB
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 26927807
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 61F90468
	/// @DnDParent : 26927807
	image_xscale = 1;
	image_yscale = 1;
}