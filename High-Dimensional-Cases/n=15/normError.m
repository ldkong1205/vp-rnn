function normError1(x0,gamma)
tspan=[0 15]; 
% options=odeset('Mass',@matrixA,'MStateDep','none','RelTol',eps,'AbsTol',eps);
options=odeset('Mass',@matrixA,'MStateDep','none');
%'RelTol',1e-6,'AbsTol',1e-8);
[t,x]=ode45(@ZNNrighthandside_imprecise,tspan,x0,options,gamma);
 
total=length(t); x=x';
for i=1:total
    A=matrixA(t(i),x);
    B=vectorb(t(i),x);
    C=-inv(A)*B;
    nerr(i)=norm(x(:,i)-C,'fro');
end
plot(t,nerr); hold on