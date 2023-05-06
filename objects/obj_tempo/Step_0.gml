randomize();
counter -= 1;

s1w1();

if (counter == 0) || (counter == 30) {
	instance_create_layer(obj_enayi.x, obj_enayi.y, "Instances", obj_nota);
}
if (counter == 0) {counter = 60;}

if (clear) && (countdown_active) {
	instance_create_layer(obj_enayi.x, obj_enayi.y - 180, "Instances", obj_countdown);
}
