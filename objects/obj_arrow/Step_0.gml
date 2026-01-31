if (visible && !instance_exists(mask)) {
    with(obj_arrow) {
        if(arrow_num == other.arrow_num + 1) {
            visible = true; 
        }
    }
    instance_destroy();
}