function y=FP_rob_righthandside(t,x,gamma)
if nargin==2, gamma=1;end
% diffW=[-sin(t) 2*cos(2*t) -3*sin(3*t)
%        2*cos(2*t) -sin(t) 3*cos(3*t)
%        -3*sin(3*t) 3*cos(3*t) 0]; 
diffW=[0.5*cos(t) -sin(t) 2*cos(2*t)
        -sin(t) -0.5*sin(t) -2*sin(2*t)
        2*cos(2*t) -2*sin(2*t) 0]; 
% diffu=[2*sin(2*t)
%       -2*cos(2*t) 
%       4*cos(4*t)];
diffu=[-cos(t)
       sin(t) 
       -3*sin(3*t)];
%Using power-sigmoid function
y=-(diffW+errormatrixD(t,x))*x-gamma*AFsigmoid(LIVEmatrixW(t,x)*x-LIVEvectoru(t,x))+diffu+errorvectorm(t,x);
% y=-diffG*x-gamma*AFMpowersigmoid(LIVEmatrixG(t,x)*x-LIVEvectorz(t,x))+diffz;
%For accuracy display
%  disp('Run time')
%  disp(t)
%---------------------
%The following code is for precious computation
t
err=LIVEmatrixW(t,x)*x-LIVEvectoru(t,x);
nerrZnn=norm(err)
