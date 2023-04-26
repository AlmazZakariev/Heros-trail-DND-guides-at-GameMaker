/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C766D64
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 3FD063F6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF00D8FF"
effect_create_above(3, x + 0, y + 0, 0, $FF00D8FF & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 13BD2706
/// @DnDArgument : "soundid" "snd_coin"
/// @DnDSaveInfo : "soundid" "snd_coin"
audio_play_sound(snd_coin, 0, 0, 1.0, undefined, 1.0);