%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file       Project: HyEQ Toolbox  @ Hybrid Dynamics and Control
% Lab, http://www.u.arizona.edu/~sricardo/index.php?n=Main.Software
%
% Filename: g_ex1_2.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project: Simulation of a hybrid system (bouncing ball)
% Description: Jump map
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function xplus = g(x)

% state
x1 = x(1);
x2 = x(2);
x3 = x(3);


x1plus = x1;
x2plus = x2;
if x3 == 1
    x3plus = 2;
elseif x3 == 2
    x3plus = 1;
end

xplus = [x1plus; x2plus; x3plus];
end