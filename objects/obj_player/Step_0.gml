//Controls
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Checks for collision with variable "tilemap"
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0) {
    
    //If greater than 0, walk down sprite
    if (_ver > 0) sprite_index = spr_player_walk_down;
    //Else if lesser than 0, walk up sprite
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    //Else if greater than 0, walk right sprite
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    //Else if lesser than 0, walk left sprite
    else if (_hor < 0) sprite_index = spr_player_walk_left;
}
//Checks which Sprite direction is being applied to player walking, then applies the correct idle sprite. 
else {
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
}