draw_set_colour(ring_color);

for (var i = 0; i < ring_width; i++) {
	draw_circle(x, y, radius-i, true);
}

//draw_circle(x, y, radius, true);

