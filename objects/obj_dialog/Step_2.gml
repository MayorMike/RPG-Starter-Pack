if (current_message < 0) exit;
    
var _str = messages[current_message].msg;

if (current_char < string_length(_str)){
    current_char += char_speed * (1 + real(global.action));
    draw_message = string_copy(_str, 0, current_char);
}
//If finsihed drawing
else if (global.action) {
    current_message++;//Goes to next message in array
    if (current_message >= array_length(messages)){//Checks to see if there is another message in the array
        instance_destroy();
        
        if (next_room) room_goto_next();
    }
    else {
        current_char = 0;//If there is, start from beginning and display message
    }
}
