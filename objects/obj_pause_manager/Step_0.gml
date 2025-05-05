//Esc key toggles pause
if (InputPressed(INPUT_VERB.PAUSE)){
    paused = !paused;
    update_pause();
}