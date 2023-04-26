/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 4B507CF5
room_goto_next();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7AFB7706
/// @DnDArgument : "soundid" "snd_finish_level"
/// @DnDSaveInfo : "soundid" "snd_finish_level"
audio_play_sound(snd_finish_level, 0, 0, 1.0, undefined, 1.0);