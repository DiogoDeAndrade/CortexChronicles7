/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (text != "")
{
	var _base_x = 640 - sprite_get_width(spr_text_box) * 0.5;
	var _base_y = 720 - sprite_get_height(spr_text_box) - 20;

	draw_sprite(spr_text_box, 0, _base_x, _base_y)

	if portrait != undefined
	{
		draw_sprite(portrait, 0, _base_x + 10, _base_y + 10)
		
		_base_x += sprite_get_width(portrait);
	}

	draw_set_font(fnt_main)
	draw_set_colour(c_white);
	draw_text_scrolling(_base_x + 15, _base_y + 10, text, 0.3, 10, undefined)
}
