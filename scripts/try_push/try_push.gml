function try_push(inst, dx, dy) {
    var _blocked = false;
    var _next = noone;

    with (inst) {
        if (wall_at(x + dx, y + dy)) {
            _blocked = true;
        } else {
            _next = instance_place(x + dx, y + dy, obj_box);
        }
    }

    if (_blocked) return false;

    if (_next != noone) {
        if (!try_push(_next, dx, dy)) {
            return false;
        }
    }

    inst.x += dx;
    inst.y += dy;
    return true;
}
