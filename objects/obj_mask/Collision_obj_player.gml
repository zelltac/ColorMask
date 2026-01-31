player_object = instance_find(obj_player, 0);

if !player_object.can_pickup_mask {
	exit;
}

player_object.can_pickup_mask = false;
switch player_object.current_mask {
	case "none":
		break;
	case "red":
		instance_create_layer(x, y, "Instances_Immune", obj_red_mask);
		break;
	case "green":
		instance_create_layer(x, y, "Instances_Immune", obj_green_mask);
		break;
	case "blue":
		instance_create_layer(x, y, "Instances_Immune", obj_blue_mask);
		break;
}

player_object.current_mask = mask_color;

var layer_id = layer_get_id("Tiles");
layer_shader(layer_id, mask_shader);

layer_id = layer_get_id("Instances");
layer_shader(layer_id, mask_shader);

with(obj_wall) {
	for(i=0; i<array_length(other.mask_matches); i++) {
		if original_color == other.mask_matches[i] {
			passable = true;
			break;
		}
		else {
			passable = false;
		}
	}
}

instance_destroy()