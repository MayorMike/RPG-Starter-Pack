audio_play_sound(snd_potion_health, 0, false);
hp += other.healing;
if (hp > hp_total){
    hp = hp_total;
}
instance_destroy(other);
