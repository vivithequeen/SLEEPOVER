move_speed = 3;

if (point_distance(x, y, obj_mirror.x, obj_mirror.y) < 200){
	rem_up_counter -= 1
	if (rem_up_counter == 0){
		rem += 2
		if (rem < 5 || rem > 95){
			game_end()
		}
		rem_up_counter = 50
	}
} else {
	rem_drop_counter -= 1
	if (rem_drop_counter == 0){
		rem -= 1
		if (rem < 5 || rem > 95){
			game_end()
		}
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

if (_left){
	image_xscale = -0.75
} else if (_right){
	image_xscale = 0.75
}

if (_move_x != 0) {
    var _box = instance_place(x + _move_x, y, obj_box);
    if (_box != noone) {
        if (!try_push(_box, _move_x, 0)) {
            _move_x = 0;
        }
    } else if (wall_at(x + _move_x, y)) {
        _move_x = 0;
    }
    x += _move_x;
}

if (_move_y != 0) {
    var _box = instance_place(x, y + _move_y, obj_box);
    if (_box != noone) {
        if (!try_push(_box, 0, _move_y)) {
            _move_y = 0;
        }
    } else if (wall_at(x, y + _move_y)) {
        _move_y = 0;
    }
    y += _move_y;
}

if(keyboard_check_pressed(ord("B"))){
	Blink()
}
