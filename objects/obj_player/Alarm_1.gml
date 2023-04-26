/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06B433F6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "powerup_active"
powerup_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 303FA1C9
/// @DnDArgument : "expr" "default_move_speed"
/// @DnDArgument : "var" "move_speed"
move_speed = default_move_speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 381E7823
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3184591A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "star_powerup_active"
star_powerup_active = false;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 64C715FA
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 73C5F09F
/// @DnDArgument : "soundid" "snd_music_rampage"
/// @DnDSaveInfo : "soundid" "snd_music_rampage"
var l73C5F09F_0 = snd_music_rampage;
if (audio_is_playing(l73C5F09F_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 698D6E86
	/// @DnDParent : 73C5F09F
	/// @DnDArgument : "soundid" "snd_music_rampage"
	/// @DnDSaveInfo : "soundid" "snd_music_rampage"
	audio_stop_sound(snd_music_rampage);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Paused
/// @DnDVersion : 1
/// @DnDHash : 4EE8E63A
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDSaveInfo : "soundid" "snd_music_game"
var l4EE8E63A_0 = snd_music_game;
if (audio_is_paused(l4EE8E63A_0))
{
	/// @DnDAction : YoYo Games.Audio.Resume_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1DA02A9E
	/// @DnDParent : 4EE8E63A
	/// @DnDArgument : "sound" "snd_music_game"
	/// @DnDSaveInfo : "sound" "snd_music_game"
	audio_resume_sound(snd_music_game);
}