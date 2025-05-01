/// rebind_action(action_name, input_type, new_input)
/// @param {string} action_name - The action to rebind (e.g., "sprint")
/// @param {string} input_type  - Either "keyboard" or "gamepad"
/// @param {real}   new_input   - The key or gamepad button code

function rebind_action(action_name, input_type, new_input) {
    var prefix = (input_type == "keyboard") ? "kb_" : "gp_";
    var prop = prefix + string(action_name);

    if (variable_instance_exists(controls, prop)) {
        variable_instance_set(controls, prop, new_input);
    }
     else {
        show_debug_message("Invalid action or input type: " + prop);
    }
}
