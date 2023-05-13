function scr_countdown(){
	counter += 1;
	x = obj_enayi.x;
	y = obj_enayi.y - 200;
	
	if ((counter >=   0) && (counter <  15)){xs += 1/15 ys += 1/15 ;			   } // 3 out
	if ((counter >=  15) && (counter <  30)){xs -= 1/15 ys -= 1/15;	  		       } // 3 in
	if ((counter >=  30) && (counter <  45)){image_index = 1 xs += 1/15 ys += 1/15;} // 2 out
	if ((counter >=  45) && (counter <  60)){xs -= 1/15 ys -= 1/15;                } // 2 in
	if ((counter >=  60) && (counter <  75)){image_index = 2 xs += 1/15 ys += 1/15;} // 1 out
	if ((counter >=  75) && (counter <  90)){xs -= 1/15 ys -= 1/15;   			   } // 1 in
	
	if ((counter >=  90) && (counter <= 150)){
		image_index = 3;
		if ((counter >=  90) && (counter < 105)){xs += 1/15 ys += 1/15;                  } // go out
		if ((counter >= 105) && (counter < 120)){image_angle += 2;                       } // go turn
		if ((counter >= 120) && (counter < 135)){image_angle -= 4;                       } // go turn
		if ((counter >= 135) && (counter <= 150)){image_angle += 2 xs -= 1/15 ys -= 1/15;} // go turn
	}
	
	if (counter == 150){ // next wave koşulu
		with(obj_tempo){
			counter = 0;
			wave += 1;
			switch (wave){ // wave süreleri
				case 2:
					wave_time = 20;
				break;
				case 3:
					wave_time = 30;
				break;
				case 4:
					wave_time = 40;
				break;
				case 5:
					wave_time = 50;
				break;
				case 6:
					wave_time = 60;
				break;
			}
		}
			
		instance_destroy(self);
	}
}