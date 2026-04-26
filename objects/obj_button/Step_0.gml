
var _pressed = instance_place(x, y, obj_box) != noone || instance_place(x, y, Player) != noone;

with (obj_door) {
    solid   = !_pressed;
    visible = !_pressed;
}