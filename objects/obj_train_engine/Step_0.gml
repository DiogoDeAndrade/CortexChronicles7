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
	if (next_car != noone)
	{
		next_car.prev_car = self;
	}

	var _anchor_point1 = localToWorld(x, y, direction, link1_pos_x, 0)
	var _anchor_point2 = localToWorld(next_car.x, next_car.y, -next_car.direction, next_car.link2_pos_x, 0)
	
	var _dist = point_distance(_anchor_point1[0], _anchor_point1[1], _anchor_point2[0], _anchor_point2[1]);
	
	if (_dist < 1)
	{	
		joint_id = physics_joint_revolute_create(self, next_car, _anchor_point1[0], _anchor_point1[1], -20, 20, true, 0, 0, false, true)
	//	joint_id = physics_joint_distance_create(self, next_car, _anchor_point1[0], _anchor_point1[1], _anchor_point2[0], _anchor_point2[1], true)
	//	joint_id = physics_joint_rope_create(self, next_car, _anchor_point1[0], _anchor_point1[1], _anchor_point2[0], _anchor_point2[1], 10, true)
	}
	else
	{
		var _mv = movement_speed * 2
		if (_mv == 0) _mv = 2.0
		_mv = min(_dist, _mv)
		
		// Catch up, fast
		var _dir = point_direction(_anchor_point2[0], _anchor_point2[1], _anchor_point1[0], _anchor_point1[1]);
		var _deltaX = lengthdir_x(_mv, _dir)
		var _deltaY = lengthdir_y(_mv, _dir)
		
		next_car.phy_speed_x = _deltaX
		next_car.phy_speed_y = _deltaY
		
		next_car.phy_rotation = phy_rotation
	}
}
