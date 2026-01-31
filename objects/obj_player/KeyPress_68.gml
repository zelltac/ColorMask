var try_x = x+16;

if not is_in_wall(try_x, y) {
	x = try_x;
	can_pickup_mask = true;
}