/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D7FF0B7
/// @DnDComment : This variable is called$(13_10)move_speed and stores$(13_10)the movement speed of the$(13_10)player. The speed is in$(13_10)pixels-per-second.
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "move_speed"
move_speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 094CA1E3
/// @DnDComment : Initialize coins value at 0
/// @DnDArgument : "var" "coins"
coins = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F2F89B9
/// @DnDInput : 2
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "expr_1" "max_hearts"
/// @DnDArgument : "var" "max_hearts"
/// @DnDArgument : "var_1" "hearts"
max_hearts = 4;
hearts = max_hearts;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C9773CA
/// @DnDArgument : "var" "input_direction"
input_direction = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BE1019F
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "move_speed"
/// @DnDArgument : "var" "powerup_active"
/// @DnDArgument : "var_1" "default_move_speed"
powerup_active = false;
default_move_speed = move_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BFFCB56
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "star_powerup_active"
star_powerup_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4DBFAF8F
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "shield_energy"
shield_energy = 100;