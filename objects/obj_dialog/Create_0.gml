messages = [];
//Controls what message. -1 keeps it above the amount for the array.
current_message = -1;
//Controls a typewriter effect. Draws the text letter by letter.
current_char = 0;
//Shows only characters that need to be visible in the moment.
draw_message = "";

char_speed = 0.5;

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

next_room = false;