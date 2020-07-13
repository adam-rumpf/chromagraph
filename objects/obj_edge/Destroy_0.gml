/// @desc Destroy edge effect objects.

instance_destroy(eh);
for (var i = 0; i < array_length_1d(ec); i++)
	instance_destroy(ec[i]);
