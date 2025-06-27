//Esc key toggles pause
if obj_input.bindingKeys == false {
    if (global.pauseGame){
        paused = !paused;
        update_pause();
    }
}
else {
}