function ZNNnormError(gamma)
if nargin<1, gamma=1; end
n=15;
for i=1:4
    x0=4*(rand(n,1)-0.5*ones(n,1));
    normError(x0,gamma);
end
xlabel('time t (s)')