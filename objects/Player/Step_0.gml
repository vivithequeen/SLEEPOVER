
move_speed = 40;

var _right = keyboard_check(vk_right)
var _left = keyboard_check(vk_left)
var _up = keyboard_check(vk_up)
var _down = keyboard_check(vk_down)

var _input_x = _right - _left;
var _input_y = _down - _up;

var _move_x = _input_x * move_speed
var _move_y = _input_y * move_speed


if (_input_x != 0 || _input_y != 0) {
    // Get the angle of movement
    var _dir = point_direction(0, 0, _input_x, _input_y);


	move_and_collide(_move_x, _move_y, obj_wall)
}
