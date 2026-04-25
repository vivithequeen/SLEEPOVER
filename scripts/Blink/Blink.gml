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
	for(var i = 0; i < _len; i++)
	{
		var a = irandom_range(0, _len - 1);
		var b = irandom_range(0, _len - 1);

		var a_x = _instances_with_tag[a].x;
		var a_y = _instances_with_tag[a].y;

		_instances_with_tag[a].x = _instances_with_tag[b].x;
		_instances_with_tag[a].y = _instances_with_tag[b].y;

		_instances_with_tag[b].x = a_x;
		_instances_with_tag[b].y = a_y;
	}
}

