with(obj_mask) {
	if(x == other.x and y == other.y) {
		exit;
	}
}

shader_reset();
var layer_id = layer_get_id("Tiles");
layer_shader(layer_id, -1);

var layer_id = layer_get_id("Instances");
layer_shader(layer_id, -1);

with(obj_wall) {
	passable = false;
}

switch current_mask {
	case "none":
		break;
	case "red":
		can_pickup_mask = false;
		instance_create_layer(x, y, "Instances_Immune", obj_red_mask);
		current_mask = "none";
		current_mask_id = -1;
		current_mask_matches = [];
		break;
	case "green":
		can_pickup_mask = false;
		instance_create_layer(x, y, "Instances_Immune", obj_green_mask);
		current_mask = "none";
		current_mask_id = -1;
		current_mask_matches = [];
		break;
	case "blue":
		can_pickup_mask = false;
		instance_create_layer(x, y, "Instances_Immune", obj_blue_mask);
		current_mask = "none";
		current_mask_id = -1;
		current_mask_matches = [];
		break;
}

UpdateWallState();