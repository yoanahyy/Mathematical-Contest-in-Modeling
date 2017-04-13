a=50;b=0.2;c=4;
C=[a+2*c;a+c;a]
H=diag(2*b*ones(1,3));
A=[-1,0,0;-1,-1,0];
B=[-50,-100];
Aeq=[1 1 1];
beq=[210];
VLB=[0;0;0];VUB=[100;100;100];
[x,z]=quadprog(H,C,A,B,Aeq,beq,VLB,VUB)