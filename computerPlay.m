function [r, c] = computerPlay(Board, openS, compS, opS)
%have the computer make a valid tic-tac-toe play
% outputs
%   r = row to play
%   c = column to play
% inputs
%   Board = 3x3 tic-tac-tow 
%   openS = symbol for an open space
%   compS = symbol for the computer
%   opS = symbol for the opponet

% make a random valid move
validMove = false;  
while ~validMove
    c = randi(3);
    r = randi(3);
    validMove = playValid(Board, r, c, openS);
end
% print computer play
fprintf('Player 2 plays [%i, %i]\n', r, c);
pause(2);
end

