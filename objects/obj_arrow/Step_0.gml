if (visible && !instance_exists(mask)) {
    with(obj_arrow) {
        show_debug_message(string(arrow_num))
        if(arrow_num == other.arrow_num + 1) {
            visible = true; 
        }
    }
    instance_destroy();
}