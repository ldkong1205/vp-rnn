function y=AFsigmoid(E,zeta)
if nargin==1,zeta=2;
end
y=(1+exp(-zeta))/(1-exp(-zeta))*(1-exp(-zeta*E))./(1+exp(-zeta*E));
