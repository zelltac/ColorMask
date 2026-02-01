if not jump_animation_playing {
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
		case "cyan":
			start_frame = 8;
			end_frame = 9;
			break;
		case "magenta":
			start_frame = 10;
			end_frame = 11;
			break;
		case "yellow":
			start_frame = 12;
			end_frame = 13;
			break;
	}
}
else {
	switch current_mask {
		case "none":
			start_frame = 0;
			end_frame = 4;
			break;
		case "red":
			start_frame = 5;
			end_frame = 9;
			break;
		case "green":
			start_frame = 10;
			end_frame = 14;
			break;
		case "blue":
			start_frame = 15;
			end_frame = 19;
			break;
		case "cyan":
			start_frame = 20;
			end_frame = 24;
			break;
		case "magenta":
			start_frame = 25;
			end_frame = 29;
			break;
		case "yellow":
			start_frame = 54;
			end_frame = 62;
			break;
		
	}
}

if (image_index < start_frame or image_index >= end_frame+1) {
	image_index = start_frame;
}

draw_sprite(sprite_index, image_index, x, y);