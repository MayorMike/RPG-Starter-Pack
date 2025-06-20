inputUpdate();

keybindings();

if (rebindMoveUp == true) {
        var _newKeybind = inputChangeKeybind("MoveUp");
    if (_newKeybind != -1){
        inputReplace("MoveUp", _newKeybind);
        textID = layer_text_get_id("KeybindsLayer", "button_text_MoveUp");
        layer_text_text(textID, keyboard_lastchar);
        rebindMoveUp = false;
        show_debug_message("MoveUp Key Set!");
    }
}
if (rebindMoveLeft == true) {
        var _newKeybind = inputChangeKeybind("MoveLeft");
    if (_newKeybind != -1){
        inputReplace("MoveLeft", _newKeybind);
        rebindMoveLeft = false;
        show_debug_message("MoveLeft Key Set!");
    }
}
if (rebindMoveDown == true) {
        var _newKeybind = inputChangeKeybind("MoveDown");
    if (_newKeybind != -1){
        inputReplace("MoveDown", _newKeybind);
        rebindMoveDown = false;
        show_debug_message("MoveDown Key Set!");
    }
}
if (rebindMoveRight == true) {
        var _newKeybind = inputChangeKeybind("MoveRight");
    if (_newKeybind != -1){
        inputReplace("MoveRight", _newKeybind);
        rebindMoveRight = false;
        show_debug_message("MoveRight Key Set!");
    }
}
if (rebindSprint == true) {
        var _newKeybind = inputChangeKeybind("Sprint");
    if (_newKeybind != -1){
        inputReplace("Sprint", _newKeybind);
        rebindSprint = false;
        show_debug_message("Sprint Key Set!");
    }
}
if (rebindAttack == true) {
        var _newKeybind = inputChangeKeybind("Attack");
    if (_newKeybind != -1){
        inputReplace("Attack", _newKeybind);
        rebindAttack = false;
        show_debug_message("Attack Key Set!");
    }
}
if (rebindAction == true) {
    var _newKeybind = inputChangeKeybind("Action");
    if (_newKeybind != -1){
        inputReplace("Action", _newKeybind);
        rebindAction = false;
        show_debug_message("Action Key Set!");
    }
}
if (rebindDialog == true) {
    var _newKeybind = inputChangeKeybind("Dialog");
    if (_newKeybind != -1){
        inputReplace("Dialog", _newKeybind);
        rebindDialog = false;
        show_debug_message("Dialog Key Set!");
    }
}
if (rebindPause == true) {
    var _newKeybind = inputChangeKeybind("Pause");
    if (_newKeybind != -1){
        inputReplace("Pause", _newKeybind);
        rebindPause = false;
        show_debug_message("Pause Key Set!");
    }
}

if keyboard_check_pressed(ord("L")) {
    textID = layer_text_get_id("KeybindsLayer", "button_text_MoveUp");
    layer_text_text(textID, keyboard_string);
    textID = false;
}