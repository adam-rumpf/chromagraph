/// @func scr_grid_index(m, n, i, j)
/// @desc Finds the index of a specified grid cell, assuming that they are numbered beginning at 0 and advancing column-by-colum within row-by-row (i.e. like reading English).
/// @param {int} m Number of rows.
/// @param {int} n Number of columns.
/// @param {int} i Row index.
/// @param {int} j Column index.
/// @return {int} Number of specified cell under linear naming scheme.

// Rename arguments
var m, n, ii, jj;
m = argument[0];
n = argument[1];
ii = argument[2];
jj = argument[3];

return n*ii + jj;
