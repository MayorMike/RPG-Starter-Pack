//Checks if dialog exists. If so, pauses player. 
if (instance_exists(obj_dialog)) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _len = _hor!=0 || _ver!=0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

//If either true, code will run. 
//Determins which direction the player sprite looks when walking. 
if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    facing = point_direction(0, 0, _hor, _ver);
}

//Player not moving, change spr back to idle based on direction. 
else {
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

if (keyboard_check_pressed(vk_space)){
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}

if (hp <= 0) {
    game_restart();
}