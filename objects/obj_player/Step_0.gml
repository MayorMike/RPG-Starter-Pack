//Checks if dialog exists. If so, pauses player. 
if (instance_exists(obj_dialog)) exit;

var _hor = false;
var _ver = false;
//Keyboard movement controls
//var _hor = controls.key_right - controls.key_left;
//var _ver = controls.key_down - controls.key_up;
if (InputCheck(INPUT_VERB.LEFT)) _hor = -1;
if (InputCheck(INPUT_VERB.RIGHT)) _hor = 1;
if (InputCheck(INPUT_VERB.UP)) _ver = -1;
if (InputCheck(INPUT_VERB.DOWN)) _ver = 1;


//Gamepad movement controls
/*if (global.gamepad_main != undefined){
    _hor += gamepad_axis_value(global.gamepad_main, gp_axislh);
    _ver += gamepad_axis_value(global.gamepad_main, gp_axislv);
}*/

var _len = _hor!=0 || _ver!=0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

//Keyboard Sprint Controls
//Run when Left-Shift held down
// Sprinting and Stamina
if ((InputCheck(INPUT_VERB.SPRINT)) && moving && stamina > 0 && hasShoes) {
    move_speed = 1.5;
    stamina -= 0.5;

    // Reset regen delay to 1 second
    stamina_regen_timer = game_get_speed(gamespeed_fps);
} 
else {
    move_speed = 1;

    // Decrease the regen delay if not sprinting
    if (stamina_regen_timer > 0) {
        stamina_regen_timer -= 1;
    } else if (stamina < stamina_total) {
        stamina += 0.25;
    }
}
//Gamepad Sprint controls


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
        /*if (!audio_is_playing(snd_walk_grass01) && !audio_is_playing(snd_walk_grass02)){
            audio_play_sound(choose(snd_walk_grass01, snd_walk_grass02),1, false);
        }*/
    
}

//Player not moving, change spr back to idle based on direction. 
else {
    moving = false;
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

//Keyboard attack controls
if (InputPressed(INPUT_VERB.ATTACK)){
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}
/*
//Gamepad attack controls
if (global.gamepad_main != undefined){
    if gamepad_button_check_pressed(global.gamepad_main, gp_face3){
        var _inst = instance_create_depth(x, y, depth, obj_attack);
        _inst.image_angle = facing;
        _inst.damage *= damage;
    }
}
*/

//Create Collect Items
if (hasShoes == false && enemy_remaining = 0){
    show_debug_message("Shoes Created!")
    instance_create_layer(400, 190, "Instances", obj_shoes);
}


//Restart game is HP = 0
if (hp <= 0) {
    game_restart();
}