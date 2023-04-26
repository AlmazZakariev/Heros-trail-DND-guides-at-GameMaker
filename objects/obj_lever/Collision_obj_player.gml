/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 56B003CD
/// @DnDArgument : "key" "ord("E")"
var l56B003CD_0;
l56B003CD_0 = keyboard_check_pressed(ord("E"));
if (l56B003CD_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EFD6A66
	/// @DnDParent : 56B003CD
	/// @DnDArgument : "var" "image_index"
	if(image_index == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B1A26F3
		/// @DnDParent : 7EFD6A66
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_index"
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 072716AA
		/// @DnDApplyTo : gate_to_open
		/// @DnDParent : 7EFD6A66
		with(gate_to_open) {
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 4221698E
			/// @DnDParent : 072716AA
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5054B8BD
			/// @DnDParent : 072716AA
			/// @DnDArgument : "soundid" "snd_lever_pull"
			/// @DnDSaveInfo : "soundid" "snd_lever_pull"
			audio_play_sound(snd_lever_pull, 0, 0, 1.0, undefined, 1.0);
		}
	}
}