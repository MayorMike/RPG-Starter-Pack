show_debug_message("Collected obj_collect_parent!");
switch (obj_collect_parent.item_name) {
	case "Shoes":
        show_debug_message("Collected shoes!");
        hasShoes = true;
    break;
    case "Bow":
        show_debug_message("Collected bow!");
        hasBow = true;
    break;
}
instance_destroy(other);