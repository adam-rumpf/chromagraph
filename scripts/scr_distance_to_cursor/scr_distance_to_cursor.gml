/// @func scr_distance_to_cursor(obj)
/// @desc Calculates the distance from an object to the cursor (measurement depends on object type).
/// @param {int} obj Object ID.
/// @return {real} Distance from specified object to cursor.

// Rename argument
var obj = argument[0];

// Determine measurement method based on object type
var dist = 0;
switch obj.object_index
{
	// Button
	case obj_button:
		//###
		break;
	
	// Edge
	case obj_edge:
		//###
		break;
	
	// Default (mostly used for vertices)
	default:
		//###
		break;
}

return dist;
