function [taylorEstimate] = taylorSine(angleDeg,numTerms)
%taylorSine A function to estimate sine using the Taylor series expansion
%   taylorSine(angleDeg,numTerms) returns the estimate of sine according to
%   the taylor series expansion
% Inputs:
%   angleDeg - the angle of interest in degrees
%   *numTerms (optional) - the number of taylor terms to evaluate. If user
%   does not specify, defaults to 5
% Outputs:
%   taylorEstimate - the taylor series estimate of sine

if nargin < 1 || nargin > 2
    error('Incorrect number of input args. See help');
elseif nargin == 1
    numTerms = 5;
end

angleRad = deg2rad(angleDeg);

taylorEstimate=0; % initialize y

for k=0:numTerms-1
    taylorEstimate=taylorEstimate+(-1)^k*angleRad^(2*k+1)/factorial(2*k+1);
end

end

