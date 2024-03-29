/// @description Insert description here
// You can write your code in this editor

x += global.scroll_speed

if (bbox_left > room_width)
{
	// Warp to the other side
	var _min_x = bbox_left;
	var _search_type = scroll_type;
	
	with (object_index)
	{
		if (scroll_type == _search_type)
		{
			_min_x = min(_min_x, bbox_left);
		}
	}
	
	var _width = (bbox_right - bbox_left) - 1;

	x = _min_x - _width + sprite_get_xoffset(sprite_index)
}
