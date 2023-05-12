function s1w1() {
	if (counter != 10*60){
		if (counter % 60 == 0){
		 enemy_spawn(obj_enemy1);
		}
	}
	else {
		show_debug_message(instance_number(obj_enemy1))
		instance_destroy(obj_enemy1)
		instance_create_layer(obj_enayi.x, obj_enayi.y - 180, "Instances", obj_countdown);
		//counter'ı scr_countdown'dan 0'lıyorum
	}
}