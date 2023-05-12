function s1w2() {
	show_debug_message("s1w2");
	var spawn_x = irandom_range(obj_enayi.x - 1200, obj_enayi.x + 1200);
	var spawn_y = irandom_range(obj_enayi.y - 1200, obj_enayi.y + 1200);
	spawn_x = clamp(spawn_x, 60, room_width-60);
	spawn_y = clamp(spawn_y, 60, room_height-60);
	
	if (counter == 0) && (enemycount > 0) {
		var new_enemy = instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);
		
		while !collision_circle(obj_enayi.x, obj_enayi.y, 1200, new_enemy, false, true) || collision_circle(obj_enayi.x, obj_enayi.y, 400, new_enemy, false, true) {
			instance_destroy(new_enemy)
			var spawn_x = irandom_range(obj_enayi.x - 1200, obj_enayi.x + 1200);
			var spawn_y = irandom_range(obj_enayi.y - 1200, obj_enayi.y + 1200);
			spawn_x = clamp(spawn_x, 60, room_width-60);
			spawn_y = clamp(spawn_y, 60, room_height-60);
			var new_enemy = instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);
		}
		enemy1_remain -= 1;
	}
	if (enemycount - obj_killcounter.killcount == 0) {clear = true;}
}