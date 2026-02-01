global.player_depth = -1
depth = global.player_depth
current_mask = "none";
current_mask_id = -1;
current_mask_matches = [];
can_pickup_mask = true;
sprite_index = spr_player_idle_right;
face = "right"
jumping = false;
jump_animation_playing = false;
last_index = 0;
jump_direction = "none";
distance_jumped = 0;
player_speed = 2; // must evenly divide 16

start_frame = 0;
end_frame = 1;

function is_in_wall(check_x, check_y) {
    if (check_x < 0 or check_y < 0 or check_x >= room_width or check_y >= room_height)
        return true;
    
	with(obj_wall) {
		if x == check_x and y == check_y and !passable {
			return true;
		}
	}
	return false;
}