%  find the best result according to the columns from the 1st to the last
%  and the take the first one at the end if there are still multiple min/max
%  -------------------------------------------------------------------------
%  Input:
%        * Matrix: Matrice m x p where each column is to analyze
%        * method: either 'min' or 'max'
%  -------------------------------------------------------------------------
%  Output:
%        * Best: Best score of the last column
%        * idxBest: index in the original matrice (line number) that is the
%        best
%  -------------------------------------------------------------------------
%  Author: DO Cao Tri
%  Date: 2015-02-11
%  -------------------------------------------------------------------------
%  Example 1:
%  Matrix = [1 1 3 5 5; 2 1 3 4 5]';
%  method = 'min';
%  [Best,idxBest] = findBestResult_Bycolumn (Matrix, method)
%  Best = 1;
%  idx = 2;
% 
%  Example 2:
%  Matrix = [2 1 3 1 1; 2 5 3 3 1]';
%  method = 'min';
%  [Best,idxBest] = findBestResult_Bycolumn (Matrix, method)
%  Best = 1;
%  idx = 5;
%  -------------------------------------------------------------------------
%
