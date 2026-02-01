var start_frame = 0;
var end_frame = 1;

switch current_mask {
	case "none":
		start_frame = 0;
		end_frame = 1;
		break;
	case "red":
		start_frame = 2;
		end_frame = 3;
		break;
	case "green":
		start_frame = 4;
		end_frame = 5;
		break;
	case "blue":
		start_frame = 6;
		end_frame = 7;
		break;
}

show_debug_message(image_index);
if (image_index < start_frame or image_index >= end_frame+1) {
	image_index = start_frame;
}

draw_sprite(sprite_index, image_index, x, y);