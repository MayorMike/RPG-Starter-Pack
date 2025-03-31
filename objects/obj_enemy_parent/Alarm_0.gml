//If player exist/close enough, follow player
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player){
    target_x = obj_player.x;
    target_y = obj_player.y;
}

//If player does not exist/too far away, set position to random
else{
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

//makes Alarm 0 go as a loop every 1 second
alarm[0] = 60;