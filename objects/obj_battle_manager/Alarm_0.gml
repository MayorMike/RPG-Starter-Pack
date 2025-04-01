//Take health, subtract damage
obj_battle_enemy.data.hp -= damage_to_enemy;

//Enemy damage animation
//Check if match has ended
if (check_for_end()){
    //Go back to original room
    alarm[2] = 60;
}
else {
    //Continues to enemy attack
    alarm[1] = 60;
    //Trigger enemy animation
    obj_battle_enemy.alarm[0] = 30;
}

//Increase charge after each attack, if greater than 1, set back to 1. (ensures it doesn't go above 1)
obj_battle_player.data.charge += 0.4;
if (obj_battle_player.data.charge > 1){
    obj_battle_player.data.charge = 1;
}