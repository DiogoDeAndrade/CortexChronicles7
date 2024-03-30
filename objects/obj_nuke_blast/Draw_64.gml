/// @description Insert description here
// You can write your code in this editor
if (explosion_time > 0)
{
	var _elapsed = current_time - explosion_time
	
	var _t = clamp((_elapsed - 500) / 1000, 0, 1)
	
	var _color = lerp_color(c_white, c_black, _t)
	draw_set_color(_color)
	draw_rectangle(0, 0, 640, 480, false)
	
	var _x = sprite_get_width(spr_gameover) * 0.5
	var _y = sprite_get_height(spr_gameover) * 0.5
	draw_sprite_ext(spr_gameover, 0, room_width * 0.5 - _x, room_height * 0.5 - _y, 1, 1, 0, c_white, _t)
}
