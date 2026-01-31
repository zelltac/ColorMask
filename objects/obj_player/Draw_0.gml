switch current_mask {
	case "none":
		draw_sprite(sprite_index, 0, x, y);
		break;
	case "red":
		draw_sprite(sprite_index, 1, x, y);
		break;
	case "green":
		draw_sprite(sprite_index, 2, x, y);
		break;
	case "blue":
		draw_sprite(sprite_index, 3, x, y);
		break;
}