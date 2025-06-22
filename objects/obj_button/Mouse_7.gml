switch (button_id){
    case 0: //Resume
        obj_pause_manager.paused = false;
        obj_pause_manager.update_pause();
        show_debug_message("Game Unpaused via Button!!!");
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
 
    case 50: //Keybind for Move Up - Default "W"
        show_debug_message("Set MoveUp Keybind!")
        obj_input.rebindMoveUp = true;
    break;
        
    case 51: //Keybind for Move Left - Default "A"
        show_debug_message("Set MoveLeft Keybind!")
        obj_input.rebindMoveLeft = true;
    break;
    
    case 52: //Keybind for Move Down - Default "S"
        show_debug_message("Set MoveDown Keybind!")
        obj_input.rebindMoveDown = true;
    break;
        
    case 53: //Keybind for Move Right - Default "D"
        show_debug_message("Set MoveRight Keybind!")
        obj_input.rebindMoveRight = true;
    break;
    
    case 54: //Keybind for Sprint - Default Left Shift
        show_debug_message("Set Sprint Keybind!")
        obj_input.rebindSprint = true;
    break;
    
    case 55: //Keybind for Attack - Default Space
        show_debug_message("Set Attack Keybind!");
        obj_input.rebindAttack = true;
    break;
        
    case 56: //Keybind for Action - Default "E"
        show_debug_message("Set Action Keybind!")
        obj_input.rebindAction = true;
    break;
    
    case 57: //Keybind for Dialog - Default "E"
        show_debug_message("Set Dialog Keybind!")
        obj_input.rebindDialog = true;
    break;
    
    case 58: //Keybind for Pause - Default Escape - PLACEHOLDER
        show_debug_message("Set Pause Keybind!");
        obj_input.rebindPause = true;
    break;
}