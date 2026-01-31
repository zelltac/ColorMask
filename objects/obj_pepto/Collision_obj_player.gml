player_object = instance_find(obj_player, 0);

if (player_object.current_mask == "none" || player_object.current_mask == "red" || player_object.current_mask == "magenta" || player_object.current_mask == "yellow") {
    instance_destroy(player_object);
}