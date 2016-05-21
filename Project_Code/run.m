%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file       Project: HyEQ Toolbox  @ Hybrid Dynamics and Control
% Lab, http://www.u.arizona.edu/~sricardo/index.php?n=Main.Software
%
% Filename: run_ex1_2.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initial conditions
x1_0 = 0;    %min above + or - 0.25 of obstacle
x2_0 = 0.1;       %0.04312072 (min value)
x3_0 = 1;
% x3_0 = pi/2;
% x4_0 = 0;
% if x2_0 == 0
%     x2_0 = 0.1;
% end
x0 = [x1_0;x2_0;x3_0];

% y1_0 = 1;
% y2_0 = 0;
%y0 = [y1_0;y2_0];

% simulation horizon
TSPAN=[0 20];
JSPAN = [0 20];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flowsd
rule = 1;

options = odeset('RelTol',1e-6,'MaxStep',.1);

% simulate
[t,j,x] = HyEQsolver( @f,@g,@C,@D,...
    x0,TSPAN,JSPAN,rule,options);

% m = 1;
% g = 10;
% PE = m*g*x(:, 1);
% KE = 0.5*m*(x(:, 2)).^2;
% TE = PE + KE;

% plot solution
figure(1) % position
clf
subplot(2,1,1), plotHarc(t,j,x(:,1));
grid on
ylabel('x position')
title('Position plot')
subplot(2,1,2), plotHarc(t,j,x(:,2));
grid on
ylabel('y position')
title('Position plot')



% plot solution
figure(2) % position
clf
% subplot(2,1,1), plotHarc(t,j,x(:,3));
grid on
% ylabel('x_3 position')
% title('Position plot')
% subplot(2,1,2), plotHarc(t,j,x(:,4));
plot(x(:,1), x(:, 2));
hold on
grid on
% ylabel('x_4 velocity')
title('X,Y plot')

% % plot phase plane
figure(3) % position
clf
plotHarcColor(x(:,1),j,x(:,2),t);
xlabel('x_1')
ylabel('x_2')
grid on
title('Phase Plane Plot')

% plot hybrid arc
plotHybridArc(t,j,x)
xlabel('j')
ylabel('t')
zlabel('x1')
title('Hybrid System Plot')



% % %plot TE
% % figure;
% % plot(t, TE);
% % xlabel('t')
% % ylabel('TE')
% % title('Total Energy Plot')
% % 
% % %plot TE
% % figure;
% % plot(t, PE);
% % xlabel('t')
% % ylabel('PE')
% % title('Potential Energy Plot')
% % 
% % %plot TE
% % figure;
% % plot(t, KE);
% % xlabel('t')
% % ylabel('KE')
% % title('Kinetic Energy Plot')
