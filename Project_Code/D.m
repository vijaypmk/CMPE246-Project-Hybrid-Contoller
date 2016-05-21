%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file       Project: HyEQ Toolbox  @ Hybrid Dynamics and Control
% Lab, http://www.u.arizona.edu/~sricardo/index.php?n=Main.Software
%
% Filename: D_ex1_2.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Jump set
% Return 0 if outside of D, and 1 if inside D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function inside = D(x) 

x1 = x(1);
x2 = x(2);
x3 = x(3);
% r1 = 1;
% r2 = 1;
r = 1;
s = 0.25;


%parabola
% if x2 >= -x1^2 + r
%     inside = 1;
% elseif x2 >= x1^2 - r
%     inside = 1;
% else
%     inside = 0;
% end




if (x2 > -s) && ((x1 <= 1.5*x2 + r + s) && (x1 >= r - 1.5*x2 - s)) && x3 == 1
    inside = 1;
elseif (x2 < s) && ((x1 >= 1.5*x2 + r - s) && (x1 <= r - 1.5*x2 + s)) && x3 == 2
    inside = 1;
else
    inside = 0;
end




% if ((x2 >= 0) && (x1 <= x2 + r + 0.25) && (x1 >= r + 0.25 - x2) && (x3 == 1))
%     inside = 1;
% else if ((x2 <= 0) && (x1 >= x2 + r + 0.25) && (x1 <= r + 0.25 - x2) && (x3 == 2))
%     inside = 1;
% else 
%     inside = 0;
% end
% end
end