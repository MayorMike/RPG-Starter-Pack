if (alarm[1] < 0){
    hp -= other.damage;
    image_blend = c_red;
    audio_play_sound(snd_enemy_hit, 0, false);
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}