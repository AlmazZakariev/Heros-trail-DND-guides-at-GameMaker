/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7725EE75
/// @DnDArgument : "var" "powerup_active"
/// @DnDArgument : "value" "false"
if(powerup_active == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EFFBFDA
	/// @DnDParent : 7725EE75
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "powerup_active"
	powerup_active = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 211A879F
	/// @DnDParent : 7725EE75
	/// @DnDArgument : "expr" "default_move_speed*2"
	/// @DnDArgument : "var" "move_speed"
	move_speed = default_move_speed*2;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1087FC79
	/// @DnDParent : 7725EE75
	/// @DnDArgument : "speed" "2"
	image_speed = 2;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0A1FE818
	/// @DnDParent : 7725EE75
	/// @DnDArgument : "steps" "180"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 180);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 673F4514
	/// @DnDApplyTo : other
	/// @DnDParent : 7725EE75
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0BAD5F14
		/// @DnDParent : 673F4514
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 67A818ED
		/// @DnDParent : 673F4514
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "2"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FF7FFF81"
		effect_create_above(2, x + 0, y + 0, 1, $FF7FFF81 & $ffffff);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 31CB5381
		/// @DnDParent : 673F4514
		/// @DnDArgument : "soundid" "snd_powerup"
		/// @DnDSaveInfo : "soundid" "snd_powerup"
		audio_play_sound(snd_powerup, 0, 0, 1.0, undefined, 1.0);
	}
}