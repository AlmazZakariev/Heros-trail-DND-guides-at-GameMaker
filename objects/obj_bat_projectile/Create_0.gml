/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6A63D9CD
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1C0D9517
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l1C0D9517_0 = false;
l1C0D9517_0 = instance_exists(obj_player);
if(l1C0D9517_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0EED43BB
	/// @DnDParent : 1C0D9517
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0FFD26E8
	/// @DnDParent : 1C0D9517
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}