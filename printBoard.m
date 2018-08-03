function [] = printBoard( Board )
%Print a tic-tac-toe board
%   Board is a 3x3 matrix
clc
fprintf('\n')
for row=1:3
    fprintf(' %i | %i | %i \n', Board(row,:))
    if(row<3)
        fprintf('----------\n')
    end
end
fprintf('\n')
end