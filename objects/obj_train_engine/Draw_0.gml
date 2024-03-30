/// @description Insert description here
// You can write your code in this editor
draw_self()

var _elapsed = current_time - time_of_last_health_change
if (current_health > 0) && (current_health < max_health) && (_elapsed < 1000)
{
	var _bx = (bbox_right + bbox_left) / 2
	var _by = bbox_top - 10
	var _p = 100 * current_health / max_health
	
	var _alpha = clamp((1000 - _elapsed) / 100, 0, 1)
	
	draw_set_alpha(_alpha);
	draw_healthbar(_bx - 10, _by - 1, _bx + 10, _by + 1, _p, c_black, c_red, c_green, 0, true, true);
	draw_set_alpha(1);
}
