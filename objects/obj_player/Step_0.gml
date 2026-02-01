if jumping {
	can_pickup_mask = false;
	switch jump_direction {
		case "up":
			y -= player_speed;
			distance_jumped += player_speed;
			if distance_jumped == 16 {
				jumping = false;
				jump_direction = "none";
				distance_jumped = 0;
				can_pickup_mask = true;
			}
			break;
		case "down":
			y += player_speed;
			distance_jumped += player_speed;
			if distance_jumped == 16 {
				jumping = false;
				jump_direction = "none";
				distance_jumped = 0;
				can_pickup_mask = true;
			}
			break;
		case "left":
			x -= player_speed;
			distance_jumped += player_speed;
			if distance_jumped == 16 {
				jumping = false;
				jump_direction = "none";
				distance_jumped = 0;
				can_pickup_mask = true;
			}
			break;
		case "right":
			x += player_speed;
			distance_jumped += player_speed;
			if distance_jumped == 16 {
				jumping = false;
				jump_direction = "none";
				distance_jumped = 0;
				can_pickup_mask = true;
			}
			break;
	}
	exit;
}

if jump_animation_playing {
	if image_index - last_index < 0 {
		jump_animation_playing = false
		if face == "right" {
			sprite_index = spr_player_idle_right;
		}
		else {
			sprite_index = spr_player_idle_left;
		}
	}
	last_index = image_index;
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	var try_y = y-16;

	if not is_in_wall(x, try_y) {
		jumping = true;
		jump_animation_playing = true;
		jump_direction = "up";
		distance_jumped = 0;
		last_index = 0;
		image_index = 0;
		if face = "right" {
			sprite_index = spr_player_hop_right;
		}
		else {
			sprite_index = spr_player_hop_left;
		}
	}
}
else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	var try_y = y+16;

	if not is_in_wall(x, try_y) {
		jumping = true;
		jump_animation_playing = true;
		jump_direction = "down";
		distance_jumped = 0;
		last_index = 0;
		image_index = 0;
		if face = "right" {
			sprite_index = spr_player_hop_right;
		}
		else {
			sprite_index = spr_player_hop_left;
		}
	}
}
else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	var try_x = x-16;
	
	face = "left";

	if not is_in_wall(try_x, y) {
		jumping = true;
		jump_animation_playing = true;
		jump_direction = "left";
		distance_jumped = 0;
		last_index = 0;
		image_index = 0;
		sprite_index = spr_player_hop_left;
	}
}
else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	var try_x = x+16;
	
	face = "right";

	if not is_in_wall(try_x, y) {
		jumping = true;
		jump_animation_playing = true;
		jump_direction = "right";
		distance_jumped = 0;
		last_index = 0;
		image_index = 0;
		sprite_index = spr_player_hop_right;
	}
}