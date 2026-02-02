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
    case "cyan":
		instance_create_layer(x, y, "Instances_Immune", obj_cyan_mask);
		break;
	case "magenta":
		instance_create_layer(x, y, "Instances_Immune", obj_magenta_mask);
		break;
	case "yellow":
		instance_create_layer(x, y, "Instances_Immune", obj_yellow_mask);
		break;
}

player_object.current_mask_id = id;
player_object.current_mask = mask_color;
player_object.current_mask_matches = mask_matches;

// switch to associated music
audio_controller = instance_find(obj_audio_controller, 0);
switch mask_color {
	case "red":
		audio_controller.switch_track(1);
		break;
	case "green":
		audio_controller.switch_track(2);
		break;
	case "blue":
		audio_controller.switch_track(3);
		break;
	case "cyan":
		audio_controller.switch_track(4);
		break;
	case "magenta":
		audio_controller.switch_track(5);
		break;
	case "yellow":
		audio_controller.switch_track(6);
		break;
}

var layer_id = layer_get_id("Tiles");
layer_shader(layer_id, mask_shader);

layer_id = layer_get_id("Instances");
layer_shader(layer_id, mask_shader);

UpdateWallState();

instance_destroy()