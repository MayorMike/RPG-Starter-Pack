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
        new BindKB("Shoot", ord("Q")),
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
    global.shoot = inputCheckPressed("Shoot");
}

function save_keybinds(){
    keybindings();
    ini_open("keybinds.ini");
    ini_write_real("keybinds", "MoveUp", vk_lshift);
    ini_close();
}