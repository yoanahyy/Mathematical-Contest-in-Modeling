function [g,ceq]=mycon(x)
g=[x(1)*x(2)+x(2)*x(3)+x(1)*x(3)-12];
ceq=[];
end
