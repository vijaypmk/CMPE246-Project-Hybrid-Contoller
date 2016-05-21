%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file       Project: HyEQ Toolbox  @ Hybrid Dynamics and Control
% Lab, http://www.u.arizona.edu/~sricardo/index.php?n=Main.Software
%
% Filename: C_ex1_2.m
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Flow set
% Return 0 if outside of C, and 1 if inside C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [value] = C(x) 

x1 = x(1);
x2 = x(2);
x3 = x(3);
r = 1;
s = 0.25;



if (x2 < -s) || ((x1 >= x2 + r + s) || (x1 <= r - x2 - s)) && x3 == 1
    value = 1;
elseif (x2 > s) || ((x1 <= x2 + r - s) || (x1 >= r - x2 + s)) && x3 == 2
    value = 1;
else
    value = 0;
end








%old set
% if (x2 <= 0) || (x1 >= x2 + r )|| (x1 <= r - x2) && x3 == 1
% %     x3
%     value = 1;
% else if (x2 >= 0) || (x1 <= x2 + r) || (x1 >= r - x2) && x3 == 2
% %     x3
%     value = 1;
% else
%     value = 0;
% end
% end

end