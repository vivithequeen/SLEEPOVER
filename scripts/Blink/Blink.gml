function Blink(){
	var _randomized_items = tag_get_assets("random")
	// Create an array to store the active instances in the room
	var _instances_with_tag = [];

	// Loop through each tagged asset
	for (var i = 0; i < array_length(_randomized_items); i++) {
	    var _obj_asset = asset_get_index(_randomized_items[i]);

		// If the asset is an object, find all its instances in the room
		if (asset_get_type(_obj_asset) == asset_object) {
			with (_obj_asset) {
				array_push(_instances_with_tag, id);
			}
		}
	}
	//swap locations
	var _len = array_length(_instances_with_tag);
	for (var i = 0; i < _len; i++) {
		var a = irandom_range(0, _len - 1);
		var b = irandom_range(0, _len - 1);
		if (a == b) continue;

		var _ax = _instances_with_tag[a].x;
		var _ay = _instances_with_tag[a].y;
		var _bx = _instances_with_tag[b].x;
		var _by = _instances_with_tag[b].y;

		var _a_safe = !instance_place(_bx, _by, Player);
		var _b_safe = !instance_place(_ax, _ay, Player);
		if (!_a_safe || !_b_safe) continue;

		_instances_with_tag[a].x = _bx;
		_instances_with_tag[a].y = _by;
		_instances_with_tag[b].x = _ax;
		_instances_with_tag[b].y = _ay;
	}
}

