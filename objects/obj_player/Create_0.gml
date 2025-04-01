move_speed = 1;

//Check for collisions with Tiles_Col
tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total = hp;
damage = 1;
charge = 0

level = 1
xp = 0
xp_require = 100

function add_xp(_xp_to_add){
    xp += _xp_to_add;
    if (xp >= xp_require){
        level++;
        xp -= xp_require;
        xp_require *= 1.4; //Increase by 40%
        
        hp_total =+ 5;//hp_total is now 5 additional points
        hp = hp_total;
        damage += 0.8;//Damage increased by 8%?
    }
}