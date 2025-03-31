//Runs for all instances in the room (players, enemies, etc)
//Does depth sorting using the bottom of the box (bbox_bottom)
with (all){
    depth = -bbox_bottom;    
}