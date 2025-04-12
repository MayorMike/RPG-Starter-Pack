paused = false;
layer_name = "PauseLayer";

update_pause = function(){
    if (paused){
        instance_deactivate_all(true);
        layer_set_visible(layer_name, true);
        show_debug_message("PauseLayer is now showing\nGame Paused");
    }
    else {
        instance_activate_all();
        layer_set_visible(layer_name, false);
        layer_set_visible("SettingsLayer", false);
        show_debug_message("PauseLayer is hidden\nGame Resume");
    }
}

update_pause();

layer_set_visible("SettingsLayer", false);
show_debug_message("SettingsLayer is hidden");