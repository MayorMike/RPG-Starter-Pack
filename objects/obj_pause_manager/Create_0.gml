paused = false;
//layer_name = "PauseLayer";

update_pause = function(){
    if (paused){
        instance_deactivate_all(true);
        layer_set_visible("PauseLayer", true);
        show_debug_message("PauseLayer is now showing\nGame Paused");
    }
    else {
        instance_activate_all();
        layer_set_visible("PauseLayer", false);
        layer_set_visible("SettingsLayer", false);
        show_debug_message("PauseLayer is hidden\nGame Resume");
    }
}

update_pause();

layer_set_visible("SettingsLayer", false);
show_debug_message("SettingsLayer is hidden");