/// @description Returns an array of instances of a specific type within a radius, filtered by angle tolerance.
/// @param objType The type of object to search for.
/// @param x The x-coordinate of the center of the search circle.
/// @param y The y-coordinate of the center of the search circle.
/// @param radius The radius of the search circle.
/// @param direction The direction to compare against.
/// @param angle_tolerance The tolerance for angle comparison.
/// @return An array of instances meeting the criteria.

function getAllInRadius(_objType, _x, _y, _radius, _direction, _angle_tolerance) 
{
    var _collisionList = ds_list_create(); // Create a list to hold the initial set of collisions
    var _resultArray = []; // Initialize the array to hold the final filtered set of instances
    var _instanceId;
    
    // Find all instances of objType within the circle
    var _num = collision_circle_list(_x, _y, _radius, _objType, false, true, _collisionList, true);
    
    // Loop through the collision list and filter by angle
    for (var _i = 0; _i < _num; _i++) {
        _instanceId = _collisionList[| _i]; // Get the instance ID from the list
        var _instanceDir = point_direction(x, y, _instanceId.x, _instanceId.y); // Calculate direction from (x, y) to the instance
        var _angleDiff = abs(angle_difference(_direction, _instanceDir)); // Calculate the absolute difference in angles
        
        // Check if the angle difference is within the tolerance
        if (_angleDiff <= _angle_tolerance) {
            // If yes, add the instance to the result array
			var _new_index = array_length(_resultArray)
            _resultArray[_new_index] = _instanceId;
        }
    }
    
    // Cleanup: Destroy the collision list to free memory
    ds_list_destroy(_collisionList);
    
    // Return the filtered set of instances as an array
    return _resultArray;
}
