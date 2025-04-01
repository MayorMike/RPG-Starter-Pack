//Calculate how much damage does to player
//Varies amount of damage per attack
var _enemy_damage = obj_battle_enemy.data.damage * random_range (0.7, 1.2);
//Take player health, sutract damage
obj_battle_player.data.hp -= _enemy_damage;

enemy_turn = 0;

//Check if match has ended
if (check_for_end()){
    alarm[2] = 60;
}