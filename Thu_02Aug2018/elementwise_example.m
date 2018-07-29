% calculate sin(x) by using taylor series and compare iterations

% first use elementwise operations. ALWAYS DO ELEMENTWISE IF POSSIBLE in
% MATLAB. That is the power of MATLAB.

x=150;
x_radians=x*pi/180;

n=0:2;
y=(-1).^n.*(x_radians.^(2.*n+1))./factorial(2.*n+1);
fprintf('Three terms: %f\n',sum(y));

n=0:4;
y=(-1).^n.*(x_radians.^(2.*n+1))./factorial(2.*n+1);
fprintf('Five terms: %f\n',sum(y));

tic
n=0:6;
y=(-1).^n.*(x_radians.^(2.*n+1))./factorial(2.*n+1);
fprintf('Seven terms: %f\n',sum(y));
toc