alarm[0] = 30;
drive_direction = 1;
car_color = "blue";

function is_in_wall(check_x, check_y) {
    if (check_x < 0 or check_y < 0 or check_x >= room_width or check_y >= room_height)
        return true;
    player_object = instance_find(obj_player, 0);
    if (player_object == noone) {
        current_mask = noone;
    } else {
        current_mask = player_object.current_mask;
    }
	with(obj_wall) {
		// First check mask color to see if there's no block
		if (x == check_x) and (y == check_y) 
		and GetModifiedColor(original_color, other.current_mask) == other.current_mask {
			return false;	
		}
		// Then check if block is car color.
		if (x == check_x) and (y == check_y) 
		and (GetModifiedColor(original_color, other.current_mask) != other.car_color) {
			return true;
		}
	}
	return false;
}