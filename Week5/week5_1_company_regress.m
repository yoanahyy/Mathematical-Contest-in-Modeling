%https://wenku.baidu.com/view/ce4b2d333c1ec5da50e270a3.html
y=[20.96 21.40 21.96 21.52 22.39 22.76 23.48 23.66 24.10 24.01 24.54 24.30 25.00 25.64 26.36 26.98 27.52 27.78 28.24 28.78]'; 
x=[127.3 130.0 132.7 129.4 135.0 137.1 141.2 142.8 145.5 145.3 148.3 146.4 150.2 153.1 157.3 160.7 164.2 165.6 168.7 171.7]'; 
x=[ones(20,1) x];  
[b,bint,r,rint,stats]=regress(y,x)