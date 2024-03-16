/// @description Insert description here
// You can write your code in this editor
if (input_enable)
{
	motion_set(image_angle, movement_speed)
	
	phy_speed_x = hspeed
	phy_speed_y = vspeed
}

if (joint_id == -1) && (next_car != noone)
{
	var _anchor_point = localToWorld(self, -4, 0)
	
	joint_id = physics_joint_revolute_create(self, next_car, _anchor_point[0], _anchor_point[1], -20, 20, true, 0, 0, false, true)
}
