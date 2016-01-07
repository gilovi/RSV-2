function [ C, P_error ] = LMMSE1( num_of_points,sigmas)
%
X = randsrc(4,num_of_points);
N = randn(4, num_of_points);
H = [1 4 1 3; 1 1 2 2; 1 0 0.01 0;1 0 1 1];

lmmse = H'/((H*H')+(sigmas*eye(4)));
Y = H*X + N;

X_hat = lmmse * Y;


C = (X-X_hat)*(X-X_hat)'./num_of_points;

d = sign(X_hat);
P_error = sum((X(:)-d(:))~=0)/numel(X);


end

