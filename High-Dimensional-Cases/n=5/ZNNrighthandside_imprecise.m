function y=ZNNrighthandside_imprecise(t,x,gamma)
% using power-sigmoid function
if nargin==2, gamma=1; end

n=5;

syms u; DA=diff(matrixA(u));
u=t; diffA=eval(DA);
syms u; Db=diff(vectorb(u));
u=t; diffb=eval(Db);

eD=0.6; em=0.6;
deltaD=eD*errorD(t,n);
deltam=em*errorm(t,n);

diffA=diffA+deltaD; diffb=diffb+deltam;

y=-diffA*x-(gamma+t^gamma)*AFMpowersigmoid(matrixA(t,x)*x+vectorb(t,x))-diffb;
% y=-diffA*x-gamma*AFMlinear(matrixA(t,x)*x+vectorb(t,x))-diffb;

t