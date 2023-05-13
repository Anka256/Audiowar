function s1w6(){
	if (counter < wave_time*60){
		if (counter % 60 == 0){
		 enemy_spawn(obj_enemy1);
		}
	}
	if  (counter == wave_time*60){
		instance_destroy(obj_enemy1);
		instance_create_layer(obj_enayi.x, obj_enayi.y - 180, "Instances", obj_countdown);
	}
}