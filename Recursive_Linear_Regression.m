
% Linear Regression Example
% Solves Ax=b using the method of least squares
%

%%%%%%%% Step 1: Find the first best fit line %%%%%%%%%
clear;
clc;

% Random Point Values Set 1
a0 = [1, 2; 3, 5];
b0 = [3; 4];

% Determine number of values
N = length(a0);

% Find the line of best fit
g0 = a0'*a0;
x0 = g0^(-1)*a0'*b0;

line0 = a0*x0;

% Adding new points

% Random Point Values Set 1
a1 = [5, 6; 1, 9];
b1 = [2; 3];

g1 =  g0 + a1'*a1;
x1 = x0 + g1^-1*a1'*(b1 - a1*x0)

line1 = a1*x1;

% Random Point Values Set 2
a2 = [3, 2; 11, 10];
b2 = [1; 11];

g2 =  g1 + a2'*a2;
x2 = x1 + g2^-1*a2'*(b2 - a2*x1)

line2 = a2*x2;