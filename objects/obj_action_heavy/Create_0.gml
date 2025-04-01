action = function ()
//If charge = 1, allow heavy attack. 
{
    if (obj_battle_player.data.charge >= 1){
        //Set charge to 0, as heavy attack was used
        obj_battle_player.data.charge = 0;
        //Does heavy attack. Does attack, but multiplies by 2. 
        obj_battle_manager.player_attack(obj_battle_player.data.damage * 2)
    }
}