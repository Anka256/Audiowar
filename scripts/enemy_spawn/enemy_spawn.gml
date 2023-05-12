function enemy_spawn(enemy){
	
	var spawn_x = irandom_range(obj_enayi.x - 1200, obj_enayi.x + 1200);
	var spawn_y = irandom_range(obj_enayi.y - 1200, obj_enayi.y + 1200);
	spawn_x = clamp(spawn_x, 60, room_width-60);
	spawn_y = clamp(spawn_y, 60, room_height-60);
	var new_enemy = instance_create_layer(spawn_x, spawn_y, "Instances", enemy);
	
	while !collision_circle(obj_enayi.x, obj_enayi.y, 1200, new_enemy, false, true) || collision_circle(obj_enayi.x, obj_enayi.y, 400, new_enemy, false, true){
		instance_destroy(new_enemy)
		var spawn_x = irandom_range(obj_enayi.x - 1200, obj_enayi.x + 1200);
		var spawn_y = irandom_range(obj_enayi.y - 1200, obj_enayi.y + 1200);
		spawn_x = clamp(spawn_x, 60, room_width-60);
		spawn_y = clamp(spawn_y, 60, room_height-60);
		var new_enemy = instance_create_layer(spawn_x, spawn_y, "Instances", enemy);
	}
}