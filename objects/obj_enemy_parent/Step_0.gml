//Moves horizonal and vertical. Clamped between target - x or y.
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

//Similar to player's move and collide. Prevents jitter and causes enemy to collilde with the set tilemap. 
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);