image_blend = c_white;
if (hp <= 0){
    instance_destroy();
    obj_player.enemy_remaining -= 1;
    
    obj_player.add_xp(xp_value);
}
