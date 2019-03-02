function y=AFpowersigmoid(E, p,zeta)
if nargin==1,p=3,zeta=2;
end
y=(1+exp(-zeta))/(1-exp(-zeta))*(1-exp(-zeta*E))./(1+exp(-zeta*E));
i=find(abs(E)>=1);
y(i)=E(i).^p;
