with(other) {
	instance_create_layer(x, y, "Instances", obj_xp);
	instance_destroy(self);
}
obj_killcounter.killcount += 1;
instance_destroy(self);