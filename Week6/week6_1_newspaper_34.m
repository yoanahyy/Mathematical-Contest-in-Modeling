syms n p
Q=(80000-n*(10*p-15))*p
dQdp=diff(Q,p)
p=solve(dQdp,'p')
S=diff(p)*n/p
S5000=subs(S,'n',5000)