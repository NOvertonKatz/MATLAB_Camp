%% Conditional Statements using Logic
% Get a value from a user and tell them something about it. If the user
% types in a letter, tell them they are an idiot
clc;
number = input('Type in your favorite number here: ');
if number < 0
    fprintf('Your favorite number is %+g? Negative numbers are cool!',number);
end
if number > 0
    fprintf('Nice, %g is a great number',number);
end
if ~(number<0) & ~(number>0) & ~(number==0)