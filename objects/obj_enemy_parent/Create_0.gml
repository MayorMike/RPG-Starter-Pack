target_x = x;
target_y = y;

alarm[0] = 60;

//Enemy collides with enemy, tile_map_col and obj_door_parent
tilemap = [layer_tilemap_get_id("Tiles_Col"), obj_door_parent, obj_enemy_parent];


hp_total = hp;

//Knockback
kb_x = 0;
kb_y = 0;
