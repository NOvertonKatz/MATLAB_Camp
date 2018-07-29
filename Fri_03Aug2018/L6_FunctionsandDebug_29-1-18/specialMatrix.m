function [A,n,m] = specialMatrix(n,m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A=[];

if nargin ~= 2
    error('Function requires exactly 2 arguments. See Documentation');
end

for r=1:n
    for c=1:m
        if r==1
            A(r,c)=c;
        elseif c==1
            A(r,c)=r;
        else
            A(r,c)=A(r,c-1)+A(r-1,c);
        end
    end
end
end

