if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	var try_y = y-16;

	if not is_in_wall(x, try_y) {
		y = try_y;
		can_pickup_mask = true;
	}
}
else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	var try_y = y+16;

	if not is_in_wall(x, try_y) {
		y = try_y;
		can_pickup_mask = true;
	}
}
else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	var try_x = x-16;

	if not is_in_wall(try_x, y) {
		x = try_x;
		can_pickup_mask = true;
	}
}
else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	var try_x = x+16;

	if not is_in_wall(try_x, y) {
		x = try_x;
		can_pickup_mask = true;
	}
}