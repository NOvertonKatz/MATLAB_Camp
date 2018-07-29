%% Example of Debugging and Scope
%
% This script is intended to show you how functions and scripts fit
% together and how to use the MATLAB debugger.
% The script finds the analytical solution to sin(x) in degrees, identifies
% it on a plot of sin(x), then calculates estimates of sin(x) using the
% taylor series approx with varying number of terms.
%
% Created on: 17 Jan 2018
% By: DrB
%
% -------------------------------------------------------------------------

clear
clc
close all

%% Consider the analytical value of sin(x) for angle
angle = 112; % in degrees
analyticalAnswer = sind(angle);

%% Lets identify that on a graph of sin
x = 0:1:360;
y = sind(x);
plot(x,y);
hold on;
plot(angle,analyticalAnswer,'ro');

%% Now lets use the function taylorSine and loop to see effect of different terms
taylorEst = zeros(1,1000);
tic
for i = 1:1000
    % Use function taylorSine
    taylorEst(i) = taylorSine(angle,i);
    % Then plot to see where estimate is
    plot(angle,taylorEst(i),'x');
end
toc
%% Create a legend and axis labels
title('sin(x) Analytical vs Taylor Estimates')
legend('sin(x)','analytical sol','taylor 1 term','taylor 2 term','taylor 3 term')
xlabel('x')
ylabel('sin(x)')