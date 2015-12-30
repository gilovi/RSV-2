function [ C ] = LMMSE1( num_of_points)
%
sigmas = 1;
X = randsrc(4,num_of_points);
N = randn(4, num_of_points);
H = [1 4 1 3; 1 1 2 2; 1 0 0.01 0;1 0 1 1];


Y = H*X + N;

C = Y'*Y./num_of_points;



end

