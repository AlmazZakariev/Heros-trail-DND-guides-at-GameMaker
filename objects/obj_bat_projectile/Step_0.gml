/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 60C24719
/// @DnDArgument : "var" "relative_x"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
var relative_x = floor(random_range(-5, 5 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2BEEAE9A
/// @DnDArgument : "var" "relative_y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
var relative_y = floor(random_range(-5, 5 + 1));

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 38FB73A7
/// @DnDArgument : "x" "relative_x"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "relative_y"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF5B84EA"
effect_create_above(7, x + relative_x, y + relative_y, 0, $FF5B84EA & $ffffff);