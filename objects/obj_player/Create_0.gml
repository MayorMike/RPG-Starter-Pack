move_speed = 1;

//Check for collisions with Tiles_Col
tilemap = [layer_tilemap_get_id("Tiles_Col"), obj_door_parent];
tilemap_ground = layer_tilemap_get_id("Tiles_Back");


//Player Stat Variables
hp = 10;
hp_total = 10;
damage = 1;
stamina = 50;
stamina_total = 50;
stamina_regen_timer = 0;
level = 1;
xp = 0;
xp_require = 100;
enemy_remaining = 0;
enemy_total = 0;

moving = false;
door_key = 0;//Number of door keys player is holding - Gold Key
chest_key = 0; //Number of chest keys player is holding - Silver Key

facing = 0;

function add_xp(_xp_to_add){
    xp += _xp_to_add;
    if (xp >= xp_require){
        level++;
        xp -= xp_require;
        xp_require *= 1.4; //Increase by 40%
        
        hp_total += 5;//hp_total is now 5 additional points
        hp = hp_total;
        damage += 0.8;//Damage increased by 8%?
        
        create_dialog([
        {
        name: "Congrats",
        msg: $"You leveled up! Your new stats are:\nLVL {level}\nHP +{hp_total}\nDMG +{damage}"
        }
        ])
    }
}
//Count # of enemies
enemy_total = instance_number(obj_enemy_parent);
enemy_remaining = enemy_total;