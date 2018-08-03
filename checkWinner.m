function [won, player] = checkWinner(Board, p1, p2)
%check for a tic-tac-toe winner
% inputs:
%   Board = the game board as a 3x3 matrix
%   p1 = symbol for player 1
%   p2 = symbol for player 2
% outputs:
%   won = true if the game is won, false otherwise
%   player = the player who won

won = false;
% check each row
for r = 1:3
    if ((Board(r, 1) == p1) && (Board(r, 2) == p1) && (Board(r, 3) == p1))
        won = true;
        player = p1;
    elseif ((Board(r, 1) == p2) && (Board(r, 2) == p2) && (Board(r, 3) == p2))
        won = true;
        player = p2;
    end
end
% check each column
for c = 1:3
    if ((Board(1, c) == p1) && (Board(2, c) == p1) && (Board(3, c) == p1))
        won = true;
        player = p1;
    elseif ((Board(1, c) == p2) && (Board(2, c) == p2) && (Board(3, c) == p2))
        won = true;
        player = p2;
    end
end
% check diagonal
for d = 1:3
    % top diagonal
    if ((Board(d, d) == p1) && (Board(d, d) == p1) && (Board(d, d) == p1))
        won = true;
        player = p1;
    elseif ((Board(d, d) == p2) && (Board(d, d) == p2) && (Board(d, d) == p2))
        won = true;
        player = p2;
    end
    % bottom diagonal
    d2 = 3-d;
    if ((Board(d, d2) == p1) && (Board(d, d2) == p1) && (Board(d, d2) == p1))
        won = true;
        player = p1;
    elseif ((Board(d, d2) == p2) && (Board(d, d2) == p2) && (Board(d, d2) == p2))
        won = true;
        player = p2;
    end
end

end