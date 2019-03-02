function VP_rob_error
tspan=[0 10]; 
%If gamma is 1, then the end-time is 10s for creating figures
%If gamma is 10,then the end-time is 1s  for creating figures
%If gamma is 100,then the end-time is 0.1s for creating figures
options=odeset('Mass', @LIVEmatrixW, 'MStateDep', 'none');
gamma=10;

    y0=1*(0.5*rand(3,1)-ones(3,1));
    [t,y]=ode45(@VP_rob_righthandside, tspan, y0, options, gamma);
         total=length(t);
    for i=1:total
    ts=t(i);
    W=LIVEmatrixW(ts,y);
    u=LIVEvectoru(ts,y);
    err=W*(y(i,:))'-u;
    nerr(i)=norm(err,2);
    end
    plot(t,nerr(1:length(t)),'r--','linewidth',3);
    %legend('PT-VP-CDNN');
    xlabel('t(s)');
    hold on;
