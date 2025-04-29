draw_self();

if (can_talk && !instance_exists(obj_dialog)){
    draw_sprite_stretched(spr_talk, 0, x - 4, y - 19, 8, 8);
}