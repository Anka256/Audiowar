draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font_level)
draw_text_color(obj_level.x, obj_level.y, obj_level.player_level, c_red, c_red, c_red, c_red, 1);
draw_text_transformed_color(obj_killcounter.x, obj_killcounter.y + 80, "x " + string(25 - obj_killcounter.killcount), 0.6, 0.6, image_angle, c_black, c_black, c_black, c_black, 1)