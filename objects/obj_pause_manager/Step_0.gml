//Esc key toggles pause
if (controls.key_pause){
    paused = !paused;
    update_pause();
}
/*
//Start on Gamepad toggles Pause
if global.gamepad_main != undefined{
    if gamepad_button_check_pressed(global.gamepad_main, gp_start){
        paused = !paused;
        update_pause();
    }
}
*/