/// @description Controls game keybindings. 
// Keys variables

key_up = false;
key_left = false;
key_down = false;
key_right = false;

key_attack = false;
key_sprint = false;
key_action = false;
key_pause = false;
key_dialog = false;

// Default keybindings
kb_up     = ord("W");
kb_left   = ord("A");
kb_down   = ord("S");
kb_right  = ord("D");

kb_attack = vk_space;
kb_sprint = vk_lshift;
kb_action = ord("E");
kb_pause  = vk_escape;
kb_dialog = ord("E");

// Default gamepad bindings
gp_up     = gp_axislv;
gp_left   = gp_axislh;
gp_down   = gp_axislv;
gp_right  = gp_axislh;

gp_attack = gp_face3;
gp_sprint = gp_face2;
gp_action = gp_face4;
gp_pause  = gp_start;
gp_dialog = gp_face4