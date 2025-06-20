function inputChangeKeyboard(_name) {
    //Keybaord Check
    if (keyboard_check_pressed(vk_anykey)) {
        if (keyboard_lastkey != vk_escape) {
            var _struct = new BindKB(_name, keyboard_lastkey);
            return(_struct);
        }
    }
    // Mouse Check
    if (mouse_check_button_pressed(mb_any)) {
        var _struct = new BindMB(_name, mouse_lastbutton);
        return(_struct);
    }
    //Mouse wheel Up
    if (mouse_wheel_up()) {
        var _struct = new BindMW(_name, -1);
        return (_struct);
    }
        //Mouse wheel Down
    if (mouse_wheel_down()) {
        var _struct = new BindMW(_name, 1);
        return (_struct);
    }
    return(-1);
    
}

function inputChangeGamepad(_name) {
    //Gamepad
    
}