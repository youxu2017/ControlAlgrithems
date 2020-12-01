


% delta_t = linspace(0,5,25);
delta = 35;
tspan = [0 20];
y0 = [0; 0];
[t,y] = ode45(@odefun_KT_1stNon1,tspan,y0);
plot(t,y,'-o');
legend('dy','dy2');

function dydt = odefun_KT_1stNon1(t,y)
% initial parameters
K = 0.508553241;
T = 16.47521462;
% T2 = 0.507279669;
% T3 = 0.187840788;
alpha = 0.010559534;
delta_r = -0.119127234;
delta = 35;

% delta = interp1(delta_t,delta,t);
% fucntion 
% T*psi_dot2 + psi_dot +alpha * psi_dot^3 = K * (delta+delta_r);
dydt = [y(2);
    (K*(delta + delta_r) -y(2) - alpha*y(2)^3)/T];
end




