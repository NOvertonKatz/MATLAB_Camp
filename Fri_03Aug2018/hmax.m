function [max_height] = hmax(velocity)
%hmax calculates the maximum height of a projectile launched upwards from
%some initial velocity
%   Input Arguments:
%   velocity=initial velocity of the ball upwards
%   Output Arguments:
%   max_height=the maximum height the ball achieves above release point

max_height=(velocity^2)/(2*9.81);

end

