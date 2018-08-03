%% play a tic-tac-toe game
clc;  clear all;
size = 3;
Board = zeros(size);
maxPlays = size^2;
p1 = 1;   p2 = 2;   openSym = 0;
% state player symbols
fprintf('Welcome to a game of tic-tac-toe\n\n');
fprintf('Player 1, you are symbol %i\n', p1);
fprintf('Player 2, you are symbol %i\n', p2);
computer = input('Is playler 2 a computer? (1=yes, 0=no)  ');
clc
% start the game
won = false;    winner = 0;   plays = 0;
while (~won && (plays<maxPlays))
    % ask player 1 for move, check if valid, and check if won
    validMove = false;
    while ~validMove
        spot = input('Player 1, choose a spot to play (row, col)   ');
        r = spot(1);
        c = spot(2);
        validMove = playValid(Board, r, c, openSym);
    end
    Board(r,c) = p1;
    printBoard(Board);
    plays = plays + 1;
    [won, winner] = checkWinner(Board, p1, p2);
    if (won || (plays>=maxPlays))
        break
    end
    
    % ask player 2 for move, check if valid, and check if won
    if(computer) % a computer player
        [r, c] = computerPlay(Board, openSym, p2, p1);
    else % a human player
        validMove = false;  
        while ~validMove
            spot = input('Player 2, choose a spot to play (row, col)   ');
            r = spot(1);
            c = spot(2);
            validMove = playValid(Board, r, c, openSym);
        end
    end
    Board(r,c) = p2;
    printBoard(Board);
    plays = plays + 1;
    [won, winner] = checkWinner(Board, p1, p2);
end
% Congradulate winner
if (winner == p1)
    fprintf('Player 1 wins!\n')
elseif (winner == p2)
    fprintf('Player 2 wins!\n')
else
    fprintf('Tie.\n')
end