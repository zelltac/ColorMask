if not pressed {
	var boss = instance_find(obj_sun_boss, 0);
	boss.hp -= 1;
	pressed = true;
}