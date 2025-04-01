//Runs every frame until animation is finished
//Increase X pos by 2 until it is 20 pixels over. 
x += 2;
if (x > xstart + 20){
    //Once it reaches 20 pixels from start, activate alarm 0 to move back
    alarm[1] = 1;
}
else {
    //Otherwise run alarm 0 so it runs in the next frame
    alarm[0] = 1;
}