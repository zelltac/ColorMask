var try_y = y+16;

if not is_in_wall(x, try_y) {
	y = try_y;
	can_pickup_mask = true;
}