/// @description keybindings

/* Face Button Mapping according to Xbox 360 Gamepad
 * face1 = A
 * face2 = B
 * face3 = X
 * face4 = Y
 * */

key_up = keyboard_check(ord("W")) || (gamepad_axis_value(global.gamepad_main, gp_axislv) < 0);
key_left = keyboard_check(ord("A")) || (gamepad_axis_value(global.gamepad_main, gp_axislv) > 0);
key_down = keyboard_check(ord("S")) || (gamepad_axis_value(global.gamepad_main, gp_axislh) > 0);
key_right = keyboard_check(ord("D")) || (gamepad_axis_value(global.gamepad_main, gp_axislh) < 0);

key_attack = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(global.gamepad_main, gp_face3));
key_sprint = keyboard_check(vk_lshift) || (gamepad_button_check(global.gamepad_main, gp_face2));
key_use = keyboard_check_pressed(ord("E")) || (gamepad_button_check_pressed(global.gamepad_main, gp_face4));

key_pause = keyboard_check_pressed(vk_escape) || (gamepad_button_check_pressed(global.gamepad_main, gp_start));

