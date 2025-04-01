//Controls turns. 0 is player's turn, 1 is enemy's turn.
enemy_turn = 0;
//Stores how much damage to do to enemy after attack animation
damage_to_enemy = 0;

player_attack = function (_damage){
    damage_to_enemy = _damage;
    enemy_turn = 1;
    alarm[0] = 40; //plays animation to 4 frames
    
    //This triggers player's animation
    obj_battle_player.alarm[0] = 10;
}

check_for_end = function(){
    //Check if enemy or player health equals or lower than Zero
    return (obj_battle_enemy.data.hp <= 0 || obj_battle_player.data.hp <= 0)
}