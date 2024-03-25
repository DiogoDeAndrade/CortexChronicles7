/// @description Insert description here
// You can write your code in this editor
var _contact_count = phy_collision_points
if (_contact_count > 0)
{
	var _normal_x = phy_col_normal_x[0]
	var _normal_y = phy_col_normal_y[0]

	var _normal_dir = point_direction(0,0, _normal_x, _normal_y)
	
	var _angle = angle_difference(_normal_dir, direction)
	
	if (_angle < 15)
	{
		// Head on collision, explode train
		deal_damage(100)
	}
}
