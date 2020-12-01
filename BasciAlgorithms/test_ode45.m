%% Test for oed45
% Source: https://www.bilibili.com/video/BV1MK4y187yu?from=search&seid=7802785737907725162

clc;
clear;
y10 = 1;
y20 = 1;
plot(y10,y20,'p-');
options = odeset('RelTol',1E-4,'AbsTol',[1E-5,1E-5]);
[X,Y] = ode45('func',[0,5],[y10,y20],options);
subplot(1,2,1)
plot(X,Y(:,1),'r.');
axis([0 5 0 2000]);
%% 解析解1
subplot(1,2,2)
clear
syms Y t
ezplot(dsolve('D2Y - DY = Y','Y(0) = 1'))
axis([0 5 0 2000])

%% 解析解2
clear
syms Y
dsolve('D2Y - DY = Y','DY(0) = 1','Y(0) = 1')