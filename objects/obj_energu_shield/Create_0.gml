/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 38DD09D4
/// @DnDArgument : "soundid" "snd_shield_activate"
/// @DnDSaveInfo : "soundid" "snd_shield_activate"
audio_play_sound(snd_shield_activate, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 10820F22
/// @DnDArgument : "target" "shield_loop"
/// @DnDArgument : "soundid" "snd_shield_loop"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_shield_loop"
shield_loop = audio_play_sound(snd_shield_loop, 0, 1, 1.0, undefined, 1.0);