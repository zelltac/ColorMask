player_object = instance_find(obj_player, 0);

shader_reset();
var layer_id = layer_get_id("Tiles");
layer_shader(layer_id, -1);

var layer_id = layer_get_id("Instances");
layer_shader(layer_id, -1);

with(obj_wall) {
	passable = false;
}

if (player_object.current_mask != "none") {
    can_pickup_mask = false;
    player_object.current_mask = "none";
}