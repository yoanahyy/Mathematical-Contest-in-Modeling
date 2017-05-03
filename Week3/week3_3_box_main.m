x0=[1;1;1];
A=[];b=[];
Aeq=[];beq=[];
vlb=[];vub=[];
[x,fval]=fmincon('fun',x0,A,b,Aeq,beq,vlb,vub,'mycon')
fmax=-fval


