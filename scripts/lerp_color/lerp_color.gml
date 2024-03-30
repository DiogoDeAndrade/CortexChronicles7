// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lerp_color(_startColor, _endColor, _t)
{
	// Decompose colors into RGB components
	var _startR = colour_get_red(_startColor);
	var _startG = colour_get_green(_startColor);
	var _startB = colour_get_blue(_startColor);

	var _endR = colour_get_red(_endColor);
	var _endG = colour_get_green(_endColor);
	var _endB = colour_get_blue(_endColor);

	// Interpolate each color component
	var _lerpR = lerp(_startR, _endR, _t);
	var _lerpG = lerp(_startG, _endG, _t);
	var _lerpB = lerp(_startB, _endB, _t);

	// Recombine the interpolated components into a single color
	return make_colour_rgb(_lerpR, _lerpG, _lerpB);
}
