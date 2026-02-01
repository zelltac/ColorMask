alarm[0] = 30;
drive_direction = 1;
car_color = "blue";

function is_in_wall(check_x, check_y) {
    if (check_x < 0 or check_y < 0 or check_x >= room_width or check_y >= room_height)
        return true;
    player_object = instance_find(obj_player, 0);
	with(obj_wall) {
		if x == check_x and y == check_y and GetModifiedColor(original_color, other.player_object.current_mask) != other.car_color {
			return true;
		}
	}
	return false;
}