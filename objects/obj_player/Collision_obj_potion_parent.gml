audio_play_sound(undefined,0,undefined);
hp += other.healing;
if (hp > hp_total){
    hp = hp_total;
}
instance_destroy(other);
