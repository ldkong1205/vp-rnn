function ZNNnormError(gamma)
if nargin<1, gamma=1; end
n=5;
for i=1:1
    x0=4*(rand(n,1)-0.5*ones(n,1));
    normError(x0,gamma);
end
xlabel('time t (s)')