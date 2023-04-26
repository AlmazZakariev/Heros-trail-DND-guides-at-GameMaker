/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7CD65CF3
/// @DnDApplyTo : chest_to_open
with(chest_to_open) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 133353BA
	/// @DnDParent : 7CD65CF3
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "locked"
	locked = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 702E4AAA
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 6834539C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FFFFE48E"
effect_create_above(7, x + 0, y + 0, 1, $FFFFE48E & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 262B6C78
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "snd_powerup"
audio_play_sound(snd_powerup, 0, 0, 1.0, undefined, 1.0);