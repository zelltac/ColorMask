if (is_in_wall(x+(drive_direction*16), y)) {
    drive_direction *= -1;
}
x += drive_direction*16;
alarm[0] = 30;