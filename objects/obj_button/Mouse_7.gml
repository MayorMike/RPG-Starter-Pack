switch (button_id){
    case 0: //Resume
        obj_pause_manager.paused = false;
        obj_pause_manager.update_pause();
    break;
    
    case 1: //Settings
        layer_set_visible("PauseLayer", false);
        layer_set_visible("SettingsLayer", true);
        
    break;
    
    case 2: //Quit
        game_end();
    break;
    
    case 3: //Back from Settings to Pause
        layer_set_visible("PauseLayer", true);
        layer_set_visible("SettingsLayer", false);
        
    break;
    
    case 4: //Settings to Keybinds
        layer_set_visible("KeybindsLayer", true);
        layer_set_visible("SettingsLayer", false);
        
    break;
    
    case 20: //Back from Keybinds to Settings
        layer_set_visible("SettingsLayer", true);
        layer_set_visible("KeybindsLayer", false);
        
    break;
    
    case 50: //Keybind for Keyboard Attack - Default Space
        
        
    case 51: //Keybind for Keyboard Use - Default "E"
}