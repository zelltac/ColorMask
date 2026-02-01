if (is_in_wall(x+(drive_direction*16), y)) {
    drive_direction *= -1;
}
x += drive_direction*16;
show_debug_message("car: " + string(x) + ", " + string(y));
alarm[0] = 30;