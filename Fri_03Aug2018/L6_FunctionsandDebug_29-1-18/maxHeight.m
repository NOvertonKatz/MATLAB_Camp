function [hmax] = maxHeight(v0,g)
%maxHeight Calculates the height of an object thrown upward at velocity v0
%assuming gravity g
%
% Inputs:
%   v0 - initial velocity in m/s
%   g - *optional* acceleration due to gravity (default: 9.81)
% Outputs:
%   hamx - the maximum height acheieved

% Checks number of arguments
if nargin < 1 || nargin > 2
    error('idiot')
elseif nargin == 1
    g = 9.81; % assume earth
end

hmax = v0.^2/2*g; % calc hmax

end

