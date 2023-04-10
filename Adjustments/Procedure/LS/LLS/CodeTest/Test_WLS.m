clear all
clc
% nargout == 1
A=[1 -1;-1 2;2 -3];
L=[5;-4;10];
P=eye(3);
[x] = WLS(A,L)

% nargout < 5
% A=[1 -1;-1 2;2 -3];
% L=[5;-4;10];
% P=eye(3);
% [x,sigma,L_est,v] = WLS(A,L,P)

% else
% A=[1 -1;-1 2;2 -3];
% L=[5;-4;10];
% P=eye(3);
% [x,sigma,L_est,v,N,Qx,J] = WLS(A,L,P)
%% Outputs:
% nargout == 1
% x=[6.333 1.000]

% nargout < 5
% x=[6.333 1.000]
% sigma = 0.5774
% L_est = [5.333 -4.333 9.667]
% v = [-0.333 0.333 0.333]

% else
% x=[6.333 1.000]
% sigma = 0.5774
% L_est = [5.333 -4.333 9.667]
% v = [-0.333 0.333 0.333]
% N = [6 -9;-9 14]
% Qx = [4.667 3.000;3.000 2.000]
% J = [0.667 0.333 0.333;0.333 0.667 -0.333;0.333 -0.333 0.667]