scr_moveenayi();

var target_x = x - camW()/2
var target_y = y - 150;
var cam_x = lerp(camX(), target_x, .1)
var cam_y = lerp(camY(), target_y, .1)
cam_x = clamp(cam_x, 0, room_width-camW())
cam_y = clamp(cam_y, 0, room_height-camH())
camPos(cam_x, cam_y)