/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17682455
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_hearts"
if(hearts < max_hearts)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E7F486E
	/// @DnDParent : 17682455
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 01EC531A
	/// @DnDApplyTo : other
	/// @DnDParent : 17682455
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 43857B9D
		/// @DnDParent : 01EC531A
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 0CD47E08
		/// @DnDParent : 01EC531A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "3"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FF3A3AFF"
		effect_create_above(3, x + 0, y + 0, 1, $FF3A3AFF & $ffffff);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3079EBB5
		/// @DnDParent : 01EC531A
		/// @DnDArgument : "soundid" "snd_powerup"
		/// @DnDSaveInfo : "soundid" "snd_powerup"
		audio_play_sound(snd_powerup, 0, 0, 1.0, undefined, 1.0);
	}
}