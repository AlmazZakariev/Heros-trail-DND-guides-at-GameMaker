/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 67D8B0A4
/// @DnDArgument : "obj" "obj_energu_shield"
/// @DnDSaveInfo : "obj" "obj_energu_shield"
var l67D8B0A4_0 = false;
l67D8B0A4_0 = instance_exists(obj_energu_shield);
if(l67D8B0A4_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2FB19821
	/// @DnDParent : 67D8B0A4
	exit;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 757FE876
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "sword"
/// @DnDArgument : "objectid" "obj_sword_attack"
/// @DnDSaveInfo : "objectid" "obj_sword_attack"
sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D4B4BFD
/// @DnDArgument : "expr" "input_direction"
/// @DnDArgument : "var" "sword.image_angle"
sword.image_angle = input_direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 7822C6B3
image_speed = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 66577FF4
/// @DnDArgument : "soundid" "snd_sword_swing"
/// @DnDSaveInfo : "soundid" "snd_sword_swing"
audio_play_sound(snd_sword_swing, 0, 0, 1.0, undefined, 1.0);