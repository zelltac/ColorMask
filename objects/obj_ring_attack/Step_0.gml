radius += expand_speed;

if radius > max_radius {
	instance_destroy();
}

var p = instance_find(obj_player, 0);
if instance_exists(p) {
	var dist = point_distance(x, y, p.x, p.y);

	if (dist >= radius - ring_width and dist <= radius and p.current_mask != ring_color_name) {
		instance_destroy(p);
	}
}