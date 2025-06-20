function initializeKeybinds(){ 
    with (obj_input) {
        keybinds = [
        new BindKB("MoveUp", ord("W")),
        new BindKB("MoveLeft", ord("A")),
        new BindKB("MoveDown", ord("S")), 
        new BindKB("MoveRight", ord("D")),
        new BindKB("Sprint", vk_lshift),
        new BindKB("Attack", vk_space),
        new BindKB("Action", ord("E")),
        new BindKB("Dialog", ord("E")),
        new BindKB("Pause", vk_escape),
        ];
    }
}

function keybindings() {
    global.moveUp = inputCheckHeld("MoveUp");
    global.moveLeft = inputCheckHeld("MoveLeft");
    global.moveDown = inputCheckHeld("MoveDown");
    global.moveRight = inputCheckHeld("MoveRight");
    global.sprint = inputCheckHeld("Sprint");
    global.attack = inputCheckPressed("Attack");
    global.action = inputCheckPressed("Action");
    global.dialog = inputCheckPressed("Dialog");
    global.pauseGame = inputCheckPressed("Pause");
}