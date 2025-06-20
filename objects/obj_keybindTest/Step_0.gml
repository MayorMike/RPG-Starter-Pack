if (keyboard_check_pressed(ord("K"))) {
    readingKeybind = true;
}

if (readingKeybind == true) {
    text = "Reading...";
    var _newKeybind = inputChangeKeyboard("MoveUp");
    if (_newKeybind != -1){
        inputReplace("MoveUp", _newKeybind);
        readingKeybind = false;
    }
}
else {
    text = "SET!";
}