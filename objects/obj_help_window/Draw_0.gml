/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5A7C731C
draw_self();

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 14F2E2E7
/// @DnDArgument : "var" "global.help_popup"
/// @DnDArgument : "not" "1"
if(global.help_popup != undefined)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 71BA197A
	/// @DnDParent : 14F2E2E7
	/// @DnDArgument : "var" "current_frame"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "layer_sequence_get_headpos"
	/// @DnDArgument : "arg" "global.help_popup"
	var current_frame = layer_sequence_get_headpos(global.help_popup);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25BE5667
	/// @DnDParent : 14F2E2E7
	/// @DnDArgument : "var" "current_frame"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "30"
	if(current_frame >= 30)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 5F653163
		/// @DnDParent : 25BE5667
		/// @DnDArgument : "font" "fnt_controls"
		/// @DnDSaveInfo : "font" "fnt_controls"
		draw_set_font(fnt_controls);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 44562056
		/// @DnDParent : 25BE5667
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0BE774F9
		/// @DnDParent : 25BE5667
		/// @DnDArgument : "color" "$FF000000"
		draw_set_colour($FF000000 & $ffffff);
		var l0BE774F9_0=($FF000000 >> 24);
		draw_set_alpha(l0BE774F9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4297E857
		/// @DnDParent : 25BE5667
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "controls"
		draw_text(x + 0, y + 0,  + string(controls));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 23474062
		/// @DnDParent : 25BE5667
		draw_set_colour($FFFFFFFF & $ffffff);
		var l23474062_0=($FFFFFFFF >> 24);
		draw_set_alpha(l23474062_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 75F8A4D2
		/// @DnDParent : 25BE5667
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}