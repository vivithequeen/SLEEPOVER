function wall_at(px, py) {
    if (place_meeting(px, py, obj_wall)) return true;
    var _door = instance_place(px, py, obj_door);
    return _door != noone && _door.solid;
}
