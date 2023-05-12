if xp_earned {
	image_xscale += xp_addrate; // 0.01
	if (image_xscale >= xp_addrate*total_xp*10){xp_earned = false;}
}
if image_xscale >= 1 {
	level_up = true;
	image_xscale = 0.001;
	image_index = 1;
	xp_earned = false;
	total_xp = 0;
}