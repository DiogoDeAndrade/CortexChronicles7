/// @description Insert description here
// You can write your code in this editor
draw_self()

if alpha > 0
{
	draw_set_alpha(alpha);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, 1280, 720, false);
}

draw_set_alpha(1);
