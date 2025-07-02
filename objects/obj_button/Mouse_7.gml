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
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveUp");
        layer_text_text(textID, scr_keytostring(0));
        
    break;
        
    case 51: //Keybind for Move Left - Default "A"
        show_debug_message("Set MoveLeft Keybind!")
        obj_input.rebindMoveLeft = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveLeft");
        layer_text_text(textID, scr_keytostring(0));
    break;
    
    case 52: //Keybind for Move Down - Default "S"
        show_debug_message("Set MoveDown Keybind!")
        obj_input.rebindMoveDown = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveDown");
        layer_text_text(textID, scr_keytostring(0));
    break;
        
    case 53: //Keybind for Move Right - Default "D"
        show_debug_message("Set MoveRight Keybind!")
        obj_input.rebindMoveRight = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveRight");
        layer_text_text(textID, scr_keytostring(0));
    break;
    
    case 54: //Keybind for Sprint - Default Left Shift
        show_debug_message("Set Sprint Keybind!")
        obj_input.rebindSprint = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_sprint");
        layer_text_text(textID, scr_keytostring(0));
    break;
    
    case 55: //Keybind for Attack - Default Space
        show_debug_message("Set Attack Keybind!");
        obj_input.rebindAttack = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_attack");
        layer_text_text(textID, scr_keytostring(0));
    break;
        
    case 56: //Keybind for Action - Default "E"
        show_debug_message("Set Action Keybind!")
        obj_input.rebindAction = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_action");
        layer_text_text(textID, scr_keytostring(0));
    break;
    
    case 57: //Keybind for Dialog - Default "E"
        show_debug_message("Set Dialog Keybind!")
        obj_input.rebindDialog = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_dialog");
        layer_text_text(textID, scr_keytostring(0));
    break;
    
    case 58: //Keybind for Pause - Default Escape - PLACEHOLDER
        show_debug_message("Set Pause Keybind!");
        obj_input.rebindPause = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_pause");
        layer_text_text(textID, scr_keytostring(0));
    break;
    case 59: //Keybind for Shoot - Default "Q"
        show_debug_message("Set Shoot Keybind!");
        obj_input.rebindShoot = true;
        obj_input.bindingKeys = true;
        textID = layer_text_get_id("KeybindsLayer", "button_text_shoot");
        layer_text_text(textID, scr_keytostring(0));
    break;
}