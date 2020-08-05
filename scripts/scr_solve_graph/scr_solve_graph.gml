/// @func scr_solve_graph(g, type, lim)
/// @desc Attempts to solve a given graph puzzle via exhaustive search. Already-colored elements are treated as constant and used for an advanced start.
/// @param {obj_graph} g Graph to solve.
/// @param {int} type Puzzle type.
/// @param {int} lim Puzzle limit.

// Rename arguments
var g, type, lim;
g = argument[0];
type = argument[1];
lim = argument[2];

// Set iteration limit
var cutoff = 5000000000;
var iter = 0;

// Procedure depends on puzzle type
switch type
{
	// Vertex coloring puzzles
	case 1:
	case 4:
	case 7:
	case 8:
		
		// Record constant and variable vertex labels
		var vc = [];
		var vv = [];
		for (var i = 0; i < array_length_1d(g.v); i++)
		{
			if (g.v[i].label >= 0)
				vc[array_length_1d(vc)] = i;
			else
				vv[array_length_1d(vv)] = i;
		}
		
		// Initialize array of guesses and apply to graph
		var sol = [];
		for (var i = 0; i < array_length_1d(vv); i++)
		{
			sol[i] = 0;
			g.v[vv[i]].label = 0;
		}
		
		// Check solution
		switch type
		{
			case 1: global.puzzle_solved = scr_properly_colored(g);
			case 4: global.puzzle_solved = scr_graceful_edge_update(g);
			case 7: global.puzzle_solved = scr_properly_fall_colored(g);
			case 8: global.puzzle_solved = scr_equitably_colored(g, 0);
		}
		
		// Go through solutions until finding a valid one
		var falling = false; // whether the test solution has decreased
		while (global.puzzle_solved == false && iter < cutoff && falling == false)
		{
			iter++;
			var temp = sol[0];
			
			// Increment guess and apply to graph
			sol = scr_increment_word(sol, lim);
			for (var i = 0; i < array_length_1d(vv); i++)
				g.v[vv[i]].label = sol[i];
			
			// Check whether the value has fallen
			if (sol[0] < temp)
			{
				show_message("Wrapping around.");
				falling = true;
			}
			
			// Check solution
			switch type
			{
				case 1: global.puzzle_solved = scr_properly_colored(g);
				case 4: global.puzzle_solved = scr_graceful_edge_update(g);
				case 7: global.puzzle_solved = scr_properly_fall_colored(g);
				case 8: global.puzzle_solved = scr_equitably_colored(g, 0);
			}
		}
		
		if (global.puzzle_solved == false)
			show_message("Cut off after " + string(iter) + " iterations.");
		
		break;
}
