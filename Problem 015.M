% Question: Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
%           How many such routes are there through a 20×20 grid?
%
% Answer: 137846528820
% Runtime: .001371 seconds
% Commentary: Here's insight that will let you solve this problem easily for any grid, square or otherwise ---
%             For an m x n grid, it takes exactly m + n moves (right and down) to work from the top left of the grid to the bottom right. In creating any path
%             between these two points, we must choose which of our m + n moves we want to be 'right moves'. For example, in a 2x2 grid, if we choose our first two
%             moves to be right moves, then the next two moves must be down moves, and we now have a valid path.
%             It follows that the total number of paths can be decribed as the total number of ways to choose which moves are 'right moves'.
%             For this we can use the combinatorics formula, shorthanded as (m+n)C(n).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

m=20;
n=20;

result=nchoosek(m+n,m);

disp(result)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

