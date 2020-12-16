/// @description Collect Item



if(keyboard_check_pressed(global.key_enter)){
	var key = object_get_name(other.object_index);
	var value = 1;

	if (ds_map_exists(inventory, key)) {
		value += ds_map_find_value(inventory, key);
		ds_map_replace(inventory, key, value);
	} else {
		ds_map_add(inventory, key, value);
	}

	instance_destroy(other);

	show_message("Key: " + string(key) + ", Value: " + string(ds_map_find_value(inventory, key)));

}

