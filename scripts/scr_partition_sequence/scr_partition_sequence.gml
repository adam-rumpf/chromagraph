/// @func scr_partition_sequence(seq, seg, eps)
/// @desc Partitions a given sequence into a sequence of disjoint subsequences.
/// @param {real[]} seq Array to be partitioned.
/// @param {int} seg Number of partitions to create.
/// @param {real} eps Unevenness parameter, representing how far partition boundaries are allowed to deviate from being as even as possible.
/// @returns {real[]} 2D array whose rows correspond to the partitions.

// Rename arguments
var seq, seg, eps;
seq = argument[0];
seg = argument[1];
eps = argument[2];

// Get array length
var n = array_length_1d(seq);

// Initialize partition boundaries
var b = array_create(seg+1, 0);
var ascending = false;

// Generate boundaries until achieving an ascending sequence
while (ascending == false)
{
	for (var i = 0; i <= seg; i++)
	{
		// All are initially evenly-spaced
		b[i] = (n*i)/seg;
	
		// Intermediate boundaries are randomly perturbed
		if (i > 0 && i < seg)
			b[i] += random_range(-eps, eps);
	
		// Round to the nearest integer
		b[i] = round(b[i]);
	}

	// Test whether the boundaries are an ascending sequence
	ascending = scr_ascending_sequence(b);
}

// Generate a list of lists based on the partition boundaries
var part; // 2D array to hold partitions
var k = 0; // current list position
for (var i = 0; i < seg; i++)
{
	// Fill the elements of the partition
	var j = 0; // current partition position
	while (k < b[i+1])
	{
		part[i,j] = seq[k];
		j++;
		k++;
	}
}

return part;
