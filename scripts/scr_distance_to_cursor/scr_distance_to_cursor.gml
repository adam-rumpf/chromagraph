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
	// Edge
	case obj_edge:
		
		// Find distance between endpoints
		var hx = obj.head.x;
		var hy = obj.head.y;
		var tx = obj.tail.x;
		var ty = obj.tail.y;
		var length = scr_vector_distance([hx, hy], [tx, ty]); // length of edge
		
		// Generate intermediate points
		var num = max(3, 2*round(length/(2*20)) + 1); // number of points (always odd, approx 1 per 20 px)
		var pt = []; // list of points
		for (var i = 0; i < num; i++)
		{
			var t = i/(num-1); // convex parameter
			pt[i,0] = (1-t)*tx + t*hx;
			pt[i,1] = (1-t)*ty + t*hy;
		}
		
		// Generate distances to all intermediate points
		var dist_pt = [];
		for (var i = 0; i < num; i++)
			dist_pt[i] = scr_vector_distance([mouse_x, mouse_y], [pt[i,0], pt[i,1]]);
		
		// Take least distance (scaled up to make vertex selection easier)
		dist = 1.25*scr_array_min(dist_pt);
		
		break;
	
	// Default (mostly used for vertices)
	default:
		
		// Calculate distance to object center
		dist = scr_vector_distance([mouse_x, mouse_y], [obj.x, obj.y]);
		
		break;
}

return dist;
