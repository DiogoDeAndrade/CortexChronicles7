
if (next_car != noone)
{
	next_car.prev_car = self;
}

if (prev_car != noone)
{
	var _x1 = bbox_left
	var _x2 = prev_car.bbox_right
	
	if abs(_x1 - _x2) > 0.1
	{
		x = x + sign(_x2 - _x1)
	}
}
