function FPerror
tspan=[0 6]; 
%If gamma is 1, then the end-time is 10s for creating figures
%If gamma is 10,then the end-time is 1s  for creating figures
%If gamma is 100,then the end-time is 0.1s for creating figures
options=odeset('Mass', @LIVEmatrixW, 'MStateDep', 'none');
gamma=1;
for iter=1:1
    y0=1*(0.5*rand(3,1)-ones(3,1));
    [t,y]=ode45(@FP_con_righthandside, tspan, y0, options, gamma);
         total=length(t);
    for i=1:total
    ts=t(i);
    W=LIVEmatrixW(ts,y);
    u=LIVEvectoru(ts,y);
    err=W*(y(i,:))'-u;
    nerr(i)=norm(err,2);
    end
    plot(t,nerr(1:length(t)),'b-','linewidth',1.5);
    xlabel('t(s)');
    %legend('FP-CDNN');
    hold on;
end