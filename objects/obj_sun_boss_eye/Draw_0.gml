var boss = instance_find(obj_sun_boss, 0);

if instance_exists(boss) {
	current_color = boss.next_ring_color_string;
}

switch current_color {
	case "black":
		image_index = 0;
		break;
	case "red":
		image_index = 1;
		break;
	case "green":
		image_index = 2;
		break;
	case "blue":
		image_index = 3;
		break;
	case "cyan":
		image_index = 4;
		break;
	case "magenta":
		image_index = 5;
		break;
	case "yellow":
		image_index = 6;
		break;
}

draw_sprite(sprite_index, image_index, x, y);