function [ valid ] = playValid(Board, r, c, openS)
%Check if a tic-tac-toe play is open
% output
%   valid = true if the play is open
% inputs
%   Board = 3x3 matrix
%   r = row to play
%   c = column to play
%   openS = symbol for an open spot
valid = (Board(r, c) == openS);
end

