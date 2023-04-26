/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 600E923A
/// @DnDArgument : "x1" "-200"
/// @DnDArgument : "y1" "-200"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "200"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "200"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l600E923A_0 = collision_rectangle(-200, y + -200, x + 200, y + 200, obj_player, true, 1);
if((l600E923A_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4C6C0959
	/// @DnDParent : 600E923A
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6D078A90
	/// @DnDParent : 600E923A
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 180BE13D
	/// @DnDParent : 600E923A
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "1"
	if(alarm[0] < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 28D81309
		/// @DnDParent : 180BE13D
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 79924405
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 309C8241
	/// @DnDParent : 79924405
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 6844F236
	/// @DnDParent : 79924405
	/// @DnDArgument : "direction" "2"
	/// @DnDArgument : "direction_relative" "1"
	direction += 2;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5D648900
	/// @DnDParent : 79924405
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);
}