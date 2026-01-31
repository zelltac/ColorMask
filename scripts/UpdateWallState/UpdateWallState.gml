function UpdateWallState() {
	// Get player's current mask and call it's update
	var _player_object = instance_find(obj_player, 0);
	with(_player_object) {
		event_user(0);
	}
}