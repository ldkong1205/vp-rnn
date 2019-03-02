function y=AFsinh(E, xi)
if nargin==1, xi=3; 
end
% y=-exp(-xi*E)+1;
% i=find(E>=0); 
% y(i)=exp(xi*E(i))-1;
y=0.5*(exp(xi*E)-exp(-xi*E));
end