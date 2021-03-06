%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file       Project: HyEQ Toolbox  @ Hybrid Dynamics and Control
% Lab, http://www.u.arizona.edu/~sricardo/index.php?n=Main.Software
%
% Filename: f_ex1_2.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project: Simulation of a hybrid system (bouncing ball)
% Description: Flow map
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function xdot = f(x)
    
% state
x1 = x(1);
x2 = x(2);
x3 = x(3);
r1 = 1;
r2 = 0;
% u1 = 0;
% u2 = 0;

if x2 == 0
   x2 = x2 + 0.3;
end

xt1 = 3;
xt2 = 0;

d = sqrt((x1 - r1)^2 + (x2 - r2)^2) - 1/(20*sqrt(2));

if d > 1
%     z = 0
    B = 0;
    u1 = x1 - xt1;
    u2 = x2 - xt2;
else
%     z = 1;
    B = ((d  - 1)^2)*log(1/d);
%     B = ((z  - 1)^2)*log(1/z);
%     if x2 == 0
%           x2 = x2 + 0.01;
%         u1 = x1 - xt1 + (2*r1 - 2*x1)/((r1 - x1)^2 + (r2 - x2)^2)^2;
%         u2 = x2 - xt2 + (2*r2 - 2*x2)/((r1 - x1)^2 + (r2 - x2)^2)^2;
%           u1 = x1 - xt1 - ((2*r1 - 2*x1)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1)^2)/(2*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2))*((r1 - x1)^2 + (r2 - x2)^2)^(1/2)) + (log(-1/(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2)))*(2*r1 - 2*x1)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1))/((r1 - x1)^2 + (r2 - x2)^2)^(1/2);
%           u2 = x2 - xt2 - ((2*r2 - 2*x2)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1)^2)/(2*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2))*((r1 - x1)^2 + (r2 - x2)^2)^(1/2)) + (log(-1/(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2)))*(2*r2 - 2*x2)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1))/((r1 - x1)^2 + (r2 - x2)^2)^(1/2);
%     else
%         u1 = x1 - xt1 - ((2*r1 - 2*x1)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1)^2)/(2*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2))*((r1 - x1)^2 + (r2 - x2)^2)^(1/2)) + (log(-1/(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2)))*(2*r1 - 2*x1)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1))/((r1 - x1)^2 + (r2 - x2)^2)^(1/2);
%         u2 = x2 - xt2 - ((2*r2 - 2*x2)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1)^2)/(2*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2))*((r1 - x1)^2 + (r2 - x2)^2)^(1/2)) + (log(-1/(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2)))*(2*r2 - 2*x2)*(2^(1/2)/40 - ((r1 - x1)^2 + (r2 - x2)^2)^(1/2) + 1))/((r1 - x1)^2 + (r2 - x2)^2)^(1/2);
        
    u1 = x1 - xt1 + ((2*r1 - 2*x1)*(((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2) - 1)^2)/(2*((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)) - (log(1/((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2))*(2*r1 - 2*x1)*(((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2) - 1))/((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2);
    u2 = x2 - xt2 + ((2*r2 - 2*x2)*(((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2) - 1)^2)/(2*((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)) - (log(1/((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2))*(2*r2 - 2*x2)*(((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2) - 1))/((r1 - x1)^2 + (r2 - x2)^2 - 2^(1/2)/40)^(1/2);
        
%     end
end

% B = ((z  - 1)^2)*log(1/z);

% V = 0.5*(x1 - xt1)^2 + 0.5*(x2 - xt2)^2 + B

% u1 = x1 - xt1 + ((2*r - 2*x1)*(((r - x1)^2 + x2^2)^(1/2) - 1))/(2*((r - x1)^2 + x2^2)) - (log(1/((r - x1)^2 + x2^2)^(1/2))*(2*r - 2*x1))/(2*((r - x1)^2 + x2^2)^(1/2));
% u2 = x2 - xt2 - (x2*(((r - x1)^2 + x2^2)^(1/2) - 1))/((r - x1)^2 + x2^2) + (x2*log(1/((r - x1)^2 + x2^2)^(1/2)))/((r - x1)^2 + x2^2)^(1/2);


% u1 = (x1 - xt1) + B;
% u2 = (x2 - xt2) + B;

% differential equations
xdot = [-u1; -u2; 0];
end