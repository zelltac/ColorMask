with(obj_wall) {
	if (other.current_mask_id == -1) {
		if(object_index == obj_wall_rainbow) { 
			sprite_index = spr_rainbow;
			passable = true;
		} else {
			passable = false;
		}
	} else {
		if(object_index == obj_wall_rainbow) { 
			sprite_index = spr_thundercloud;
			passable = false;
		} else {
			for(i=0; i<array_length(other.current_mask_matches); i++) {
				if original_color == other.current_mask_matches[i] {
					passable = true;
					break;
				}
				else {
					passable = false;
				}
			}
		}
	}
}