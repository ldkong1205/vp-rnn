function a=vectorb(t,x)
% y=[sin(3*t); cos(3*t)];
n=15;

for i=1:n
    a(i,1)=sin(3*t+(i-1)*pi/2);
end