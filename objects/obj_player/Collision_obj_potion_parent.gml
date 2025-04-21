audio_play_sound(snd_potion_health, 0, false);
show_debug_message("obj_potion_parent's Child Collected!");
hp += other.healing;
if (hp > hp_total){
    hp = hp_total;
}
instance_destroy(other);
