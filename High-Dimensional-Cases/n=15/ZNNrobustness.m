function ZNNrobustness(gamma)

n=15;
gamma=1;
tspan=[0 15];
options=odeset('Mass',@matrixA,'MStateDep','none');
for iter=1:4
    x0=4*(rand(n,1)-0.5*ones(n,1)); % ZNN solution
    [t,x]=ode45(@ZNNrighthandside_imprecise,tspan,x0,options,gamma);
    for j=1:n
        %plot(t,x(:,j),'k'); hold on
    end
    
%     subplot(2,1,1);plot(t,x(:,1),'k'); hold on
%     subplot(2,1,2);plot(t,x(:,2),'k'); hold on subplot(n,1,j);
end
total=length(t);
for i=1:total
    A=matrixA(t(i),x);
    B=vectorb(t(i),x);
    xStar(:,i)=-inv(A)*B;
end
% subplot(2,1,1);
% plot(t,xStar(1,:),'r:'); hold on%
% subplot(2,1,2); 
% plot(t,xStar(2,:),'r:'); hold on% subplot(n,1,j);
figure,
for j=1:n
    plot(t,xStar(j,:),'r:'); hold on
    plot(t,x(:,j),'k'); hold on
end
