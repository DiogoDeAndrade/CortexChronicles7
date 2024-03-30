
var pd = point_direction(x, y, mouse_x, mouse_y);

var dd = angle_difference(image_angle, pd);

image_angle -= min(abs(dd), 5) * sign(dd);

// WASD movement input
var _move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Apply acceleration based on input
if (_move_x != 0) 
{
    speed_x += accel * _move_x;
    speed_x = clamp(speed_x, -max_speed, max_speed);
} 
else 
{
    // Apply inertia when not moving
    speed_x *= inertia;
}

if (_move_y != 0) 
{
    speed_y += accel * _move_y;
    speed_y = clamp(speed_y, -max_speed, max_speed);
} 
else 
{
    // Apply inertia when not moving
    speed_y *= inertia;
}

// Update position
x = clamp(x + speed_x, 0, room_width);
y = clamp(y + speed_y, 0, room_height);

// Optionally, you can add a check to stop completely if speed is very low
// to prevent endless drifting due to very small speed values
if (abs(speed_x) < 0.01) speed_x = 0;
if (abs(speed_y) < 0.01) speed_y = 0;

if heat > 0
{
	if (overheat) heat -= coolSpeed	* 0.5
	else heat -= coolSpeed	
}
else
{
	heat = 0
	overheat = false
}