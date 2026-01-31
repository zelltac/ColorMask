is_colliding = instance_position(x,y,obj_player);

// Change wall and toggle state
if(is_colliding and not was_colliding) {
	// Change toggle state
	if (cur_toggle_color == toggle_color1) {
		cur_toggle_color = toggle_color2;
		image_index = 1;
	} else if (cur_toggle_color == toggle_color2) {
		cur_toggle_color = toggle_color1;
		image_index = 0;
	}
	
	// Change wall visual state
	with(obj_toggle_wall) {
		if((original_color == other.toggle_color1 
		&& toggle_color == other.toggle_color2)
		|| (original_color == other.toggle_color2 
		&& toggle_color == other.toggle_color1)) {
			var temp_color = toggle_color;
			toggle_color = original_color;
			original_color = temp_color;
			show_debug_message("POOOOP")
			if(image_index == 0) {
				image_index = 1;
			} else {
				image_index = 0;
			}
		}
	}
	// Change wall permeability state
	UpdateWallState();
}
was_colliding = is_colliding;