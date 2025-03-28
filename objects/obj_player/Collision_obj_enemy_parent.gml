//Checks if switcher exists. Exits if it does so nothing happens. 
if (instance_exists(obj_battle_switcher)) exit;

//
var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);
//Access all player's data variables
_switcher.player_data = self;
//Access all enemy's data variables
_switcher.enemy_data = other;
//Be able to go back to original room after battle.
_switcher.original_room = room;

room_goto(rm_battle);
