inputUpdate();

keybindings();

if (rebindMoveUp == true) {
    
        var _newKeybind = inputChangeKeybind("MoveUp");
    if (_newKeybind != -1){
        inputReplace("MoveUp", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveUp");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindMoveUp = false;
        obj_input.bindingKeys = false;
        show_debug_message("MoveUp Key Set!");
    }
}
if (rebindMoveLeft == true) {
        var _newKeybind = inputChangeKeybind("MoveLeft");
    if (_newKeybind != -1){
        inputReplace("MoveLeft", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveLeft");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindMoveLeft = false;
        obj_input.bindingKeys = false;
        show_debug_message("MoveLeft Key Set!");
    }
}
if (rebindMoveDown == true) {
        var _newKeybind = inputChangeKeybind("MoveDown");
    if (_newKeybind != -1){
        inputReplace("MoveDown", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveDown");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindMoveDown = false;
        obj_input.bindingKeys = false;;
        show_debug_message("MoveDown Key Set!");
    }
}
if (rebindMoveRight == true) {
        var _newKeybind = inputChangeKeybind("MoveRight");
    if (_newKeybind != -1){
        inputReplace("MoveRight", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveRight");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindMoveRight = false;
        obj_input.bindingKeys = false;
        show_debug_message("MoveRight Key Set!");
    }
}
if (rebindSprint == true) {
        var _newKeybind = inputChangeKeybind("Sprint");
    if (_newKeybind != -1){
        inputReplace("Sprint", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_sprint");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindSprint = false;
        obj_input.bindingKeys = false;
        show_debug_message("Sprint Key Set!");
    }
}
if (rebindAttack == true) {
        var _newKeybind = inputChangeKeybind("Attack");
    if (_newKeybind != -1){
        inputReplace("Attack", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_attack");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindAttack = false;
        obj_input.bindingKeys = false;
        show_debug_message("Attack Key Set!");
    }
}
if (rebindAction == true) {
    var _newKeybind = inputChangeKeybind("Action");
    if (_newKeybind != -1){
        inputReplace("Action", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_action");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindAction = false;
        obj_input.bindingKeys = false;
        show_debug_message("Action Key Set!");
    }
}
if (rebindDialog == true) {
    var _newKeybind = inputChangeKeybind("Dialog");
    if (_newKeybind != -1){
        inputReplace("Dialog", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_dialog");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindDialog = false;
        obj_input.bindingKeys = false;
        show_debug_message("Dialog Key Set!");
    }
}
if (rebindPause == true) {
    var _newKeybind = inputChangeKeybind("Pause");
    if (_newKeybind != -1){
        inputReplace("Pause", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_pause");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindPause = false;
        obj_input.bindingKeys = false;
        show_debug_message("Pause Key Set!");
    }
}
if (rebindShoot == true) {
    var _newKeybind = inputChangeKeybind("Shoot");
    if (_newKeybind != -1){
        inputReplace("Shoot", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_shoot");
        keyID = keyboard_lastkey;
        layer_text_text(textID, scr_keytostring(keyID));
        rebindShoot = false;
        obj_input.bindingKeys = false;
        show_debug_message("Shoot Key Set!");
    }
}

/*if keyboard_check_pressed(ord("L")) {
    textID = layer_text_get_id("KeybindsLayer", "button_text_MoveUp");
    layer_text_text(textID, keyboard_string);
    textID = false;
}*/