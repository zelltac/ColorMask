if(start_visible) {
	draw_set_font(fnt_start);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	display_set_gui_size(240, 160);
	show_debug_message(display_get_gui_height())
	draw_text(
	    display_get_gui_width() * 0.3,
	    display_get_gui_height() * 0.85,
	    "PRESS ANY KEY"
	);
}