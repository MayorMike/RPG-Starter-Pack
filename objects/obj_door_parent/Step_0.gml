if (instance_exists(obj_dialog)) exit;
    
if (distance_to_object(obj_player) < 8 && obj_player.door_key > 0){
    has_keys = true;
    if (controls.key_action){
    show_debug_message("Destroy Door!");
    instance_destroy(self);
    }
}
    
else{
    has_keys = false;
}