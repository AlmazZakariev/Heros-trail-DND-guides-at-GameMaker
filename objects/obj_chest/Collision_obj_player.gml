/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7012BBF6
/// @DnDArgument : "var" "locked"
/// @DnDArgument : "value" "true"
if(locked == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D4A7933
	/// @DnDParent : 7012BBF6
	/// @DnDArgument : "soundid" "snd_chest_locked"
	/// @DnDSaveInfo : "soundid" "snd_chest_locked"
	audio_play_sound(snd_chest_locked, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7579A900
	/// @DnDParent : 7012BBF6
	exit;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7C418F54
/// @DnDArgument : "key" "ord("E")"
var l7C418F54_0;
l7C418F54_0 = keyboard_check_pressed(ord("E"));
if (l7C418F54_0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 4CDCCB93
	/// @DnDParent : 7C418F54
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "8"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FF28B3CC"
	effect_create_above(8, x + 0, y + -20, 1, $FF28B3CC & $ffffff);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 416DF8DE
	/// @DnDParent : 7C418F54
	/// @DnDArgument : "expr" "coins_to_give"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.coins"
	obj_player.coins += coins_to_give;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B6AC6CD
	/// @DnDParent : 7C418F54
	/// @DnDArgument : "objind" "obj_chest_open"
	/// @DnDSaveInfo : "objind" "obj_chest_open"
	instance_change(obj_chest_open, true);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0184DE10
	/// @DnDParent : 7C418F54
	/// @DnDArgument : "soundid" "snd_chest_open"
	/// @DnDSaveInfo : "soundid" "snd_chest_open"
	audio_play_sound(snd_chest_open, 0, 0, 1.0, undefined, 1.0);
}