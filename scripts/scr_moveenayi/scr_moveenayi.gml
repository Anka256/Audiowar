function scr_moveenayi(){
	left = keyboard_check(ord("A")); 
	right = keyboard_check(ord("D"));
	up = keyboard_check(ord("W"));  
	down = keyboard_check(ord("S")) ;
	
	hsp = (right - left) * speed_enayi;
	vsp = (up - down) * speed_enayi;
	x += hsp;
	y += -vsp;
	if (hsp != 0) image_xscale = sign(hsp);
}