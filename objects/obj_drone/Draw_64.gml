/// @description Insert description here
// You can write your code in this editor

display_set_gui_size(320, 180)

if (current_health > 0)
{
	draw_set_font(fnt_small)
	draw_set_valign(fa_middle)
	draw_text(5, 7, "ARMOR:");
	draw_healthbar(37, 5, 80, 11, current_health, c_black, c_red, c_green, 0, true, true)

	draw_set_font(fnt_small)
	draw_set_valign(fa_middle)
	draw_text(5, 17, "HEAT:");
	draw_healthbar(28, 15, 80, 21, heat, c_black, c_yellow, c_red, 0, true, true)
}
