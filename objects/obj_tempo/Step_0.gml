randomize();
counter -= 1;
x_enemy1 = irandom(room_width);
y_enemy1 = irandom(room_height);
if (counter == 0) {
	instance_create_layer(x_enemy1, y_enemy1, "Instances", obj_enemy1);
	counter = 60;
}