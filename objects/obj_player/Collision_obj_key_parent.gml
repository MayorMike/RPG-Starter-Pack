audio_play_sound(snd_key_pickup, 0, false);
if (other.key_type == 0){
    door_key += 1;
    show_debug_message("Door Key Collected!");
}
else if (other.key_type == 1){
    chest_key += 1;
    show_debug_message("Chest Key Collected!");
}
instance_destroy(other);
