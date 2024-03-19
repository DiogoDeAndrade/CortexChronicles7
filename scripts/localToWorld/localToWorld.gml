/// @function localToWorld(object, local_x, local_y)
/// @description Converts local position to world space for the given object.
/// @param {real} _offsetX - world x coordinate of the object
/// @param {real} _offsetY - world y coordinate of the object
/// @param {real} _rotationDegrees - rotation angle of the object
/// @param {real} _local_x - The local x coordinate relative to the object.
/// @param {real} _local_y - The local y coordinate relative to the object.
/// @return {array} - An array where the first element is the world x coordinate, and the second element is the world y coordinate.

function localToWorld(_offsetX, _offsetY, _rotationDegrees, _local_x, _local_y) {
   
    // Convert rotation to radians
    var _rotationRadians = _rotationDegrees * (pi / 180);

    // Rotate local position
    var _rotatedX = cos(_rotationRadians) * _local_x - sin(_rotationRadians) * _local_y;
    var _rotatedY = sin(_rotationRadians) * _local_x + cos(_rotationRadians) * _local_y;

    // Translate to world space
    var _worldX = _rotatedX + _offsetX;
    var _worldY = _rotatedY + _offsetY;

    // Return world position as an array
    return [_worldX, _worldY];
}
