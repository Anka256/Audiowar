randomize();
counter += 1;
if (counter % 60 = 0){
	show_debug_message(obj_tempo.wave_time-round(obj_tempo.counter/60));}

kilicdaroglu_kazanirsa_yapilacaklar();



if (counter % 30 == 0){
	instance_create_layer(obj_enayi.x, obj_enayi.y, "Instances", obj_nota);
}