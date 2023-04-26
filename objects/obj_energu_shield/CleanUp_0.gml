/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 75727974
/// @DnDArgument : "var" "shield_loop"
/// @DnDArgument : "not" "1"
if(shield_loop != undefined)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7AC15867
	/// @DnDParent : 75727974
	/// @DnDArgument : "soundid" "shield_loop"
	audio_stop_sound(shield_loop);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 356AC1E2
/// @DnDArgument : "soundid" "snd_shield_deactivate"
/// @DnDSaveInfo : "soundid" "snd_shield_deactivate"
audio_play_sound(snd_shield_deactivate, 0, 0, 1.0, undefined, 1.0);