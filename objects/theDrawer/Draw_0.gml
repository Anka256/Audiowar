draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(font_level)
// dj seviyesi
draw_text_color(obj_level.x, obj_level.y, obj_level.player_level, c_red, c_red, c_red, c_red, 1);

if !instance_exists(obj_countdown){ // kalan süre
draw_text_color(obj_level.x, obj_level.y + 180, obj_tempo.wave_time-round(obj_tempo.counter/60), c_yellow, c_yellow, c_yellow, c_yellow, 1);}