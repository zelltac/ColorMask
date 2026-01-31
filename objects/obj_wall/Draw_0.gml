var neighbors = 0;
if (instance_position(x, y-16, obj_wall)) neighbors += 1; //up
if (instance_position(x-16, y, obj_wall)) neighbors += 2; //left
if (instance_position(x+16, y, obj_wall)) neighbors += 4; //right
if (instance_position(x, y+16, obj_wall)) neighbors += 8; //down

image_index = neighbors;

draw_sprite(sprite_index, image_index, x, y);