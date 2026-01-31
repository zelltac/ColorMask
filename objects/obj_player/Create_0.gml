current_mask = "none";
can_pickup_mask = true;

function is_in_wall(check_x, check_y) {
	with(obj_wall) {
		if x == check_x and y == check_y and !passable {
			return true;
		}
	}
	return false;
}