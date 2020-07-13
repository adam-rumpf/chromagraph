/// @desc Fade in or out.

// If no edge has been linked, do nothing
if (e == id || label < 0)
	exit;

// Fade in or out depending on whether endpoint has the correct label
if (e.tail.label == label || e.head.label == label)
{
	// If either endpoint is selected, fade in
	alpha += 0.05*(60/room_speed);
	alpha = min(alpha, 0.5);
}
else
{
	// Otherwise fade out
	alpha -= 0.05*(60/room_speed);
	alpha = max(alpha, 0);
}
