/// @func scr_array_random_sample(arr, n, rep)
/// @desc Chooses random samples from an array, either with or without repetition.
/// @param {real[]} arr Array to be sampled from.
/// @param {int} n Number of samples to choose.
/// @param {bool} rep Whether repetition is allowed (true to sample with repetition, false to sample without repetition)
/// @return {real[]} Array of random samples.

// Rename arguments
var arr, n, rep;
arr = argument[0];
n = argument[1];
rep = argument[2];

// Set local variables
var m = array_length_1d(arr); // number of available samples
var samples = []; // output array

// Generate samples
for (var i = 0; i < n; i++)
{
	var elem; // chosen element
	
	// Sampling with repetition
	if (rep == true)
		elem = arr[irandom(m-1)];
	// Samplign without repetition
	else
	{
		// Create a list of unique samples
		var available = []; // available for sampling
		var al = 0; // number of available samples
		for (var j = 0; j < m; j++)
		{
			// Add to options if not already in sample list
			if (scr_find_array(samples, arr[j]) < 0)
			{
				available[al] = arr[j];
				al++;
			}
		}
		
		// Stop if no more unique samples remain
		if (al < 1)
			break;
		
		// Choose a random available sample
		elem = available[irandom(al-1)];
	}
	
	// Add chosen sample to list
	samples[i] = elem;
}

return samples;
