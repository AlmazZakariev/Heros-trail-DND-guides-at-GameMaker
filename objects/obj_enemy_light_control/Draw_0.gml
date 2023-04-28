/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5C29C3DC
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "surface_exists"
/// @DnDArgument : "arg" "surf"
var _exists = surface_exists(surf);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E9E459D
/// @DnDArgument : "var" "_exists"
/// @DnDArgument : "value" "false"
if(_exists == false)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6896B87B
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "var" "_cw"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_width"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _cw = camera_get_view_width(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 725A9D31
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "var" "_ch"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_height"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _ch = camera_get_view_height(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 606CAE9A
	/// @DnDInput : 2
	/// @DnDBreak : 1

	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "var" "surf"
	/// @DnDArgument : "function" "surface_create"
	/// @DnDArgument : "arg" "_cw"
	/// @DnDArgument : "arg_1" "_ch"
	surf = surface_create(_cw, _ch);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 09768F69
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "function" "surface_set_taget"
	/// @DnDArgument : "arg" "surf"
	surface_set_taget(surf);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0813B750
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "color" "$00000000"
	draw_set_colour($00000000 & $ffffff);
	var l0813B750_0=($00000000 >> 24);
	draw_set_alpha(l0813B750_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 2D57B306
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "x2" "_cw"
	/// @DnDArgument : "y2" "_ch"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, 0, _cw, _ch, 0);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 044ED771
	/// @DnDParent : 1E9E459D
	/// @DnDArgument : "function" "surface_reset_target"
	surface_reset_target();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6EF2984A
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DCB63E3
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "var" "_cw"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_width"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _cw = camera_get_view_width(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 576D74C9
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "var" "_ch"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_height"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _ch = camera_get_view_height(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 74E1B674
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "var" "_cx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _cx = camera_get_view_x(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 77D41A98
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "var" "_cy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _cy = camera_get_view_y(view_camera[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 007E693B
	/// @DnDBreak : 1

	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "function" "surface_set_taget"
	/// @DnDArgument : "arg" "surf"
	surface_set_taget(surf);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0623AC7E
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "color" "c_black"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour(c_black & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 54C38A7D
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "alpha" "0.8"
	draw_set_alpha(0.8);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 002417FC
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "x2" "_cw"
	/// @DnDArgument : "y2" "_ch"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, 0, _cw, _ch, 0);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4AD34F51
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "function" "gpu_set_blendmode"
	/// @DnDArgument : "arg" "bm_subtract"
	gpu_set_blendmode(bm_subtract);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6B4291CC
	/// @DnDApplyTo : {obj_enemy_parent}
	/// @DnDParent : 6EF2984A
	with(obj_enemy_parent) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71EED357
		/// @DnDInput : 2
		/// @DnDParent : 6B4291CC
		/// @DnDArgument : "var" "_sw"
		/// @DnDArgument : "value" "sprite_width/2"
		/// @DnDArgument : "var_1" "_sh"
		/// @DnDArgument : "value_1" "sprite_height/2"
		var _sw = sprite_width/2;
		var _sh = sprite_height/2;
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 20535682
		/// @DnDParent : 6B4291CC
		/// @DnDArgument : "expr" "object_index"
		var l20535682_0 = object_index;
		switch(l20535682_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0C4A5796
			/// @DnDParent : 20535682
			/// @DnDArgument : "const" "obj_baddie"
			case obj_baddie:
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 221215C2
				/// @DnDParent : 0C4A5796
				/// @DnDArgument : "x" "-cx"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-cy"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "0.75"
				/// @DnDArgument : "yscale" "0.75"
				/// @DnDArgument : "sprite" "obj_myglow"
				/// @DnDSaveInfo : "sprite" "obj_myglow"
				draw_sprite_ext(obj_myglow, 0, x + -cx, y + -cy, 0.75, 0.75, 0, $FFFFFF & $ffffff, 1);
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 08B2BA2D
			/// @DnDParent : 20535682
			/// @DnDArgument : "const" "obj_bat"
			case obj_bat:
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 7FE93E90
				/// @DnDParent : 08B2BA2D
				/// @DnDArgument : "x" "-cx"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-cy"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "0.5"
				/// @DnDArgument : "yscale" "0.5"
				/// @DnDArgument : "sprite" "obj_myglow"
				/// @DnDSaveInfo : "sprite" "obj_myglow"
				draw_sprite_ext(obj_myglow, 0, x + -cx, y + -cy, 0.5, 0.5, 0, $FFFFFF & $ffffff, 1);
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 3C0D00D7
			/// @DnDParent : 20535682
			/// @DnDArgument : "const" "obj_bat_projectile"
			case obj_bat_projectile:
			
				break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 252B7D6F
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "function" "gpu_set_blendmode"
	/// @DnDArgument : "arg" "bm_normal"
	gpu_set_blendmode(bm_normal);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 01D60E44
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "color" "c_white"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 2472B95B
	/// @DnDParent : 6EF2984A
	draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4DA10EAC
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "function" "surface_reset_target"
	surface_reset_target();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0FCFF4F2
	/// @DnDInput : 3
	/// @DnDParent : 6EF2984A
	/// @DnDArgument : "function" "draw_surface"
	/// @DnDArgument : "arg" "surf"
	/// @DnDArgument : "arg_1" "_cx"
	/// @DnDArgument : "arg_2" "_cy"
	draw_surface(surf, _cx, _cy);
}