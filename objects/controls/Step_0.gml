/// @description rebindable input check

/* Face Button Mapping according to Xbox 360 Gamepad
 * face1 = A
 * face2 = B
 * face3 = X
 * face4 = Y
 * */

// Keyboard movement
key_up    = keyboard_check(kb_up)    || gamepad_axis_value(global.gamepad_main, gp_up) < -0.5;
key_left  = keyboard_check(kb_left)  || gamepad_axis_value(global.gamepad_main, gp_left) < -0.5;
key_down  = keyboard_check(kb_down)  || gamepad_axis_value(global.gamepad_main, gp_down) > 0.5;
key_right = keyboard_check(kb_right) || gamepad_axis_value(global.gamepad_main, gp_right) > 0.5;

// Actions
key_attack = keyboard_check_pressed(kb_attack) || gamepad_button_check_pressed(global.gamepad_main, gp_attack);
key_sprint = keyboard_check(kb_sprint) || gamepad_button_check(global.gamepad_main, gp_sprint);
key_action = keyboard_check_pressed(kb_action) || gamepad_button_check_pressed(global.gamepad_main, gp_action);
key_pause  = keyboard_check_pressed(kb_pause)  || gamepad_button_check_pressed(global.gamepad_main, gp_pause);
