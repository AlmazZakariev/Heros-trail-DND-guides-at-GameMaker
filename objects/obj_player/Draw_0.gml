/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7077A568
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64A9457B
/// @DnDArgument : "var" "move_speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "default_move_speed"
if(move_speed > default_move_speed)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7723235B
	/// @DnDParent : 64A9457B
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "yprevious"
	/// @DnDArgument : "xscale" "image_xscale*1.1"
	/// @DnDArgument : "yscale" "image_yscale*1.1"
	/// @DnDArgument : "alpha" "0.2"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, image_xscale*1.1, image_yscale*1.1, 0, $FFFFFF & $ffffff, 0.2);
}