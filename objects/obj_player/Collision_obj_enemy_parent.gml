if (alarm[0] < 0){
    hp -= other.damage;
    alarm[0] = 60;
    image_blend = c_red;
    audio_play_sound(snd_player_hit, 0, false);
    
    if (hp <= 0){
        room_restart();
        show_debug_message("You Died!");
    }
}
//Code for Turn-Based Combat. Left here for now, but unused. 
/*if (instance_exists(obj_battle_switcher)) exit;
    
var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);

_switcher.player_data = self;
_switcher.enemy_data = other;
_switcher.original_room = room;
room_goto(rm_battle);/*