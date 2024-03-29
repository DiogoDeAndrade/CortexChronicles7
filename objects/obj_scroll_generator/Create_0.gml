/// @description Insert description here
// You can write your code in this editor
var _current_x = x;

if (!variable_instance_exists(id, "sprites")) 
{
    sprites = [spr_na];
}

while (_current_x < room_width)
{
	// Select image
	var _index = irandom_range(0, array_length(sprites) - 1);
	var _sprite = sprites[_index]

	// Create a random object
	var _inst = instance_create_layer(_current_x, y, "ScrollObjects", obj_scroller);
	
	_inst.sprite_index = _sprite
	_inst.scroll_type = scroll_type
	
	_current_x += sprite_get_width(_inst.sprite_index)
}
