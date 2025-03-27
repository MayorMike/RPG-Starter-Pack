//Enemy goes towards the player when in range.
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player) {
    target_x = obj_player.x;
    target_y = obj_player.y;
}

//Enemy goes to random spots within a range when player not found
else {
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}
//Makes alarm go again in 1 second, causing a loop. So the enemy event keeps happening. 
alarm[0] = 60;