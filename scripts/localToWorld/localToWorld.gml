/// @function localToWorld(object, local_x, local_y)
/// @description Converts local position to world space for the given object.
/// @param {instance} object - The instance with x, y, and direction representing world space position and rotation.
/// @param {real} local_x - The local x coordinate relative to the object.
/// @param {real} local_y - The local y coordinate relative to the object.
/// @return {array} - An array where the first element is the world x coordinate, and the second element is the world y coordinate.

function localToWorld(object, local_x, local_y) {
    var offsetX = object.x;
    var offsetY = object.y;
    var rotationDegrees = object.direction;
    
    // Convert rotation to radians
    var rotationRadians = rotationDegrees * (pi / 180);

    // Rotate local position
    var rotatedX = cos(rotationRadians) * local_x - sin(rotationRadians) * local_y;
    var rotatedY = sin(rotationRadians) * local_x + cos(rotationRadians) * local_y;

    // Translate to world space
    var worldX = rotatedX + offsetX;
    var worldY = rotatedY + offsetY;

    // Return world position as an array
    return [worldX, worldY];
}
