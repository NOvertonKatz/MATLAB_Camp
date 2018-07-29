 % calculate sin(x) by using taylor series and compare iterations

% this time lets use loops

tic
x=150;
x_radians=x*pi/180;
n=7;
y=0;
for k=0:n-1
    y=y+(-1)^k*x_radians^(2*k+1)/factorial(2*k+1);
end
fprintf('Seven terms: %f\n',y);
toc