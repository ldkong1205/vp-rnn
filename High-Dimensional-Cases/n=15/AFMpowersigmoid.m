function y=AFMpowersigmoid(X,xi,p)
if nargin==1, xi=4; p=3; 
elseif nargin==2, p=3;
end
y=(1+exp(-xi))/(1-exp(-xi))*(1-exp(-xi*X))./(1+exp(-xi*X));
i=find(abs(X)>=1);
y(i)=X(i).^p;