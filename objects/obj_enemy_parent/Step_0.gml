//Allow enemy to move towards target. 
//
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

//Checks for collision with variable "tilemap" and with "enemy"
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);