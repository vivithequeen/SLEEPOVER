move_speed = 3;

var _right = keyboard_check(vk_right)
var _left = keyboard_check(vk_left)
var _up = keyboard_check(vk_up)
var _down = keyboard_check(vk_down)

var _input_x = _right - _left;
var _input_y = _down - _up;

var _move_x = _input_x * move_speed
var _move_y = _input_y * move_speed

if (_move_x != 0) {
    var _box = instance_place(x + _move_x, y, obj_box);
    if (_box != noone) {
        with (_box) {
            if (!place_meeting(x + _move_x, y, obj_wall)) {
                x += _move_x;
            } else {
                _move_x = 0;
            }
        }
    } else if (place_meeting(x + _move_x, y, obj_wall)) {
        _move_x = 0;
    }
    x += _move_x;
}

if (_move_y != 0) {
    var _box = instance_place(x, y + _move_y, obj_box);
    if (_box != noone) {
        with (_box) {
            if (!place_meeting(x, y + _move_y, obj_wall)) {
                y += _move_y;
            } else {
                _move_y = 0;
            }
        }
    } else if (place_meeting(x, y + _move_y, obj_wall)) {
        _move_y = 0;
    }
    y += _move_y;
}	

