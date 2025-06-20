function initializeKeybinds(){ 
    with (obj_input) {
        keybinds = [
        new BindKB("MoveUp", ord("W")),
        new BindKB("MoveLeft", ord("A")),
        new BindKB("MoveDown", ord("S")),
        new BindKB("MoveRight", ord("D")),
        ];
    }
}

function keybindings() {
    global.moveUp = inputCheckHeld("MoveUp");
    global.moveLeft = inputCheckHeld("MoveLeft");
    global.moveDown = inputCheckHeld("MoveDown");
    global.moveRight = inputCheckHeld("MoveRight");
}