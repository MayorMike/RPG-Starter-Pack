//Checks if dialog exists. If so, pauses player. 
if (instance_exists(obj_dialog)) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _gp = global.gamepad_main;
if (_gp != undefined){
    _hor += gamepad_axis_value(_gp, gp_axislh);
    _ver += gamepad_axis_value(_gp, gp_axislv);
}

var _len = _hor!=0 || _ver!=0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

//Run when Left-Shift held down
// Sprinting and Stamina
if (keyboard_check(vk_lshift) && moving && stamina > 0) {
    move_speed = 1.5;
    stamina -= 0.5;

    // Reset regen delay to 1 second
    stamina_regen_timer = game_get_speed(gamespeed_fps);
} else {
    move_speed = 1;

    // Decrease the regen delay if not sprinting
    if (stamina_regen_timer > 0) {
        stamina_regen_timer -= 1;
    } else if (stamina < stamina_total) {
        stamina += 0.25;
    }
}

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

//If either true, code will run. 
//Determins which direction the player sprite looks when walking. 
if (_hor != 0 or _ver != 0)
{
    moving = true;
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    facing = point_direction(0, 0, _hor, _ver);
    
    //Play walking sounds
    //play walking on grass sound
        if (!audio_is_playing(snd_walk_grass01) && !audio_is_playing(snd_walk_grass02)){
            audio_play_sound(choose(snd_walk_grass01, snd_walk_grass02),1, false);
        }
}

//Player not moving, change spr back to idle based on direction. 
else {
    moving = false;
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