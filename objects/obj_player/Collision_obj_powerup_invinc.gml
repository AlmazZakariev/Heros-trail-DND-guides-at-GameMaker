/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F252FA8
/// @DnDArgument : "var" "star_powerup_active"
/// @DnDArgument : "value" "false"
if(star_powerup_active == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1896D540
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "star_powerup_active"
	star_powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DF4FD56
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "powerup_active"
	powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E8FE5B2
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "expr" "default_move_speed*1.5"
	/// @DnDArgument : "var" "move_speed"
	move_speed = default_move_speed*1.5;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 780FB6E4
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "speed" "1.5"
	image_speed = 1.5;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 21B9486D
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "colour" "$FF00F2FF"
	image_blend = $FF00F2FF & $ffffff;
	image_alpha = ($FF00F2FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6D195793
	/// @DnDParent : 5F252FA8
	/// @DnDArgument : "steps" "300"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 300);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 75548A29
	/// @DnDApplyTo : other
	/// @DnDParent : 5F252FA8
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 434BA18E
		/// @DnDParent : 75548A29
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 3C7A1A16
		/// @DnDParent : 75548A29
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FFA3FFF1"
		effect_create_above(5, x + 0, y + 0, 1, $FFA3FFF1 & $ffffff);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 313B07D8
		/// @DnDParent : 75548A29
		/// @DnDArgument : "soundid" "snd_powerup"
		/// @DnDSaveInfo : "soundid" "snd_powerup"
		audio_play_sound(snd_powerup, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Pause_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 261BD9BB
		/// @DnDParent : 75548A29
		/// @DnDArgument : "sound" "snd_music_game"
		/// @DnDSaveInfo : "sound" "snd_music_game"
		audio_pause_sound(snd_music_game);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 20700059
		/// @DnDParent : 75548A29
		/// @DnDArgument : "soundid" "snd_music_rampage"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_music_rampage"
		audio_play_sound(snd_music_rampage, 0, 1, 1.0, undefined, 1.0);
	}
}