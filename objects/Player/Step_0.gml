
move_speed = 40;

if (point_distance(x, y, obj_mirror.x, obj_mirror.y) < 200){
	rem_up_counter -= 1
	if (rem_up_counter = 0){
		rem += 2
		if (rem < 5 || rem > 95){
			game_end()
		}
		rem_color()
		rem_up_counter = 50
	}
} else {
	rem_drop_counter -= 1
	if (rem_drop_counter = 0){
		rem -= 1
		if (rem < 5 || rem > 95){
			game_end()
		}
		rem_color()
		rem_drop_counter = 100
	}
}

var _right = keyboard_check(vk_right)
var _left = keyboard_check(vk_left)
var _up = keyboard_check(vk_up)
var _down = keyboard_check(vk_down)

var _input_x = _right - _left;
var _input_y = _down - _up;

var _move_x = _input_x * move_speed
var _move_y = _input_y * move_speed

if (_left) {
	image_xscale = -0.75
} else if (_right) {
	image_xscale = 0.75
}


if (_input_x != 0 || _input_y != 0) {
    // Get the angle of movement
    var _dir = point_direction(0, 0, _input_x, _input_y);

	move_and_collide(_move_x, _move_y, obj_wall)
}
