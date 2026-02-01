if hp = 0 {
	with (obj_sun_boss_eye) {
		instance_destroy();
	}
	instance_create_layer(room_width/2, room_height/2, "Instances_Immune", obj_final_victory);
	instance_destroy();
}

steps_since_ring_attack++;

if steps_since_ring_attack > ring_attack_rate {
	steps_since_ring_attack = 0;
	var ring_attack = instance_create_layer(x, y, "Instances_Immune", obj_ring_attack);
	ring_attack.ring_color = next_ring_color;
	ring_attack.ring_color_name = next_ring_color_string;
	
	var roll_for_next_attack = irandom(5)
	switch roll_for_next_attack {
		case 0:
			next_ring_color = c_red;
			next_ring_color_string = "red";
			break;
		case 1:
			next_ring_color = c_green;
			next_ring_color_string = "green";
			break;
		case 2:
			next_ring_color = c_blue;
			next_ring_color_string = "blue";
			break;
		case 3:
			next_ring_color = c_aqua;
			next_ring_color_string = "cyan";
			break;
		case 4:
			next_ring_color = c_fuchsia;
			next_ring_color_string = "magenta";
			break;
		case 5:
			next_ring_color = c_yellow;
			next_ring_color_string = "yellow";
			break;
	}
}