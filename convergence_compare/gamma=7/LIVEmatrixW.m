function M=LIVEmatrixW(t,x)
% P=[0.5*sin(t)+2  cos(t); cos(t)  0.5*cos(t)+2];% Hessian matrix, which is positive definite
% A=[sin(4*t) cos(4*t)]; %Linear constrained matrix
% O=zeros(1);
% M=[P A';A O];
% M=[cos(t)+2  sin(2*t) cos(3*t)
%    sin(2*t) cos(t)+2 sin(3*t)
%    cos(3*t) sin(3*t) 0];
M=[0.5*sin(t)+2  cos(t) sin(2*t)
    cos(t) 0.5*cos(t)+2 cos(2*t)
    sin(2*t) cos(2*t) 0];
%  M=[0.5*sin(t)+2  cos(t) 0; cos(t)  0.5*cos(t)+2 0; 0 0 0]; % ????