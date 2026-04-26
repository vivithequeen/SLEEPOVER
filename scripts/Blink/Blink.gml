function Blink(){
	var _instances = [];

	with (obj_box)    { array_push(_instances, id); }
	with (obj_button) { array_push(_instances, id); }
	with (obj_door)   { array_push(_instances, id); }

	var _len = array_length(_instances);

	// shuffle positions
	for (var i = 0; i < _len; i++) {
		var a = irandom_range(0, _len - 1);
		var b = irandom_range(0, _len - 1);
		if (a == b) continue;

		var _ax = _instances[a].x;
		var _ay = _instances[a].y;
		var _bx = _instances[b].x;
		var _by = _instances[b].y;

		if (instance_place(_bx, _by, Player) || instance_place(_ax, _ay, Player)) continue;

		_instances[a].x = _bx;
		_instances[a].y = _by;
		_instances[b].x = _ax;
		_instances[b].y = _ay;
	}

	// randomize scales
	for (var i = 0; i < _len; i++) {
		var _scale = choose(0.5, 1, 1, 1, 1.5, 2);
		_instances[i].image_xscale = _scale;
		_instances[i].image_yscale = _scale;
	}
}
