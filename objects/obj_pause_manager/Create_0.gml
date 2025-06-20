//Manages pausing the game and Gamepad support for now. 
//(I just didn't want to create a second object. Hopefully doesn't break stuff...)
paused = false;
layer_name = "PauseLayer";

update_pause = function(){
    if (paused){
        instance_deactivate_all(true);
        instance_activate_object(obj_input); //Prevents obj_input being deactivated
        instance_activate_object(obj_keybindTest);
        layer_set_visible(layer_name, true);
        show_debug_message("PauseLayer is now showing\nGame Paused");
    }
    else {
        instance_activate_all();
        layer_set_visible(layer_name, false);
        layer_set_visible("SettingsLayer", false);
        layer_set_visible("KeybindsLayer", false);
        show_debug_message("PauseLayer is hidden\nGame Resume");
    }
}

update_pause();

layer_set_visible("SettingsLayer", false);
show_debug_message("SettingsLayer is hidden");